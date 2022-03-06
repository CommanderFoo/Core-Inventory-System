local INVENTORY_ASSETS = require(script:GetCustomProperty("InventoryAssets"))
local INVENTORY = script:GetCustomProperty("Inventory")
local DEBUG = script:GetCustomProperty("Debug")
local HOTBAR_SLOT_KEY = script:GetCustomProperty("HotBarSlotKey")

---@class API_Inventory
local API = {

	disabled_hover = {}
}

API.INVENTORIES = {}
API.INVENTORY_PANELS = {}
API.IS_INSIDE = false
API.HOTBAR_SLOT_KEY = HOTBAR_SLOT_KEY
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

API.Type = {

	PLAYER_INVENTORY = 1, --Player assigned
	HOTBAR_INVENTORY = 2, --Player assigned
	CHEST_INVENTORY = 3, --World assigned
	ARMOR_INVENTORY = 4, --Player assigned
	STASH_INVENTORY = 5, --Player assigned
	PET_INVENTORY = 6 --Player assigned

}

-- Server

function API.give_items(inventory)
	for i = 1, inventory.slotCount do
		local item = INVENTORY_ASSETS[math.random(#INVENTORY_ASSETS)].asset

		if(inventory:CanAddItem(item, { count = 1 })) then
			inventory:AddItem(item, { count = 1 })
		end
	end
end

function API.create(opts)
	local inventory = World.SpawnAsset(INVENTORY, { networkContext = NetworkContextType.NETWORKED })
	
	inventory:Resize(opts.slot_count)
	inventory.name = opts.name or inventory.id

	if(opts.player ~= nil) then
		inventory:Assign(opts.player)
	elseif(opts.container ~= nil and Object.IsValid(opts.container)) then
		inventory.parent = opts.container
		API.give_items(inventory)
	end

	opts.inventory = inventory

	API.INVENTORIES[inventory.id] = opts

	if(DEBUG) then
		API.give_items(inventory)
	end

	return {

		load = function()
			API.load(opts)
		end

	}
end

function API.load(opts)
	if(opts.type == API.Type.CHEST_INVENTORY) then
		-- ?
	else
		local data = Storage.GetPlayerData(opts.player)
		local inv = data[opts.storage_key] or nil

		if(inv ~= nil) then
			for slot_index, entry in ipairs(inv) do
				local item = API.find_lookup_item_by_key(entry[1])

				if(item ~= nil and opts.inventory:CanAddItem(item.asset, { count = entry[2], slot = slot_index })) then
					opts.inventory:AddItem(item.asset, { count = entry[2], slot = slot_index })
				end
			end
		end

		if(opts.type == API.Type.HOTBAR_INVENTORY) then
			if(data[API.HOTBAR_SLOT_KEY] ~= nil) then
				opts.player:SetPrivateNetworkedData("inventory.hotbar.slot", data[API.HOTBAR_SLOT_KEY])
			end
		end
	end
end

---Saves inventory.
---@param player Player
function API.save(player)
	if(player == nil) then
		-- ?
	else
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

	return {

		cleanup = function()
			if(player ~= nil) then
				API.remove_player_inventory(player)
			end
		end

	}
end

function API.save_hotbar_slot(player, slot_index)
	if(slot_index > -1) then
		local data = Storage.GetPlayerData(player)

		data[API.HOTBAR_SLOT_KEY] = slot_index
		Storage.SetPlayerData(player, data)
	end
end

---Removes a player's inventory.
---@param player Player
function API.remove_player_inventory(player)
	for id, obj in pairs(API.INVENTORIES) do
		if(obj.player ~= nil and obj.player == player and obj.clean_up) then
			obj.inventory:Destroy()
			API.INVENTORIES[id] = nil
			API.INVENTORY_PANELS[id] = nil
			break
		end
	end
end

---Moves an item from one slot to another. This supports cross inventories.
---@param from_inventory_id string The inventory id the item is coming from.
---@param to_inventory_id string The inventory id the item is going too.
---@param from_slot_index integer The slot index the item is coming from.
---@param to_slot_index integer The slot index the item is going too.
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

---Drops an item into an inventory. If the item is outside of an inventory, then it will drop into the world.
---@param from_inventory_id string The inventory id the item is coming from.
---@param to_inventory_id string The inventory id the item is going too.
---@param from_slot_index integer The slot index the item is coming from.
---@param to_slot_index integer The slot index the item is going too.
---@param is_inside boolean Determins if the item being dropped is over an inventory or not.
function API.drop_one_handler(from_inventory_id, to_inventory_id, from_slot_index, to_slot_index, is_inside)
	local from_inventory_obj = API.INVENTORIES[from_inventory_id]
	local to_inventory_obj = API.INVENTORIES[to_inventory_id]

	if(from_inventory_obj ~= nil and to_inventory_obj ~= nil) then
		local from_inventory = from_inventory_obj.inventory
		local to_inventory = to_inventory_obj.inventory
		local item = from_inventory:GetItem(from_slot_index)

		if(not is_inside) then
			local params = { count = 1, networkContext = NetworkContextType.LOCAL_CONTEXT }

			-- Add item to drops inventory
			-- add custom property for inventory item
			-- add custom property to dropped item and set the id for both
			-- use velocity on spawned item
			-- allow for pickup
			-- despawn after X time (remove from pickup inventory)
			-- Picked up clear pickup inventory to sync between clients

			if(from_inventory:CanDropFromSlot(from_slot_index, params)) then

				--from_inventory:DropFromSlot(from_slot_index, params)
			end
		elseif(to_inventory:CanAddItem(item.itemAssetId, { count = 1, slot = to_slot_index }) and from_inventory:CanRemoveFromSlot(from_slot_index)) then
			to_inventory:AddItem(item.itemAssetId, { count = 1, slot = to_slot_index })
			from_inventory:RemoveFromSlot(from_slot_index, { count = 1 })
		end
	end
end

---Removes an item from a slot.
---@param inventory_id string
---@param slot_index integer
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

---Clears the ACTIVE table.
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

---Set the drag proxy object and setup the icon and count properties.
---@param proxy UIControl
function API.set_drag_proxy(proxy)
	API.PROXY = proxy
	API.PROXY_ICON = proxy:FindChildByName("Icon")
	API.PROXY_COUNT = API.PROXY_ICON:FindChildByName("Count")
end

---Enables the cursor for the player.
function API.enable_cursor()
	UI.SetCanCursorInteractWithUI(true)
	UI.SetCursorVisible(true)
end

---Disables the cursor for the player.
function API.disable_cursor()
	UI.SetCanCursorInteractWithUI(false)
	UI.SetCursorVisible(false)
end

---When a slot is pressed, it will either pick up the item in a slot, swap it,
---or add to the stack count of the going to slot.
---@param button UIButton
---@param params table Table contains slot and inventory information.
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

			if(Object.IsValid(count) and Object.IsValid(API.ACTIVE.slot_count)) then
				count.text = API.ACTIVE.slot_count.text
			end

			if(Object.IsValid(API.ACTIVE.slot_count)) then
				API.ACTIVE.slot_count.text = "0"
			end

		-- Slot contains existing item
		else
			local item = API.ACTIVE.inventory:GetItem(API.ACTIVE.slot_index)
			local hovered_inventory = API.ACTIVE.hovered_inventory or API.ACTIVE.inventory
			local to_item = hovered_inventory:GetItem(API.ACTIVE.hovered_slot_index or API.ACTIVE.slot_index)

			if(item ~= nil and to_item ~= nil and item.itemAssetId == to_item.itemAssetId and to_item.count == to_item.maximumStackCount) then
				API.ACTIVE.slot.opacity = 1
			else
				local tmp_img = icon:GetImage()
				local tmp_count = nil

				if(Object.IsValid(count)) then
					tmp_count = count.text
				end

				icon:SetImage(API.ACTIVE.slot_icon:GetImage())

				if(Object.IsValid(count) and Object.IsValid(API.ACTIVE.slot_count)) then
					count.text = API.ACTIVE.slot_count.text
				end

				API.ACTIVE.slot_icon:SetImage(tmp_img)

				if(tmp_count ~= nil and Object.IsValid(API.ACTIVE.slot_count)) then
					API.ACTIVE.slot_count.text = tmp_count
				end

				API.ACTIVE.slot.opacity = 1

				tmp_img = nil
				tmp_count = nil
			end
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

---Drops one item in to a slot, to an existing count, or into the world.
---@param player Player
---@param action string
function API.drop_one_action(player, action)
	if(action == "Inventory Drop One") then
		if(API.ACTIVE.has_item and API.ACTIVE.hovered_inventory and API.ACTIVE.hovered_slot) then
			local item = API.ACTIVE.inventory:GetItem(API.ACTIVE.slot_index)
			local item_count = item.count
			local new_count = math.max(0, item.count - 1)
			local item_asset_id = item.itemAssetId

			if(not API.IS_INSIDE) then
				Events.BroadcastToServer("inventory.dropone", API.ACTIVE.inventory.id, API.ACTIVE.inventory.id, API.ACTIVE.slot_index, API.ACTIVE.hovered_slot_index, API.IS_INSIDE)

				if(new_count == 0) then
					API.PROXY.visibility = Visibility.FORCE_OFF
					API.ACTIVE.slot.opacity = 1
					API.clear_dragged_item()
				end
			else
				local icon = API.ACTIVE.hovered_slot:FindChildByName("Icon")
				local is_hidden = icon.visibility == Visibility.FORCE_OFF and true or false

				if(API.ACTIVE.inventory == API.ACTIVE.hovered_inventory and API.ACTIVE.slot_index == API.ACTIVE.hovered_slot_index) then
					API.PROXY.visibility = Visibility.FORCE_OFF
					API.ACTIVE.slot.opacity = 1
					API.clear_dragged_item()
				elseif(is_hidden) then
					icon.visibility = Visibility.FORCE_ON
					icon:SetImage(API.PROXY_ICON:GetImage())
					API.PROXY_COUNT.text = new_count == 0 and "" or tostring(new_count)

					Events.BroadcastToServer("inventory.dropone", API.ACTIVE.inventory.id, API.ACTIVE.hovered_inventory.id, API.ACTIVE.slot_index, API.ACTIVE.hovered_slot_index, true)

					if(new_count == 0) then
						API.PROXY.visibility = Visibility.FORCE_OFF
						API.ACTIVE.slot.opacity = 1
						API.clear_dragged_item()
					end
				else
					local current_item = API.ACTIVE.hovered_inventory:GetItem(API.ACTIVE.hovered_slot_index)
					local can_drop = true

					if(current_item ~= nil and current_item.count == current_item.maximumStackCount and current_item.itemAssetId == item_asset_id) then
						can_drop = false
					end

					if(can_drop) then
						Events.BroadcastToServer("inventory.dropone", API.ACTIVE.inventory.id, API.ACTIVE.hovered_inventory.id, API.ACTIVE.slot_index, API.ACTIVE.hovered_slot_index, true)
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
end

---Triggers when the player hovers over a slot.
---@param button UIButton
---@param params table
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

---Triggers when the player unhovers on a slot.
---@param button UIButton
---@param params table
function API.on_unhovered_event(button, params)
	local frame = params.slot:GetCustomProperty("Frame"):GetObject()

	if(API.disabled_hover[frame] == nil) then
		frame:SetColor(params.slot_frame_normal)
	end

	params.slot:GetCustomProperty("Background"):GetObject():SetColor(params.slot_background_normal)
end

---Looks up an inventory.
---@param name string
---@return Inventory
function API.get_inventory(name, type, container)
	if(type == API.Type.CHEST_INVENTORY) then
		while(container:GetChildren() == 0) do
			Task.Wait()
		end

		return container:GetChildren()[1]
	else
		local local_player = Game.GetLocalPlayer()

		while(#local_player:GetInventories() == 0) do
			Task.Wait()
		end

		for i, inv in ipairs(local_player:GetInventories()) do
			if(inv.name == name) then
				return inv
			end
		end
	end

	return nil
end

---Disables the frame from being hovered over. This is used with hotbars.
---@param slot_frame UIImage
function API.disable_frame_hover(slot_frame)
	API.disabled_hover[slot_frame] = 1
end

---Enables frame over on a slot by removing it from the lookup table.
---@param slot_frame UIImage
function API.enable_frame_hover(slot_frame)
	if(API.disabled_hover[slot_frame] ~= nil) then
		API.disabled_hover[slot_frame] = nil
	end
end

---Gets the inventory panels
---@return table
function API.get_panels()
	local panels = {}

	for id, data in pairs(API.INVENTORY_PANELS) do
		table.insert(panels, data)
	end

	return panels
end

---Sets an inventory panel.
---@param id string The inventory id.
---@param panel UIControl
function API.set_panel(id, panel)
	API.INVENTORY_PANELS[id] = panel
end

---Ticks every frame to check if the player is inside an inventory when they have an item.
function API.tick()
	API.IS_INSIDE = false

	if(API.ACTIVE.has_item) then
		local panels = API.get_panels()

		if(#panels > 0) then
			for i, panel in ipairs(panels) do
				local mouse_pos = UI.GetCursorPosition()
				local pos = panel:GetAbsolutePosition()

				local x_start = 0
				local x_end = 0
				local y_start = 0
				local y_end = 0
				local anchor = panel.anchor

				if(anchor == UIPivot.TOP_LEFT) then
					x_start = pos.x
					x_end = pos.x + panel.width
					y_start = pos.y
					y_end = pos.y + panel.height
				elseif(anchor == UIPivot.TOP_CENTER) then
					x_start = pos.x - (panel.width / 2)
					x_end = pos.x + (panel.width / 2)
					y_start = pos.y
					y_end = pos.y + panel.height
				elseif(anchor == UIPivot.TOP_RIGHT) then
					x_start = pos.x - panel.width
					x_end = pos.x
					y_start = pos.y
					y_end = pos.y + panel.height
				elseif(anchor == UIPivot.MIDDLE_LEFT) then
					x_start = pos.x
					x_end = pos.x + panel.width
					y_start = pos.y - (panel.height / 2)
					y_end = pos.y + (panel.height / 2)
				elseif(anchor == UIPivot.MIDDLE_CENTER) then
					x_start = pos.x - (panel.width / 2)
					x_end = pos.x + (panel.width / 2)
					y_start = pos.y - (panel.height / 2)
					y_end = pos.y + (panel.height / 2)
				elseif(anchor == UIPivot.MIDDLE_RIGHT) then
					x_start = pos.x - panel.width
					x_end = pos.x
					y_start = pos.y - (panel.height / 2)
					y_end = pos.y + (panel.height / 2)
				elseif(anchor == UIPivot.BOTTOM_LEFT) then
					x_start = pos.x
					x_end = pos.x + panel.width
					y_start = pos.y - panel.height
					y_end = pos.y
				elseif(anchor == UIPivot.BOTTOM_CENTER) then
					x_start = pos.x - (panel.width / 2)
					x_end = pos.x + (panel.width / 2)
					y_start = pos.y - panel.height
					y_end = pos.y
				elseif(anchor == UIPivot.BOTTOM_RIGHT) then
					x_start = pos.x - panel.width
					x_end = pos.x
					y_start = pos.y - panel.height
					y_end = pos.y
				end

				if(mouse_pos.x > x_start and mouse_pos.x < x_end and mouse_pos.y > y_start and mouse_pos.y < y_end) then
					API.IS_INSIDE = true
				end

				--print(string.format("Mouse X: %s, Start X: %s, End X: %s, Mouse Y: %s, Start Y: %s, End Y: %s, Inside: %s", mouse_pos.x, x_start, x_end, mouse_pos.y, y_start, y_end, API.IS_INSIDE))
			end
		end
	end
end

---Global inventory changed event.
---@param inventory Inventory
---@param slot_index integer
---@param slots UIPanel
function API.inventory_changed(inventory, slot_index, slots)
	local item = inventory:GetItem(slot_index)
	local child_icon = slots:GetChildren()[slot_index]:FindChildByName("Icon")
	local child_count = child_icon:FindChildByName("Count")

	if(item ~= nil) then
		local icon = item:GetCustomProperty("Icon")

		child_icon:SetImage(icon)
		child_icon.visibility = Visibility.FORCE_ON

		if(Object.IsValid(child_count)) then
			child_count.text = tostring(item.count)
		end
	else
		child_icon.visibility = Visibility.FORCE_OFF

		if(Object.IsValid(child_count)) then
			child_count.text = ""
		end
	end
end

function API.init(opts)
	API.set_panel(opts.inventory.id, opts.inventory_ui)

	for slot_index, item in pairs(opts.inventory:GetItems()) do
		API.inventory_changed(opts.inventory, slot_index, opts.slots)
	end

	opts.inventory.changedEvent:Connect(API.inventory_changed, opts.slots)

	for index, slot in ipairs(opts.slots:GetChildren()) do
		local button = slot:FindChildByName("Button")
		local icon = slot:FindChildByName("Icon")
		
		if(button ~= nil and icon ~= nil and button.isInteractable) then
			local params = {

				inventory = opts.inventory,
				slot = slot,
				slot_index = index,
				slot_frame_hover = opts.slot_frame_hover,
				slot_background_hover = opts.slot_background_hover,
				slot_frame_normal = opts.slot_frame_normal,
				slot_background_normal = opts.slot_background_normal,

			}

			button.pressedEvent:Connect(API.on_slot_pressed_event, params)
			button.hoveredEvent:Connect(API.on_hovered_event, params)
			button.unhoveredEvent:Connect(API.on_unhovered_event, params)
		end
	end
end

-- Shared

---Looks up an item by the key that is used for storage.
---@param key string
---@return table
function API.find_lookup_item_by_key(key)
	for i, data_item in pairs(INVENTORY_ASSETS) do
		if(key == data_item.key) then
			return data_item
		end
	end
end

---Find an item based on an asset id.
---@param item string
---@return table
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
	Events.Connect("inventory.dropone", API.drop_one_handler)
	Events.Connect("inventory.removeitem", API.remove_item_handler)
	Events.ConnectForPlayer("inventory.hotbar.save_slot", API.save_hotbar_slot)
else
	Input.actionPressedEvent:Connect(API.drop_one_action)
end

return API