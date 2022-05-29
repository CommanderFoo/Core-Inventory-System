---@type Inventory_Events
local Inventory_Events = require(script:GetCustomProperty("Inventory_Events"))

---@class Inventory_Drop
local Inventory_Drop = {

	drops = {}

}

function Inventory_Drop.set_container(container)
	Inventory_Drop.container = container
end

function Inventory_Drop.drop(item, quantity, position, broadcast)
	local spawned_item = World.SpawnAsset(item.pickup_template, {

		parent = Inventory_Drop.container,
		position = position,
		networkContext = NetworkContextType.LOCAL_CONTEXT

	})

	spawned_item:SetCustomProperty("shared", item.shared)
end

Events.Connect(Inventory_Events.DROP, Inventory_Drop.drop)

return Inventory_Drop