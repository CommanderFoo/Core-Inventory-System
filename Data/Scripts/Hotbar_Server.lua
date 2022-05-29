local ROOT = script:GetCustomProperty("Root"):WaitForObject()

---@type Inventory
local Inventory = require(script:GetCustomProperty("Inventory"))

local SLOT_COUNT = ROOT:GetCustomProperty("SlotCount")

local function on_player_joined(player)
	Inventory.create({

		player = player,
		slot_count = math.min(10, SLOT_COUNT),
		clean_up = ROOT:GetCustomProperty("CleanUp"),
		storage_key = ROOT:GetCustomProperty("StorageKey"),
		storage_slot_key = ROOT:GetCustomProperty("StorageSlotKey"),
		priority = ROOT:GetCustomProperty("PickupPriority"),
		name = ROOT:GetCustomProperty("Name"),
		type = Inventory.Type.HOTBAR_INVENTORY

	}).load()
end

Game.playerJoinedEvent:Connect(on_player_joined)