local ROOT = script:GetCustomProperty("Root"):WaitForObject()

---@type Inventory_Events
local Inventory_Events = require(script:GetCustomProperty("Inventory_Events"))

---@type Inventory
local Inventory = require(script:GetCustomProperty("Inventory"))

---@type UI_Tab
local UI_Tab = require(script:GetCustomProperty("UI_Tab"))

---@type UIButton
local INVENTORY_TAB_BUTTON = script:GetCustomProperty("InventoryTabButton"):WaitForObject()

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

UI_Tab.add({
	
	default = true,
	key = "Inventory",
	button = INVENTORY_TAB_BUTTON,
	panel = INVENTORY_UI,
	
	inactive = function()
		Events.Broadcast(Inventory_Events.CLEAR_ACTIVE)
		Events.Broadcast(Inventory_Events.HOTBAR_HIDE)
	end,
	
	active = function()
		Events.Broadcast(Inventory_Events.HOTBAR_SHOW)
	end

})

local inventory = Inventory.get_inventory(NAME, Inventory.Type.PLAYER_INVENTORY)

if(inventory ~= nil) then
	Inventory.init({

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
		type = Inventory.Type.PLAYER_INVENTORY,
		start_visible = START_VISIBLE,
		sortable = ROOT:GetCustomProperty("Sortable"),

	})
end