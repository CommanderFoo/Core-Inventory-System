---@type Inventory
local Inventory = require(script:GetCustomProperty("Inventory"))

local ROOT = script:GetCustomProperty("Root"):WaitForObject()

local IS_SHARED = ROOT:GetCustomProperty("IsShared")

---@type Trigger
local PICKUP_TRIGGER = script:GetCustomProperty("PickupTrigger"):WaitForObject()

local Inventory_Events = require(script:GetCustomProperty("Inventory_Events"))

local players = {} 
local has_been_picked_up = false

local function get_total_players_picked_up()
	local count = 0

	for player, p in pairs(players) do
		count = count + 1
	end

	return count
end

PICKUP_TRIGGER.beginOverlapEvent:Connect(function(trigger, other)
	local entry = _G["Inventory.Drops"][ROOT]

	if(other:IsA("Player") and not players[other] and Inventory.can_pickup_item(other, entry.asset)) then
		if(IS_SHARED) then
			players[other] = other

			Events.Broadcast(Inventory_Events.PICKUP, ROOT, other, true)

			if(get_total_players_picked_up() == #Game.GetPlayers()) then
				Task.Wait(.2)
				ROOT:Destroy()
			end
		elseif(not has_been_picked_up) then
			has_been_picked_up = true
			Events.Broadcast(Inventory_Events.PICKUP, ROOT, other, false)

			Task.Wait(.2)
			ROOT:Destroy()
		end
	end
end)

if(IS_SHARED) then
	Game.playerLeftEvent:Connect(function(player)
		if(players[player]) then
			players[player] = nil
		end

		if((#Game.GetPlayers() - 1) <= 0 and Object.IsValid(script) and Object.IsValid(ROOT)) then
			ROOT:Destroy()
		end
	end)
end