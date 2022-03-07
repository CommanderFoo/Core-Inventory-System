local ROOT = script:GetCustomProperty("Root"):WaitForObject()

---@type API_Inventory
local API_Inventory = require(ROOT:GetCustomProperty("API_Inventory"))

local SLOT_COUNT = ROOT:GetCustomProperty("SlotCount")

local function on_player_joined(player)
	API_Inventory.create({

		player = player,
		slot_count = math.min(10, SLOT_COUNT),
		clean_up = ROOT:GetCustomProperty("CleanUp"),
		storage_key = ROOT:GetCustomProperty("StorageKey"),
		storage_slot_key = ROOT:GetCustomProperty("StorageSlotKey"),
		name = ROOT:GetCustomProperty("Name"),
		type = API_Inventory.Type.HOTBAR_INVENTORY

	}).load()
end

Game.playerJoinedEvent:Connect(on_player_joined)