local ROOT = script:GetCustomProperty("Root"):WaitForObject()

---@type API_Inventory
local API_Inventory = require(ROOT:GetCustomProperty("API_Inventory"))

local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local INVENTORY_UI = script:GetCustomProperty("InventoryUI"):WaitForObject()

local SLOTS = ROOT:GetCustomProperty("Slots"):WaitForObject()
local SLOT_FRAME_NORMAL = ROOT:GetCustomProperty("SlotFrameNormal")
local SLOT_FRAME_HOVER = ROOT:GetCustomProperty("SlotFrameHover")
local SLOT_BACKGROUND_NORMAL = ROOT:GetCustomProperty("SlotBackgroundNormal")
local SLOT_BACKGROUND_HOVER = ROOT:GetCustomProperty("SlotBackgroundHover")
local NAME = ROOT:GetCustomProperty("Name")
local INVENTORY_CONTAINER = script:GetCustomProperty("InventoryContainer"):WaitForObject()

local localPlayer = Game.GetLocalPlayer()
local inTrigger = false

local inventory = nil

local function CloseUI()
	INVENTORY_UI.visibility = Visibility.FORCE_OFF

	if inTrigger then
		TRIGGER.isInteractable = true
	else
		TRIGGER.isInteractable = false
	end
end

local function OnInteracted(trigger, obj)
	if inTrigger and Object.IsValid(obj) and obj:IsA("Player") and obj == localPlayer then
		INVENTORY_UI.visibility = Visibility.FORCE_ON
		TRIGGER.isInteractable = false
		API_Inventory.enable_cursor()
	end
end

local function OnExitTrigger(trigger, obj)
	if Object.IsValid(obj) and obj:IsA("Player") and obj == localPlayer then
		inTrigger = false
		CloseUI()
	end
end

local function OnEnterTrigger(trigger, obj)
	if Object.IsValid(obj) and obj:IsA("Player") and obj == localPlayer then
		TRIGGER.isInteractable = true
		inTrigger = true
	end
end

API_Inventory.enable_cursor()

inventory = API_Inventory.get_inventory(NAME, API_Inventory.Type.CHEST_INVENTORY, INVENTORY_CONTAINER)

if(inventory ~= nil) then
	API_Inventory.init({

		inventory = inventory,
		inventory_ui = INVENTORY_UI,
		slots = SLOTS,
		slot_frame_normal = SLOT_FRAME_NORMAL,
		slot_frame_hover = SLOT_FRAME_HOVER,
		slot_background_normal = SLOT_BACKGROUND_NORMAL,
		slot_background_hover = SLOT_BACKGROUND_HOVER,
		type = API_Inventory.Type.CHEST_INVENTORY

	})
end

TRIGGER.interactedEvent:Connect(OnInteracted)
TRIGGER.endOverlapEvent:Connect(OnExitTrigger)
TRIGGER.beginOverlapEvent:Connect(OnEnterTrigger)