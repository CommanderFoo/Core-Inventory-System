local ROOT = script:GetCustomProperty("Root"):WaitForObject()

local API_Inventory = require(ROOT:GetCustomProperty("API_Inventory"))

local INVENTORY_UI = ROOT:GetCustomProperty("InventoryUI"):WaitForObject()
local SLOTS = ROOT:GetCustomProperty("Slots"):WaitForObject()
local SLOT_COUNT = ROOT:GetCustomProperty("SlotCount")
local NAME = ROOT:GetCustomProperty("Name")
local STORAGE_SLOT_KEY = ROOT:GetCustomProperty("StorageSlotKey")
local START_VISIBLE = ROOT:GetCustomProperty("StartVisible")

local SLOT_FRAME_NORMAL = ROOT:GetCustomProperty("SlotFrameNormal")
local SLOT_FRAME_ACTIVE = ROOT:GetCustomProperty("SlotFrameActive")
local SLOT_FRAME_HOVER = ROOT:GetCustomProperty("SlotFrameHover")
local SLOT_BACKGROUND_NORMAL = ROOT:GetCustomProperty("SlotBackgroundNormal")
local SLOT_BACKGROUND_HOVER = ROOT:GetCustomProperty("SlotBackgroundHover")

local slot_frames = {}
local local_player = Game.GetLocalPlayer()

local active_slot_index = -1
local last_active_slot_index = -1
local update_task = nil
local inventory = nil

local function select_slot(slot_index)
	if(active_slot_index ~= slot_index and slot_index ~= -1) then
		if(active_slot_index > -1 and slot_frames["slot_" .. tostring(active_slot_index)] ~= nil) then
			slot_frames["slot_" .. tostring(active_slot_index)]:SetColor(SLOT_FRAME_NORMAL)
		end

		if(slot_frames["slot_" .. tostring(slot_index)] ~= nil) then
			slot_frames["slot_" .. tostring(slot_index)]:SetColor(SLOT_FRAME_ACTIVE)
			API_Inventory.enable_frame_hover(slot_frames["slot_" .. tostring(active_slot_index)])
			active_slot_index = slot_index
			API_Inventory.disable_frame_hover(slot_frames["slot_" .. tostring(slot_index)])
		end
	end
end

local function on_action_pressed(player, action, value)
	if(string.find(action, "Hotbar Slot ")) then
		local match = tonumber(string.match(action, "Hotbar Slot (%d)"))
		
		if(match <= SLOT_COUNT and SLOT_COUNT > 1) then
			select_slot((match == SLOT_COUNT and 0 or match))
		end
	elseif(action == "Hotbar Scroll" and SLOT_COUNT > 1) then
		local slot_index = active_slot_index

		if(value < 0) then
			if(slot_index == 0) then
				slot_index = 1
			elseif(slot_index == (SLOT_COUNT - 1)) then
				slot_index = 0
			else
				slot_index = slot_index + 1
			end
        elseif(value > 0) then
            if(slot_index == 1) then
				slot_index = 0
			elseif(slot_index == 0) then
				slot_index = SLOT_COUNT - 1
			else
				slot_index = slot_index - 1
			end
        end

		select_slot(slot_index)
	end
end

local function set_action_labels()
	for i, s in ipairs(SLOTS:GetChildren()) do
		local label = s:FindDescendantByName("Label")
		local value = tostring((i == 10 or (i == SLOT_COUNT and SLOT_COUNT > 1)) and 0 or i)
		local action = Input.GetActionInputLabel(NAME .. " Slot " .. value)

		slot_frames["slot_" .. value] = s:FindChildByName("Frame")

		if(action ~= nil) then
			label.text = i == 10 and "0" or tostring(i)
		end
	end
end

local function on_private_networked_data_changed(player, key)
	if(key == "inventory.hotbar." .. STORAGE_SLOT_KEY) then
		local value = local_player:GetPrivateNetworkedData(key)

		select_slot(value == 1 and 1 or -1)
	end
end

local function save_active_slot()
	if(active_slot_index ~= last_active_slot_index and active_slot_index ~= -1) then
		Events.BroadcastToServer("inventory.hotbar.save_slot", STORAGE_SLOT_KEY, active_slot_index)
		last_active_slot_index = active_slot_index
	end
end

inventory = API_Inventory.get_inventory(NAME, API_Inventory.Type.HOTBAR_INVENTORY)

if(inventory ~= nil) then
	API_Inventory.init({

		inventory = inventory,
		inventory_ui = INVENTORY_UI,
		slots = SLOTS,
		slot_count = math.min(10, SLOT_COUNT),
		slot_frame_normal = SLOT_FRAME_NORMAL,
		slot_frame_hover = SLOT_FRAME_HOVER,
		slot_background_normal = SLOT_BACKGROUND_NORMAL,
		slot_background_hover = SLOT_BACKGROUND_HOVER,
		start_visible = START_VISIBLE,
		type = API_Inventory.Type.HOTBAR_INVENTORY

	})
end

update_task = Task.Spawn(save_active_slot)

update_task.repeatCount = -1
update_task.repeatInterval = 2

Input.actionPressedEvent:Connect(on_action_pressed)

set_action_labels()
select_slot(1)

local_player.privateNetworkedDataChangedEvent:Connect(on_private_networked_data_changed)
on_private_networked_data_changed(local_player, "inventory.hotbar." .. STORAGE_SLOT_KEY)