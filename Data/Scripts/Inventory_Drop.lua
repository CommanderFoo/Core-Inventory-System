---@type Inventory_Events
local Inventory_Events = require(script:GetCustomProperty("Inventory_Events"))

---@class Inventory_Drop
local Inventory_Drop = {

	drops = {}

}

function Inventory_Drop.set_container(container)
	Inventory_Drop.container = container
end

function Inventory_Drop.set_inventory(inventory)
	Inventory_Drop.inventory = inventory
end

function Inventory_Drop.drop(inventory, item, count, position)
	-- local ts = DateTime.CurrentTime().secondsSinceEpoch

	-- local spawned_item = World.SpawnAsset(item.pickup_template, {

	-- 	parent = Inventory_Drop.container,
	-- 	position = position,
	-- 	networkContext = NetworkContextType.LOCAL_CONTEXT

	-- })


	-- spawned_item:SetCustomProperty("timestamp", ts)

	-- Inventory_Drop.inventory:AddItem(item.asset, {

	-- 	count = count,
	-- 	customProperties = {

	-- 		timestamp = ts

	-- 	}

	-- })

	local spawned_item = World.SpawnAsset(item.pickup_template, {

		parent = Inventory_Drop.container,
		position = position,
		networkContext = NetworkContextType.LOCAL_CONTEXT

	})

	-- print(Environment.IsClient(), Environment.IsServer())
	-- spawned_item:SetCustomProperty("shared", item.shared)
end

Events.Connect(Inventory_Events.DROP, Inventory_Drop.drop)

return Inventory_Drop