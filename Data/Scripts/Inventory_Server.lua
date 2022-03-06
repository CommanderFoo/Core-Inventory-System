local ROOT = script:GetCustomProperty("Root"):WaitForObject()

---@type API_Inventory
local API_Inventory = require(ROOT:GetCustomProperty("API_Inventory"))

local function on_player_joined(player)
	API_Inventory.create({

		player = player,
		slot_count = ROOT:GetCustomProperty("SlotCount"),
		clean_up = ROOT:GetCustomProperty("CleanUp"),
		storage_key = ROOT:GetCustomProperty("StorageKey"),
		name = ROOT:GetCustomProperty("Name"),
		type = API_Inventory.Type.PLAYER_INVENTORY

	}).load()
end

Game.playerJoinedEvent:Connect(on_player_joined)