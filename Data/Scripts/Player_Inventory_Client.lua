local API_Inventory = require(script:GetCustomProperty("API_Inventory"))

local SLOTS = script:GetCustomProperty("Slots"):WaitForObject()
local SLOT_FRAME_NORMAL = script:GetCustomProperty("SlotFrameNormal")
local SLOT_FRAME_HOVER = script:GetCustomProperty("SlotFrameHover")
local SLOT_BACKGROUND_NORMAL = script:GetCustomProperty("SlotBackgroundNormal")
local SLOT_BACKGROUND_HOVER = script:GetCustomProperty("SlotBackgroundHover")

local local_player = Game.GetLocalPlayer()
local inventory = nil

API_Inventory.enable_cursor()

local function inventory_changed(inv, slot_index)
	local item = inv:GetItem(slot_index)
	local child_icon = SLOTS:GetChildren()[slot_index]:FindChildByName("Icon")
	local child_count = child_icon:FindChildByName("Count")

	if(item ~= nil) then
		local icon = item:GetCustomProperty("Icon")

		child_icon:SetImage(icon)
		child_icon.visibility = Visibility.FORCE_ON
		child_count.text = tostring(item.count)
	else
		child_icon.visibility = Visibility.FORCE_OFF
		child_count.text = ""
	end
end

local function connect_slot_events()
	for index, slot in ipairs(SLOTS:GetChildren()) do
		local button = slot:FindChildByName("Button")
		local icon = slot:FindChildByName("Icon")

		if(button ~= nil and icon ~= nil and button.isInteractable) then
			local args = {

				inventory = inventory,
				slot = slot,
				slot_index = index,
				slot_frame_hover = SLOT_FRAME_HOVER,
				slot_frame_unhover = SLOT_FRAME_NORMAL,
				slot_background_hover = SLOT_BACKGROUND_HOVER,
				slot_background_unhover = SLOT_BACKGROUND_NORMAL

			}

			button.pressedEvent:Connect(API_Inventory.on_slot_pressed_event, args)
			button.hoveredEvent:Connect(API_Inventory.on_hovered_event, args)
			button.unhoveredEvent:Connect(API_Inventory.on_unhovered_event, args)
		end
	end
end

inventory = API_Inventory.get_inventory("Player Inventory")

if(inventory ~= nil) then
	for slot_index, item in pairs(inventory:GetItems()) do
		inventory_changed(inventory, slot_index)
	end

	inventory.changedEvent:Connect(inventory_changed)

	connect_slot_events()
end