local ROOT = script:GetCustomProperty("Root"):WaitForObject()

local API_Inventory = require(ROOT:GetCustomProperty("API_Inventory"))

local INVENTORY_UI = ROOT:GetCustomProperty("InventoryUI"):WaitForObject()
local SLOTS = ROOT:GetCustomProperty("Slots"):WaitForObject()
local SLOT_COUNT = ROOT:GetCustomProperty("SlotCount")
local SLOTS_PER_ROW = ROOT:GetCustomProperty("SlotsPerRow")
local MAX_HEIGHT = ROOT:GetCustomProperty("MaxHeight")
local NAME = ROOT:GetCustomProperty("Name")
local SLOT_FRAME_NORMAL = ROOT:GetCustomProperty("SlotFrameNormal")
local SLOT_FRAME_HOVER = ROOT:GetCustomProperty("SlotFrameHover")
local SLOT_BACKGROUND_NORMAL = ROOT:GetCustomProperty("SlotBackgroundNormal")
local SLOT_BACKGROUND_HOVER = ROOT:GetCustomProperty("SlotBackgroundHover")
local START_VISIBLE = ROOT:GetCustomProperty("StartVisible")

local inventory = nil

API_Inventory.enable_cursor()

inventory = API_Inventory.get_inventory(NAME, API_Inventory.Type.PLAYER_INVENTORY)

if(inventory ~= nil) then
	API_Inventory.init({

		inventory = inventory,
		inventory_ui = INVENTORY_UI,
		slots = SLOTS,
		slot_count = SLOT_COUNT,
		slots_per_row = SLOTS_PER_ROW,
		max_height = MAX_HEIGHT,
		slot_frame_normal = SLOT_FRAME_NORMAL,
		slot_frame_hover = SLOT_FRAME_HOVER,
		slot_background_normal = SLOT_BACKGROUND_NORMAL,
		slot_background_hover = SLOT_BACKGROUND_HOVER,
		type = API_Inventory.Type.PLAYER_INVENTORY,
		start_visible = START_VISIBLE,

	})
end