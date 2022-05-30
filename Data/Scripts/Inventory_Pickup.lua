---@type Inventory_Events
local Inventory_Events = require(script:GetCustomProperty("Inventory_Events"))

---@type Ticker
local Ticker = require(script:GetCustomProperty("Ticker"))

---@class Inventory_Pickup
local Inventory_Pickup = {

	pickups = {},
	ticker = nil,
	count = 0,
	viewed_item = nil

}

function Inventory_Pickup.create_ticker()
	if(Inventory_Pickup.ticker ~= nil) then
		return
	end

	Inventory_Pickup.ticker = Ticker:new()
	Inventory_Pickup.ticker:tick(Inventory_Pickup.tick)
end

function Inventory_Pickup.register(root)
	local opts = {
	
		root = root,
		trigger = root:GetCustomProperty("Trigger"):WaitForObject()
	
	}

	if(Environment.IsClient() or Environment.IsSinglePlayerPreview()) then
		opts.item = root:GetCustomProperty("Item"):WaitForObject()
		opts.up_down_curve = root:GetCustomProperty("UpDownCurve")
		opts.rotate = root:GetCustomProperty("Rotate")
		opts.animate_up_down = root:GetCustomProperty("AnimateUpDown")
		opts.multiplier = root:GetCustomProperty("multiplier")
		opts.outline_color = root:GetCustomProperty("OutlineColor")
		opts.outline = root:GetCustomProperty("Outline"):WaitForObject()

		Inventory_Pickup.create_ticker()
		opts.z_offset = opts.item:GetPosition().z
		
		if(opts.rotate) then
			opts.item:RotateContinuous(Vector3.New(0, 0, .8), true)
		end

		opts.trigger.endOverlapEvent:Connect(Inventory_Pickup.on_trigger_exit)
	end		

	opts.trigger.beginOverlapEvent:Connect(Inventory_Pickup.on_trigger_entered)
	opts.added = time()
	opts.shared = opts.root:GetCustomProperty("shared")

	Inventory_Pickup.pickups[opts.trigger.id] = opts
	Inventory_Pickup.count = Inventory_Pickup.count + 1

	opts.root.destroyEvent:Connect(Inventory_Pickup.on_pickup_destroyed)
end

function Inventory_Pickup.is_player(other)
	local player = other:IsA("Player") and other or (other:IsA("Vehicle") and other.driver or nil)

	if(player ~= nil) then
		return true
	end

	return false
end

function Inventory_Pickup.on_trigger_entered(trigger, other)
	if(Inventory_Pickup.is_player(other)) then
		if(Environment.IsClient() or Environment.IsSinglePlayerPreview()) then
			local OUTLINE = Inventory_Pickup.pickups[trigger.id].outline

			OUTLINE:SetSmartProperty("Enabled", true)
			OUTLINE:SetSmartProperty("Object To Outline", Inventory_Pickup.pickups[trigger.id].item)
		end

		Inventory_Pickup.pickups[trigger.id].speed = 100
		Inventory_Pickup.pickups[trigger.id].can_pickup = true

		if(Environment.IsServer()) then
			Events.Broadcast(Inventory_Events.PICKUP, Inventory_Pickup.pickups[trigger.id].root, other)
		end
	end
end

function Inventory_Pickup.on_trigger_exit(trigger, other)
	if(Inventory_Pickup.is_player(other) and Inventory_Pickup.pickups[trigger.id] ~= nil) then
		local OUTLINE = Inventory_Pickup.pickups[trigger.id].outline

		OUTLINE:SetSmartProperty("Enabled", false)
	end
end

function Inventory_Pickup.on_pickup_destroyed(obj)
	if(Inventory_Pickup.pickups[obj.id]) then
		Inventory_Pickup.pickups[obj.id] = nil
		Inventory_Pickup.count = Inventory_Pickup.count - 1
	end

	if(Inventory_Pickup.count <= 0) then
		Inventory_Pickup.count = 0
		Inventory_Pickup.ticker:cancel()
		Inventory_Pickup.ticker = nil
	end
end

function Inventory_Pickup.tick(dt)
	for id, pickup in pairs(Inventory_Pickup.pickups) do
		if(Object.IsValid(pickup.trigger)) then
			if(pickup.can_pickup) then
				local overlapping = pickup.trigger:GetOverlappingObjects()

				for index, obj in ipairs(overlapping) do
					if(obj:IsA("Player")) then
						pickup.item:Follow(obj, pickup.speed)
						pickup.speed = pickup.speed + (dt * 10)
					end
				end
			else
				local pos = pickup.item:GetPosition()

				pos.z = pickup.z_offset + pickup.up_down_curve:GetValue(time() - pickup.added) * pickup.multiplier

				pickup.item:SetPosition(pos)
			end
		end
	end
end

return Inventory_Pickup