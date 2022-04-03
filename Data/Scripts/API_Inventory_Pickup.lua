local API_INVENTORY = require(script:GetCustomProperty("API_Inventory"))
local Ticker = require(script:GetCustomProperty("Ticker"))
local INVENTORY_OBJECT_OUTLINE = script:GetCustomProperty("InventoryObjectOutline")

local OUTLINE = World.SpawnAsset(INVENTORY_OBJECT_OUTLINE, { networkContext = NetworkContextType.CLIENT_CONTEXT })

local API = {

	pickups = {},
	ticker = nil,
	count = 0,
	in_triggers = 0,
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
		OUTLINE:SetSmartProperty("Enabled", true)
		OUTLINE:SetSmartProperty("Object To Outline", API.pickups[trigger.id].item)
		API.in_triggers = API.in_triggers + 1
	end
end

function API.on_trigger_exit(trigger, other)
	if(API.is_player(other)) then
		OUTLINE:SetSmartProperty("Enabled", false)
		API.in_triggers = API.in_triggers - 1
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

-- Player pos - camera offset
function API.outline_item_in_view()
	local start_pos = Vector3.ZERO
	local end_pos = start_pos

	--local hit = World.Spherecast(start_pos, end_pos, 50)
end

function API.tick(dt)
	for id, pickup in pairs(API.pickups) do
		local pos = pickup.item:GetPosition()

		pos.z = pickup.z_offset + pickup.up_down_curve:GetValue(time() - pickup.added) * pickup.multiplier

		pickup.item:SetPosition(pos)
	end

	if(API.in_triggers > 0) then
		API.outline_item_in_view()
	end
end

return API