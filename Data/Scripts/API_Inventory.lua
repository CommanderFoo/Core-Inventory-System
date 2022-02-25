local INVENTORY_ASSETS = require(script:GetCustomProperty("InventoryAssets"))
local INVENTORY = script:GetCustomProperty("Inventory")

-- @TODO: Storage compression

local API = {

	disabled_hover = {}

}

API.INVENTORIES = {}
API.ACTIVE = {

	slot = nil,
	slot_icon = nil,
	slot_count = nil,
	slot_index = nil,
	inventory = nil,
	has_item = false,
	hovered_slot_index = nil,
	hovered_inventory = nil,
	hovered_slot = nil

}

-- Server

function API.create_player_inventory(player, slot_count, clean_up, storage_key, name)
	local inventory = World.SpawnAsset(INVENTORY, { networkContext = NetworkContextType.NETWORKED })

	inventory:Resize(slot_count)
	inventory:Assign(player)
	inventory.name = name or player.name

	API.INVENTORIES[inventory.id] = {

		inventory = inventory,
		player = player,
		clean_up =  clean_up,
		storage_key = storage_key

	}

	-- for i = 1, slot_count do
	-- 	local asset = INVENTORY_ASSETS[math.random(#INVENTORY_ASSETS)].asset
	-- 	local count = math.random(1, 5)

	-- 	if(inventory:CanAddItem(asset, { count = count, slot = i })) then
	-- 		inventory:AddItem(asset, { count = count, slot = i })
	-- 	elseif(count == 2) then
	-- 		inventory:AddItem(asset, { count = 1, slot = i })
	-- 	end
	-- end
end

function API.load_player_inventory(player)
	local data = Storage.GetPlayerData(player)

	for id, obj in pairs(API.INVENTORIES) do
		local inv = data[obj.storage_key] or nil

		if(inv ~= nil) then
			for slot_index, entry in ipairs(inv) do
				local item = API.find_lookup_item_by_key(entry[1])

				if(item ~= nil and obj.inventory:CanAddItem(item.asset, { count = entry[2], slot = slot_index })) then
					obj.inventory:AddItem(item.asset, { count = entry[2], slot = slot_index })
				end
			end
		end
	end
end

function API.save_player_inventory(player)
	local data = Storage.GetPlayerData(player)

	for id, obj in pairs(API.INVENTORIES) do
		if(obj.player ~= nil and obj.player == player) then
			local inv = obj.inventory

			if(Object.IsValid(inv)) then
				local tmp = {}

				for i = 1, inv.slotCount do
					local item = inv:GetItem(i)
					local entry = {}

					if(item ~= nil) then
						local lookup_item = API.find_lookup_item_by_asset_id(item)

						if(lookup_item ~= nil) then
							entry = { lookup_item.key, item.count }
						end
					end

					table.insert(tmp, entry)
				end

				data[obj.storage_key] = tmp
			end
		end
	end

	Storage.SetPlayerData(player, data)
end

function API.remove_player_inventory(player)
	for id, obj in pairs(API.INVENTORIES) do
		if(obj.player ~= nil and obj.player == player and obj.clean_up) then
			obj.inventory:Destroy()
			API.INVENTORIES[id] = nil
			break
		end
	end
end

function API.move_item_handler(from_inventory_id, to_inventory_id, from_slot_index, to_slot_index)
	local from_inventory_obj = API.INVENTORIES[from_inventory_id]
	local to_inventory_obj = API.INVENTORIES[to_inventory_id]

	if(from_inventory_obj ~= nil and to_inventory_obj ~= nil) then
		local from_inventory = from_inventory_obj.inventory
		local to_inventory = to_inventory_obj.inventory

		if(from_inventory == to_inventory) then
			if(from_inventory:CanMoveFromSlot(from_slot_index, to_slot_index)) then
				from_inventory:MoveFromSlot(from_slot_index, to_slot_index)
			end
		else
			local from_item = from_inventory:GetItem(from_slot_index)
			local to_item = to_inventory:GetItem(to_slot_index)

			local from_item_asset_id = from_item.itemAssetId
			local from_item_count = from_item.count

			if(to_item ~= nil) then
				local to_item_asset_id = to_item.itemAssetId
				local to_item_count = to_item.count
				local skip_from_item = false

				if(to_item_asset_id == from_item_asset_id) then
					local total = to_item_count + from_item_count

					if(total > to_item.maximumStackCount) then
						if(to_item_count == to_item.maximumStackCount) then
							to_item_count = to_item.maximumStackCount
							from_item_count = total - to_item.maximumStackCount
						else
							to_item_count = total - to_item.maximumStackCount
							from_item_count = to_item.maximumStackCount
						end
					else
						skip_from_item = true
						from_item_count = total
					end
				end

				from_inventory:RemoveFromSlot(from_slot_index)
				to_inventory:RemoveFromSlot(to_slot_index)

				if(not skip_from_item) then
					from_inventory:AddItem(to_item_asset_id, { count = to_item_count, slot = from_slot_index })
				end
			else
				from_inventory:RemoveFromSlot(from_slot_index)
			end

			to_inventory:AddItem(from_item_asset_id, { count = from_item_count, slot = to_slot_index })
		end
	end
end

function API.add_one_handler(from_inventory_id, to_inventory_id, from_slot_index, to_slot_index)
	local from_inventory_obj = API.INVENTORIES[from_inventory_id]
	local to_inventory_obj = API.INVENTORIES[to_inventory_id]

	if(from_inventory_obj ~= nil and to_inventory_obj ~= nil) then
		local from_inventory = from_inventory_obj.inventory
		local to_inventory = to_inventory_obj.inventory
		local item = from_inventory:GetItem(from_slot_index)

		if(to_inventory:CanAddItem(item.itemAssetId, { count = 1, slot = to_slot_index }) and from_inventory:CanRemoveFromSlot(from_slot_index)) then
			to_inventory:AddItem(item.itemAssetId, { count = 1, slot = to_slot_index })
			from_inventory:RemoveFromSlot(from_slot_index, { count = 1 })
		end
	end
end

function API.remove_item_handler(inventory_id, slot_index)
	local inventory_obj = API.INVENTORIES[inventory_id]

	if(inventory_obj ~= nil) then
		local inventory = inventory_obj.inventory

		if(inventory:CanRemoveFromSlot(slot_index)) then
			inventory:RemoveFromSlot(slot_index)
		end
	end
end

-- Client

function API.clear_dragged_item()
	API.ACTIVE.slot = nil
	API.ACTIVE.slot_icon = nil
	API.ACTIVE.slot_count = nil
	API.ACTIVE.slot_index = nil
	API.ACTIVE.inventory = nil
	API.ACTIVE.has_item = false
	API.ACTIVE.hovered_slot = nil
	API.ACTIVE.hovered_slot_index = nil
	API.ACTIVE.hovered_inventory = nil
end

function API.set_drag_proxy(proxy)
	API.PROXY = proxy
	API.PROXY_ICON = proxy:FindChildByName("Icon")
	API.PROXY_COUNT = API.PROXY_ICON:FindChildByName("Count")
end

function API.enable_cursor()
	UI.SetCanCursorInteractWithUI(true)
	UI.SetCursorVisible(true)
end

function API.disable_cursor()
	UI.SetCanCursorInteractWithUI(false)
	UI.SetCursorVisible(false)
end

function API.on_slot_pressed_event(button, params)
	local icon = params.slot:FindChildByName("Icon")
	local is_hidden = icon.visibility == Visibility.FORCE_OFF and true or false
	local count = icon:FindChildByName("Count")

	-- Has item already.
	if(API.ACTIVE.has_item) then

		-- No icon, so this is an empty slot, and dropping it into it.
		if(is_hidden) then
			icon.visibility = Visibility.FORCE_ON
			icon:SetImage(API.PROXY_ICON:GetImage())
			API.ACTIVE.slot.opacity = 1
			API.ACTIVE.slot_icon.visibility = Visibility.FORCE_OFF
			count.text = API.ACTIVE.slot_count.text
			API.ACTIVE.slot_count.text = "0"

		-- Slot contains existing item
		else
			local tmp_img = icon:GetImage()
			local tmp_count = count.text

			icon:SetImage(API.ACTIVE.slot_icon:GetImage())
			count.text = API.ACTIVE.slot_count.text
			API.ACTIVE.slot_icon:SetImage(tmp_img)
			API.ACTIVE.slot_count.text = tmp_count
			API.ACTIVE.slot.opacity = 1

			tmp_img = nil
			tmp_count = nil
		end

		Events.BroadcastToServer("inventory.moveitem", API.ACTIVE.inventory.id, params.inventory.id, API.ACTIVE.slot_index, params.slot_index)

		API.clear_dragged_item()
		API.PROXY.visibility = Visibility.FORCE_OFF

	-- No item, pick up from clicked slot.
	elseif(not is_hidden) then
		API.PROXY.visibility = Visibility.FORCE_ON
		API.ACTIVE.has_item = true
		API.PROXY_ICON:SetImage(icon:GetImage())
		API.PROXY_COUNT.text = tostring(params.inventory:GetItem(params.slot_index).count)
		params.slot.opacity = .6
		API.ACTIVE.slot = params.slot
		API.ACTIVE.slot_icon = icon
		API.ACTIVE.slot_count = count
		API.ACTIVE.slot_index = params.slot_index
		API.ACTIVE.inventory = params.inventory
	end
end

function API.add_one_action(player, action)
	if(action == "Inventory Add One") then
		if(API.ACTIVE.has_item and API.ACTIVE.hovered_inventory and API.ACTIVE.hovered_slot) then
			local icon = API.ACTIVE.hovered_slot:FindChildByName("Icon")
			local is_hidden = icon.visibility == Visibility.FORCE_OFF and true or false
			local item = API.ACTIVE.inventory:GetItem(API.ACTIVE.slot_index)
			local item_count = item.count
			local itemAssetId = item.itemAssetId
			local new_count = math.max(0, item.count - 1)

			if(API.ACTIVE.inventory == API.ACTIVE.hovered_inventory and API.ACTIVE.slot_index == API.ACTIVE.hovered_slot_index) then
				API.PROXY.visibility = Visibility.FORCE_OFF
				API.ACTIVE.slot.opacity = 1
				API.clear_dragged_item()
			elseif(is_hidden) then
				icon.visibility = Visibility.FORCE_ON
				icon:SetImage(API.PROXY_ICON:GetImage())
				API.PROXY_COUNT.text = new_count == 0 and "" or tostring(new_count)

				Events.BroadcastToServer("inventory.addone", API.ACTIVE.inventory.id, API.ACTIVE.hovered_inventory.id, API.ACTIVE.slot_index, API.ACTIVE.hovered_slot_index)

				if(new_count == 0) then
					API.PROXY.visibility = Visibility.FORCE_OFF
					API.ACTIVE.slot.opacity = 1
					API.clear_dragged_item()
				end
			else
				local current_item = API.ACTIVE.hovered_inventory:GetItem(API.ACTIVE.hovered_slot_index)
				local can_drop = true

				if(current_item ~= nil and current_item.count == current_item.maximumStackCount and current_item.itemAssetId == itemAssetId) then
					can_drop = false
				end

				if(can_drop) then
					Events.BroadcastToServer("inventory.addone", API.ACTIVE.inventory.id, API.ACTIVE.hovered_inventory.id, API.ACTIVE.slot_index, API.ACTIVE.hovered_slot_index)
					API.PROXY_COUNT.text = new_count == 0 and "" or tostring(new_count)
				end

				if(new_count == 0) then
					API.PROXY.visibility = Visibility.FORCE_OFF
					API.ACTIVE.slot.opacity = 1
					API.clear_dragged_item()
				end
			end
		end
	end
end

function API.drop_item_action(player, action)
	if(action == "Inventory Drop Item" and API.ACTIVE.has_item) then
		Events.BroadcastToServer("inventory.dropitem", API.ACTIVE.inventory.id, API.ACTIVE.slot_index)
	end
end

function API.on_hovered_event(button, params)
	local frame = params.slot:GetCustomProperty("Frame"):GetObject()

	if(API.disabled_hover[frame] == nil) then
		frame:SetColor(params.slot_frame_hover)
	end

	params.slot:GetCustomProperty("Background"):GetObject():SetColor(params.slot_background_hover)

	API.ACTIVE.hovered_slot_index = params.slot_index
	API.ACTIVE.hovered_inventory = params.inventory
	API.ACTIVE.hovered_slot = params.slot
end

function API.on_unhovered_event(button, params)
	local frame = params.slot:GetCustomProperty("Frame"):GetObject()

	if(API.disabled_hover[frame] == nil) then
		frame:SetColor(params.slot_frame_unhover)
	end

	params.slot:GetCustomProperty("Background"):GetObject():SetColor(params.slot_background_unhover)
end

function API.remove_item_slot_pressed()
	if(API.ACTIVE.has_item and API.ACTIVE.inventory ~= nil) then
		Events.BroadcastToServer("inventory.removeitem", API.ACTIVE.inventory.id, API.ACTIVE.slot_index)
		API.ACTIVE.slot.opacity = 1
		API.ACTIVE.slot_icon.visibility = Visibility.FORCE_OFF
		API.clear_dragged_item()
		API.PROXY.visibility = Visibility.FORCE_OFF
	end
end

function API.get_inventory(name)
	local local_player = Game.GetLocalPlayer()

	while(#local_player:GetInventories() == 0) do
		Task.Wait()
	end

	for i, inv in ipairs(local_player:GetInventories()) do
		if(inv.name == name) then
			return inv
		end
	end

	return nil
end

function API.disable_frame_hover(slot_frame)
	API.disabled_hover[slot_frame] = 1
end

function API.enable_frame_hover(slot_frame)
	if(API.disabled_hover[slot_frame] ~= nil) then
		API.disabled_hover[slot_frame] = nil
	end
end

-- Shared

function API.find_lookup_item_by_key(key)
	for i, data_item in pairs(INVENTORY_ASSETS) do
		if(key == data_item.key) then
			return data_item
		end
	end
end

function API.find_lookup_item_by_asset_id(item)
	for i, data_item in pairs(INVENTORY_ASSETS) do
		local id = CoreString.Split(data_item.asset, ":")

		if(id == item.itemAssetId) then
			return data_item
		end
	end
end

-- Events

if(Environment.IsServer()) then
	Events.Connect("inventory.moveitem", API.move_item_handler)
	Events.Connect("inventory.addone", API.add_one_handler)
	Events.Connect("inventory.removeitem", API.remove_item_handler)
else
	Input.actionPressedEvent:Connect(API.add_one_action)
end

return API