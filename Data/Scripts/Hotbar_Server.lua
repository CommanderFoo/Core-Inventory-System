local hotbar_storage_key = "ihs"

local function save_hotbar_slot(player, slot_index)
	if(slot_index > -1) then
		local data = Storage.GetPlayerData(player)

		data[hotbar_storage_key] = slot_index
		Storage.SetPlayerData(player, data)
	end
end

local function load_hotbar_slot(player)
	local data = Storage.GetPlayerData(player)

	if(data[hotbar_storage_key] ~= nil) then
		player:SetPrivateNetworkedData("inventory.hotbar.slot", data[hotbar_storage_key])
	end
end

Game.playerJoinedEvent:Connect(load_hotbar_slot)
Events.ConnectForPlayer("inventory.hotbar.save_slot", save_hotbar_slot)