local ROOT = script:GetCustomProperty("Root"):WaitForObject()

---@type Inventory
local Inventory = require(ROOT:GetCustomProperty("Inventory"))

---@type SmartObject
local OUTLINE = script:GetCustomProperty("Outline"):WaitForObject()

---@type Trigger
local OUTLINE_TRIGGER = script:GetCustomProperty("OutlineTrigger"):WaitForObject()

---@type Folder
local ITEM = script:GetCustomProperty("Item"):WaitForObject()

---@type Trigger
local PICKUP_TRIGGER = script:GetCustomProperty("PickupTrigger"):WaitForObject()

local UP_DOWN_CURVE = ROOT:GetCustomProperty("UpDownCurve")

local MULTIPLIER = ROOT:GetCustomProperty("Multiplier")

local ANIMATE_UP_DOWN = ROOT:GetCustomProperty("AnimateUpDown")

local FOLLOW_SPEED = ROOT:GetCustomProperty("FollowSpeed")

local ROTATE = ROOT:GetCustomProperty("Rotate")

local LOCAL_PLAYER = Game.GetLocalPlayer()

local evts = {}
local can_pickup = false
local speed = 0
local z_offset = ITEM:GetPosition().z
local dropped = time()
local has_picked_up = false

if(ROTATE) then
	ITEM:RotateContinuous(Rotation.New(0, 0, 15))
end

local function on_outline_trigger_exit(trigger, other)
	if(has_picked_up) then
		return
	end

	if(other == LOCAL_PLAYER and Object.IsValid(OUTLINE)) then
		OUTLINE:SetSmartProperty("Enabled", false)
	end
end

local function on_outline_trigger_enter(trigger, other)
	if(has_picked_up) then
		return
	end

	if(other == LOCAL_PLAYER and Object.IsValid(OUTLINE)) then
		OUTLINE:SetSmartProperty("Enabled", true)
		OUTLINE:SetSmartProperty("Object To Outline", ITEM)
	end
end

local function on_pickup_trigger_enter(trigger, other)
	if(has_picked_up) then
		return
	end

	if(LOCAL_PLAYER == other and Inventory.can_pickup_item(other, ROOT.name)) then
		can_pickup = true
		speed = 100

		Task.Wait(.2)
		has_picked_up = true
		
		Events.Broadcast("Audio.Pickup", other)

		if(Object.IsValid(ITEM)) then
			ITEM.visibility = Visibility.FORCE_OFF
			OUTLINE:SetSmartProperty("Enabled", false)
		end
	end
end

evts[#evts + 1] = OUTLINE_TRIGGER.beginOverlapEvent:Connect(on_outline_trigger_enter)
evts[#evts + 1] = OUTLINE_TRIGGER.endOverlapEvent:Connect(on_outline_trigger_exit)
evts[#evts + 1] = PICKUP_TRIGGER.beginOverlapEvent:Connect(on_pickup_trigger_enter)

script.destroyEvent:Connect(function()
	for index, event in ipairs(evts) do
		event:Disconnect()
	end

	evts = nil
end)

function Tick(dt)
	if(has_picked_up) then
		return
	end

	if(Object.IsValid(PICKUP_TRIGGER) and can_pickup) then
		local overlapping = PICKUP_TRIGGER:GetOverlappingObjects()

		for index, obj in ipairs(overlapping) do
			if(obj == LOCAL_PLAYER) then
				ITEM:Follow(obj, speed)
				speed = speed + (dt * FOLLOW_SPEED)
			end
		end
	elseif(ANIMATE_UP_DOWN) then
		local pos = ITEM:GetPosition()

		pos.z = z_offset + UP_DOWN_CURVE:GetValue(time() - dropped) * MULTIPLIER

		ITEM:SetPosition(pos)
	end
end