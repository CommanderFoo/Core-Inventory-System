local ROOT = script:GetCustomProperty("Root"):WaitForObject()

local API_Inventory = require(ROOT:GetCustomProperty("API_Inventory")) ---@type API_Inventory

local SLOT_COUNT = ROOT:GetCustomProperty("SlotCount")
local CLEAN_UP = ROOT:GetCustomProperty("CleanUp")
local STORAGE_KEY = ROOT:GetCustomProperty("StorageKey")
local NAME = ROOT:GetCustomProperty("Name")

local function on_player_joined(player)
	API_Inventory.create_player_inventory(player, SLOT_COUNT, CLEAN_UP, STORAGE_KEY, NAME)
	API_Inventory.load_player_inventory(player)
end

local function on_player_left(player)
	API_Inventory.save_player_inventory(player)
	API_Inventory.remove_player_inventory(player)
end

Game.playerJoinedEvent:Connect(on_player_joined)
Game.playerLeftEvent:Connect(on_player_left)