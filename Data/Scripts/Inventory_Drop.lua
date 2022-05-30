local INVENTORY_ASSETS = require(script:GetCustomProperty("InventoryAssets"))

---@type Inventory_Pickup
local Inventory_Pickup = require(script:GetCustomProperty("Inventory_Pickup"))

---@type Inventory_Events
local Inventory_Events = require(script:GetCustomProperty("Inventory_Events"))

---@class Inventory_Drop
local Inventory_Drop = {

	drops = {}

}

function Inventory_Drop.set_container(container)
	Inventory_Drop.container = container
end

function Inventory_Drop.drop(inventory, slot_index, item, count, position)
	local spawned_item = Inventory_Drop.container:SpawnSharedAsset(item.pickup_template, {

		position = position

	})

	spawned_item.destroyEvent:Connect(function()
		Inventory_Drop.drops[spawned_item] = nil
	end)

	Inventory_Drop.drops[spawned_item] = {
		
		ts = DateTime.CurrentTime().millisecondsSinceEpoch,
		count = count,
		asset = item.asset

	}

	Inventory_Pickup.register(spawned_item)
end

---@TODO: Get priority inventory / named inventories
function Inventory_Drop.pickup_drop(obj, other)
	Task.Spawn(function()
		local entry = Inventory_Drop.drops[obj]

		if(entry ~= nil) then
			other:GetInventories()[1]:AddItem(entry.asset, { count = entry.count }) --@TODO: change this
			Inventory_Drop.container:DestroySharedAsset(obj)
		end
	
	end, .25)
end

function Inventory_Drop.clear_old_drops()
	local ts = DateTime.CurrentTime().millisecondsSinceEpoch

	for obj, entry in pairs(Inventory_Drop.drops) do
		if((entry.ts + 10000) < ts) then
			local dropped_item = obj

			Inventory_Drop.container:DestroySharedAsset(dropped_item)
			Inventory_Drop.drops[obj] = nil
		end
	end
end

local task = Task.Spawn(Inventory_Drop.clear_old_drops, 10)

task.repeatCount = -1
task.repeatInterval = 10

Events.Connect(Inventory_Events.PICKUP, Inventory_Drop.pickup_drop)
Events.Connect(Inventory_Events.DROP, Inventory_Drop.drop)

return Inventory_Drop