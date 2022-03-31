local API_INVENTORY_PICKUP = require(script:GetCustomProperty("API_Inventory_Pickup"))
local ROOT = script:GetCustomProperty("Root"):WaitForObject()

API_INVENTORY_PICKUP.register({

	root = ROOT,
	trigger = ROOT:GetCustomProperty("Trigger"):WaitForObject(),
	item = ROOT:GetCustomProperty("Item"):WaitForObject(),
	up_down_curve = ROOT:GetCustomProperty("UpDownCurve"),
	rotate = ROOT:GetCustomProperty("Rotate"),
	animate_up_down = ROOT:GetCustomProperty("AnimateUpDown"),
	multiplier = ROOT:GetCustomProperty("multiplier"),
	outline_color = ROOT:GetCustomProperty("OutlineColor")

})


-- local API_INVENTORY = require(script:GetCustomProperty("API_Inventory"))

-- local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
-- local ITEM = script:GetCustomProperty("Item"):WaitForObject()

-- local LOCAL_PLAYER = Game.GetLocalPlayer()
-- local can_pickup = false
-- local base_speed = 400

-- local function on_trigger_entered(trigger, other)
-- 	local player = other:IsA("Player") and other or (other:IsA("Vehicle") and other.driver or nil)

-- 	if(player ~= nil and player == LOCAL_PLAYER) then
-- 		local item_obj = script.parent:FindAncestorByType("ItemObject")

-- 		if(Object.IsValid(item_obj) and API_INVENTORY.can_pickup_item(item_obj, LOCAL_PLAYER)) then
-- 			can_pickup = true
-- 		end
-- 	end
-- end

-- TRIGGER.beginOverlapEvent:Connect(on_trigger_entered)

-- function Tick(dt)
-- 	if(can_pickup) then
-- 		ITEM:Follow(LOCAL_PLAYER, base_speed)
-- 		base_speed = base_speed + (dt * 500)
-- 	end
-- end