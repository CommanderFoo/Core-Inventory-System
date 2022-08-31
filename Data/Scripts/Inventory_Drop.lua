---@type Inventory
local Inventory = require(script:GetCustomProperty("Inventory"))

---@type Inventory_Events
local Inventory_Events = require(script:GetCustomProperty("Inventory_Events"))

_G["Inventory.Drops"] = {}

---@class Inventory_Drop
local Inventory_Drop = {}

local EXPIRE_TIME = 40 * 1000

function Inventory_Drop.set_container(container)
	Inventory_Drop.container = container
end

function Inventory_Drop.get_drop(obj)
	return _G["Inventory.Drops"][obj]
end

function Inventory_Drop.drop(item, count, position)
	local spawned_item = World.SpawnAsset(item.Template, {

		parent = Inventory_Drop.container,
		position = position,
		networkContext = NetworkContextType.NETWORKED

	})

	spawned_item.name = item.Asset

	spawned_item.destroyEvent:Connect(function()
		_G["Inventory.Drops"][spawned_item] = nil
	end)

	_G["Inventory.Drops"][spawned_item] = {

		ts = DateTime.CurrentTime().millisecondsSinceEpoch,
		count = count,
		asset = item.Asset,
		item = item

	}
end

function Inventory_Drop.pickup_drop(obj, player, is_shared)
	local entry = _G["Inventory.Drops"][obj]

	if(entry ~= nil) then
		Task.Wait()
		
		local inventories = Inventory.get_priority_inventories(player)
		local pick_count = entry.count

		for index, inv in ipairs(inventories) do
			local to_add = 0

			if(inv.inventory.occupiedSlotCount < inv.inventory.slotCount) then
				to_add = -1
			end

			if(to_add ~= -1) then
				local items = Inventory.get_items(inv.inventory, entry.asset)

				for i, item in pairs(items) do
					local max = item.maximumStackCount
					local item_count = item.count

					if(item_count < max) then
						local space = max - item_count

						if(pick_count > space) then
							local over = pick_count - space

							to_add = to_add + (pick_count - over)
							pick_count = over
						else
							to_add = to_add + pick_count
							pick_count = 0
						end
					end
				end
			end

			if(to_add > 0) then
				inv.inventory:AddItem(entry.asset, { count = to_add })
			elseif(to_add == -1 and pick_count > 0) then
				inv.inventory:AddItem(entry.asset, { count = pick_count })
				pick_count = 0
			end

			to_add = 0
		end

		if(pick_count > 0) then
			local position = player:GetWorldPosition()
			local hit = World.Raycast(position, position + (-Vector3.UP * 300), { ignorePlayers = true })

			if(hit ~= nil) then
				position = hit:GetImpactPosition()
			end

			Inventory_Drop.drop(entry.item, pick_count, position)
		end

		if(not is_shared) then
			_G["Inventory.Drops"][obj] = nil
		end
	end
end

function Inventory_Drop.clear_old_drops()
	local ts = DateTime.CurrentTime().millisecondsSinceEpoch
	local drops = _G["Inventory.Drops"] or {}

	for obj, entry in pairs(drops) do
		if((entry.ts + EXPIRE_TIME) < ts) then
			local dropped_item = obj

			dropped_item:Destroy()
			_G["Inventory.Drops"][obj] = nil
		end
	end
end

if(Environment.IsServer()) then
	local task = Task.Spawn(Inventory_Drop.clear_old_drops, EXPIRE_TIME)

	task.repeatCount = -1
	task.repeatInterval = EXPIRE_TIME

	Events.Connect(Inventory_Events.PICKUP, Inventory_Drop.pickup_drop)
	Events.Connect(Inventory_Events.DROP, Inventory_Drop.drop)
end

return Inventory_Drop