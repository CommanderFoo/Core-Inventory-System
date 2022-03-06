---@type API_Inventory
local API_Inventory = require(script:GetCustomProperty("API_Inventory"))

local function on_player_left(player)
	API_Inventory.save(player).cleanup()
end

Game.playerLeftEvent:Connect(on_player_left)