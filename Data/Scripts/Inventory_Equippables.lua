---@type Inventory_Events
local Inventory_Events = require(script:GetCustomProperty("Inventory_Events"))

---@type Inventory
local Inventory = require(script:GetCustomProperty("Inventory"))

local INVENTORY_ASSETS = require(script:GetCustomProperty("InventoryAssets"))

---@class Inventory_Equippables
local Inventory_Equippables = {

	equipped_item = nil,
	equipped_slot = -1

}

function Inventory_Equippables.equip(player, inventory_id, item_index)
	local inventory = Inventory.get_inventory_by_id(inventory_id)

	if(inventory == nil) then
		return
	end

	Inventory_Equippables.equipped_slot = item_index

	local item = inventory:GetItem(item_index)
	local lookup_item = Inventory.find_lookup_item_by_asset_id(item.itemAssetId)

	if(Object.IsValid(Inventory_Equippables.equipped_item)) then
		Inventory_Equippables.equipped_item:Unequip(player)

		if(Object.IsValid(Inventory_Equippables.equipped_item)) then
			Inventory_Equippables.equipped_item:Destroy()
		end
	end

	if(lookup_item.EquipmentTemplate ~= nil) then
		Inventory_Equippables.equipped_item = World.SpawnAsset(lookup_item.EquipmentTemplate, {

			networkContext = NetworkContextType.NETWORKED

		})

		Inventory_Equippables.equipped_item:Equip(player)
	end
end

function Inventory_Equippables.unequip(player)
	if(Object.IsValid(Inventory_Equippables.equipped_item)) then
		Inventory_Equippables.equipped_item:Unequip(player)

		if(Object.IsValid(Inventory_Equippables.equipped_item)) then
			Inventory_Equippables.equipped_item:Destroy()
		end

		Inventory_Equippables.equipped_slot = -1
	end
end

function Inventory_Equippables.try_equip(inventory, item_index)
	if(inventory == nil) then
		return
	end

	item_index = (item_index == 0) and 10 or item_index

	local item = inventory:GetItem(item_index)

	if(item == nil) then
		Events.BroadcastToServer(Inventory_Events.UNEQUIP_ITEM)
		return
	end

	local lookup_item = Inventory.find_lookup_item_by_asset_id(item.itemAssetId)

	if(lookup_item.EquipmentTemplate ~= nil) then
		Events.BroadcastToServer(Inventory_Events.EQUIP_ITEM, inventory.id, item_index)
	else
		Events.BroadcastToServer(Inventory_Events.UNEQUIP_ITEM)
	end
end

if(Environment.IsServer()) then
	Events.ConnectForPlayer(Inventory_Events.EQUIP_ITEM, Inventory_Equippables.equip)
	Events.ConnectForPlayer(Inventory_Events.UNEQUIP_ITEM, Inventory_Equippables.unequip)
end

return Inventory_Equippables