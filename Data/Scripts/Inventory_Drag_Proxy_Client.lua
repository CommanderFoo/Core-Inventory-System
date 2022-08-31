local Inventory = require(script:GetCustomProperty("Inventory"))

Inventory.set_drag_proxy(script:GetCustomProperty("Proxy"):WaitForObject())

function Tick()
	if(Inventory.ACTIVE.has_item) then
		local mouse_pos = Input.GetCursorPosition()

		Inventory.PROXY:SetAbsolutePosition(Vector2.New(mouse_pos.x, mouse_pos.y))
	end

	Inventory.tick()
end