local API = {}

function API.set_inventory(inventory)
	API.inventory = inventory
end

Events.Connect("inventory.drops.add", function(asset, quantity, position)
	API.inventory:AddItem(asset, quantity, {

		customProperties = {

			position = position,
			timestamp = DateTime.CurrentTime().secondsSinceEpoch

		}

	})
end)

return API