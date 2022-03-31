local API_INVENTORY = require(script:GetCustomProperty("API_Inventory"))
local Ticker = require(script:GetCustomProperty("Ticker"))

local API = {

	pickups = {},
	ticker = nil,
	count = 0

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
	API.pickups[opts.root.id] = opts
	API.count = API.count + 1

	if(opts.rotate) then
		opts.item:RotateContinuous(Vector3.New(0, 0, .8), true)
	end

	opts.root.destroyEvent:Connect(API.on_pickup_destroyed)
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

function API.tick(dt)
	for id, pickup in pairs(API.pickups) do
		local pos = pickup.item:GetPosition()

		pos.z = pickup.z_offset + pickup.up_down_curve:GetValue(time() - pickup.added) * pickup.multiplier

		pickup.item:SetPosition(pos)
	end
end

return API