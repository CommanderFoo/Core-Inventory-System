local ROOT = script:GetCustomProperty("Root"):WaitForObject()

---@type Inventory
local Inventory = require(script:GetCustomProperty("Inventory"))

local function on_player_joined(player)
	Inventory.create({

		player = player,
		slot_count = ROOT:GetCustomProperty("SlotCount"),
		clean_up = ROOT:GetCustomProperty("CleanUp"),
		storage_key = ROOT:GetCustomProperty("StorageKey"),
		priority = ROOT:GetCustomProperty("PickupPriority"),
		name = ROOT:GetCustomProperty("Name"),
		type = Inventory.Type.PLAYER_INVENTORY

	}).load()
end

Game.playerJoinedEvent:Connect(on_player_joined)