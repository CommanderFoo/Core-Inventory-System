---@type Inventory
local Inventory = require(script:GetCustomProperty("Inventory"))

---@type Inventory_Events
local Inventory_Events = require(script:GetCustomProperty("Inventory_Events"))

_G["Inventory.Drops"] = {}

---@class Inventory_Drop
local Inventory_Drop = {}

function Inventory_Drop.set_container(container)
	Inventory_Drop.container = container
end

function Inventory_Drop.get_drop(obj)
	return _G["Inventory.Drops"][obj]
end

function Inventory_Drop.drop(item, count, position)
	local spawned_item = Inventory_Drop.container:SpawnSharedAsset(item.pickup_template, {

		position = position

	})

	spawned_item.destroyEvent:Connect(function()
		_G["Inventory.Drops"][spawned_item] = nil
	end)

	_G["Inventory.Drops"][spawned_item] = {

		ts = DateTime.CurrentTime().millisecondsSinceEpoch,
		count = count,
		asset = item.asset

	}
end

function Inventory_Drop.pickup_drop(obj, player)
	local entry = _G["Inventory.Drops"][obj]

	if(entry ~= nil) then
		--player:GetInventories()[1]:AddItem(entry.asset, { count = entry.count })



		Task.Spawn(function()	
			Inventory_Drop.container:DestroySharedAsset(obj)
		end, .25)
	end
end

function Inventory_Drop.clear_old_drops()
	local ts = DateTime.CurrentTime().millisecondsSinceEpoch
	local drops = _G["Inventory.Drops"] or {}

	for obj, entry in pairs(drops) do
		if((entry.ts + 15000) < ts) then
			local dropped_item = obj

			Inventory_Drop.container:DestroySharedAsset(dropped_item)
			_G["Inventory.Drops"][obj] = nil
		end
	end
end

if(Environment.IsServer()) then
	local task = Task.Spawn(Inventory_Drop.clear_old_drops, 15)

	task.repeatCount = -1
	task.repeatInterval = 15

	Events.Connect(Inventory_Events.PICKUP, Inventory_Drop.pickup_drop)
	Events.Connect(Inventory_Events.DROP, Inventory_Drop.drop)
end

return Inventory_Drop