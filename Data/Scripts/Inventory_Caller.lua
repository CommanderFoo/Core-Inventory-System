Events.Connect("inventory.cross.dropitem", function(inventory, item_asset_id, count)
	if(inventory:CanDropItem(item_asset_id, { count = 1, parent = script, networkContext = NetworkContextType.LOCAL_CONTEXT })) then
		inventory:DropItem(item_asset_id, { count = count, parent = script, networkContext = NetworkContextType.LOCAL_CONTEXT })
	end
end)