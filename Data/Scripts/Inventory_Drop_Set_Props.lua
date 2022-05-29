local item = script:FindAncestorByType("InventoryItem")

if(item ~= nil) then
	item:SetCustomProperty("timestamp", DateTime.CurrentTime().secondsSinceEpoch)
end