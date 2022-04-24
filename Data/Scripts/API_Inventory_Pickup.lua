local API_INVENTORY = require(script:GetCustomProperty("API_Inventory"))
local Ticker = require(script:GetCustomProperty("Ticker"))

local API = {

	pickups = {},
	ticker = nil,
	count = 0,
	viewed_item = nil

}

function API.create_ticker()
	if(API.ticker ~= nil) then
		return
	end

	API.ticker = Ticker:new()
	API.ticker:tick(API.tick)
end

function API.register(opts)
	API.create_ticker()

	opts.added = time()
	opts.z_offset = opts.item:GetPosition().z
	API.pickups[opts.trigger.id] = opts
	API.count = API.count + 1

	if(opts.rotate) then
		opts.item:RotateContinuous(Vector3.New(0, 0, .8), true)
	end

	opts.root.destroyEvent:Connect(API.on_pickup_destroyed)
	opts.trigger.beginOverlapEvent:Connect(API.on_trigger_entered)
	opts.trigger.endOverlapEvent:Connect(API.on_trigger_exit)
end

function API.is_player(other)
	local player = other:IsA("Player") and other or (other:IsA("Vehicle") and other.driver or nil)

	if(player ~= nil and player == Game.GetLocalPlayer()) then
		return true
	end

	return false
end

function API.on_trigger_entered(trigger, other)
	if(API.is_player(other)) then
		local OUTLINE = API.pickups[trigger.id].outline

		OUTLINE:SetSmartProperty("Enabled", true)
		OUTLINE:SetSmartProperty("Object To Outline", API.pickups[trigger.id].item)

		API.pickups[trigger.id].speed = 100
		API.pickups[trigger.id].can_pickup = true
	end
end

function API.on_trigger_exit(trigger, other)
	if(API.is_player(other)) then
		local OUTLINE = API.pickups[trigger.id].outline

		OUTLINE:SetSmartProperty("Enabled", false)
	end
end

function API.on_pickup_destroyed(obj)
	if(API.pickups[obj.id]) then
		API.pickups[obj.id] = nil
		API.count = API.count - 1
	end

	if(API.count <= 0) then
		API.count = 0
		API.ticker:cancel()
		API.ticker = nil
	end
end

local LOCAL_PLAYER = Game.GetLocalPlayer()

function API.tick(dt)
	for id, pickup in pairs(API.pickups) do
		if(pickup.can_pickup) then
			pickup.item:Follow(LOCAL_PLAYER, pickup.speed)
			pickup.speed = pickup.speed + (dt * 10)
		else
			local pos = pickup.item:GetPosition()

			pos.z = pickup.z_offset + pickup.up_down_curve:GetValue(time() - pickup.added) * pickup.multiplier

			pickup.item:SetPosition(pos)
		end
	end
end

return API