local API = {

	drops = {}

}

function API.set_container(container)
	API.container = container
end

function API.add(item, quantity, position, broadcast)
	local spawned_item = World.SpawnAsset(item.pickup_template, {

		parent = API.container,
		position = position,
		networkContext = NetworkContextType.LOCAL_CONTEXT

	})

	spawned_item:SetCustomProperty("shared", item.shared)
end

Events.Connect("inventory.drops.add", API.add)

return API