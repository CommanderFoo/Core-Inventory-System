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
	outline_color = ROOT:GetCustomProperty("OutlineColor"),
	outline = script:GetCustomProperty("Outline"):WaitForObject()

})