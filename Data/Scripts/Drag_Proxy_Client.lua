local API_Inventory = require(script:GetCustomProperty("API_Inventory"))

API_Inventory.set_drag_proxy(script:GetCustomProperty("Proxy"):WaitForObject())

function Tick()
	if(API_Inventory.ACTIVE.has_item) then
		local mouse_pos = Input.GetCursorPosition()

		API_Inventory.PROXY:SetAbsolutePosition(Vector2.New(mouse_pos.x, mouse_pos.y))
	end

	API_Inventory.tick()
end