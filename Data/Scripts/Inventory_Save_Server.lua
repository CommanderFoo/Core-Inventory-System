---@type Inventory
local Inventory = require(script:GetCustomProperty("Inventory"))

local function on_player_left(player)
	Inventory.save(player).cleanup()
end

Game.playerLeftEvent:Connect(on_player_left)