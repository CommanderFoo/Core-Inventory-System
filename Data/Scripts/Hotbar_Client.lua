local ROOT = script:GetCustomProperty("Root"):WaitForObject()

local API_Inventory = require(ROOT:GetCustomProperty("API_Inventory"))

local SLOTS = ROOT:GetCustomProperty("Slots"):WaitForObject():GetChildren()
local SLOT_FRAME_NORMAL = ROOT:GetCustomProperty("SlotFrameNormal")
local NAME = ROOT:GetCustomProperty("Name")
local SLOT_FRAME_ACTIVE = ROOT:GetCustomProperty("SlotFrameActive")

local inventory = API_Inventory.get_inventory(NAME)

local slot_frames = {}

-- @TODO: Save selected slot to storage?
local active_slot_index = -1

local function select_slot(slot_index)
	if(active_slot_index ~= slot_index) then
		if(active_slot_index > -1) then
			slot_frames["slot_" .. tostring(active_slot_index)]:SetColor(SLOT_FRAME_NORMAL)
		end

		slot_frames["slot_" .. tostring(slot_index)]:SetColor(SLOT_FRAME_ACTIVE)

		API_Inventory.enable_hover(slot_frames["slot_" .. tostring(active_slot_index)])

		active_slot_index = slot_index

		API_Inventory.disable_hover(slot_frames["slot_" .. tostring(slot_index)])
	end
end

local function on_action_pressed(player, action, value)
	if(string.find(action, "Hotbar Slot ")) then
		local match = string.match(action, "Hotbar Slot (%d)")

		select_slot(tonumber(match))
	elseif(action == "Hotbar Scroll") then
		local slot_index = active_slot_index

		if(value < 0) then
			if(slot_index == 0) then
				slot_index = 1
			elseif(slot_index == (#SLOTS - 1)) then
				slot_index = 0
			else
				slot_index = slot_index + 1
			end
        elseif(value > 0) then
            if(slot_index == 1) then
				slot_index = 0
			elseif(slot_index == 0) then
				slot_index = #SLOTS - 1
			else
				slot_index = slot_index - 1
			end
        end

		select_slot(slot_index)
	end
end

local function set_action_labels()
	for i, s in ipairs(SLOTS) do
		local label = s:FindDescendantByName("Label")
		local action = Input.GetActionInputLabel("Hotbar Slot " .. label.text)

		slot_frames["slot_" .. tostring(i == 10 and 0 or i)] = s:FindChildByName("Frame")

		if(action ~= nil) then
			label.text = action
		end
	end
end

Input.actionPressedEvent:Connect(on_action_pressed)

set_action_labels()
select_slot(1)