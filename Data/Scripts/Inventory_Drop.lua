---@type Inventory_Events
local Inventory_Events = require(script:GetCustomProperty("Inventory_Events"))

---@class Inventory_Drop
local Inventory_Drop = {

	drops = {}

}

function Inventory_Drop.set_container(container)
	Inventory_Drop.container = container
end

function Inventory_Drop.set_inventory(inventory)
	Inventory_Drop.inventory = inventory

	if(Environment.IsClient() or Environment.IsSinglePlayerPreview()) then
		inventory.changedEvent:Connect(Inventory_Drop.changed)

		for i, slot in pairs(inventory:GetItems()) do
			Inventory_Drop.changed(inventory, i)
		end

		local lookup = {}

		for index, slot in pairs(inventory:GetItems()) do
			lookup[slot:GetCustomProperty("id")] = 1
		end

		for i, d in ipairs(Inventory_Drop.drops) do
			if(Object.IsValid(d) and not lookup[d.id]) then
				d:Destroy()
			end
		end
	end
end

---Not true local context.
---Move to static context using shared assets
function Inventory_Drop.drop(item, count, position)
	local ts = DateTime.CurrentTime().secondsSinceEpoch

	local spawned_item = World.SpawnAsset(item.pickup_template, {

		parent = Inventory_Drop.container,
		position = position,
		networkContext = NetworkContextType.LOCAL_CONTEXT

	})

	spawned_item.destroyEvent:Connect(function()
		for index, item in pairs(Inventory_Drop.inventory:GetItems()) do
			if(item:GetCustomProperty("id") == spawned_item.id) then
				Inventory_Drop.inventory:RemoveFromSlot(item.slot)
			end
		end
	end)

	spawned_item:SetCustomProperty("timestamp", ts)

	Inventory_Drop.inventory:AddItem(item.asset, {

		count = count,
		customProperties = {

			timestamp = ts,
			id = spawned_item.id

		}

	})
end

function Inventory_Drop.find_obj(slot)
	for id, slot_index in pairs(Inventory_Drop.drops) do
		if(slot == slot_index) then
			return id
		end
	end

	return nil
end

function Inventory_Drop.destroy_obj(slot)
	local id = Inventory_Drop.drops.find_obj(slot)

	if(id ~= nil) then
		for i, d in ipairs(Inventory_Drop.drops) do
			if(Object.IsValid(d)) then
				if(d.id == id) then
					d:Destroy()
					Inventory_Drop.drops[id] = nil
				end
			else
				Inventory_Drop.drops[id] = nil
			end
		end
	end
end

function Inventory_Drop.changed(inv, slot)
	local item = inv:GetItem(slot)

	if(item ~= nil) then
		Inventory_Drop.drops[item:GetCustomProperty("id")] = slot
	else
		Inventory_Drop.drops.destroy_obj(slot)
	end
end

Events.Connect(Inventory_Events.DROP, Inventory_Drop.drop)

return Inventory_Drop