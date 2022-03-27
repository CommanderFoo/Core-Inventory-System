local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local MESH = script:GetCustomProperty("Mesh"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()
local can_pickup = false

local function on_trigger_entered(trigger, other)
	local player = other:IsA("Player") and other or (other:IsA("Vehicle") and other.driver or nil)

	if(player ~= nil and player == LOCAL_PLAYER) then
		can_pickup = true
	end
end

TRIGGER.beginOverlapEvent:Connect(on_trigger_entered)

function Tick(dt)
	if(can_pickup) then
		MESH:Follow(LOCAL_PLAYER, 1000)
	end
end