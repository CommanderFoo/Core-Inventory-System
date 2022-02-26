local API_Inventory = require(script:GetCustomProperty("API_Inventory"))

API_Inventory.set_drag_proxy(script:GetCustomProperty("Proxy"):WaitForObject())

function Tick()
	if(API_Inventory.ACTIVE.has_item) then
		local mouse_pos = UI.GetCursorPosition()

		API_Inventory.PROXY:SetAbsolutePosition(Vector2.New(mouse_pos.x, mouse_pos.y))

		local inv_data = API_Inventory.get_all_data()
		local can_drop = false

		for index, data in ipairs(inv_data) do
			local pos = data.panel:GetAbsolutePosition()
			local x_start_pos = pos.x + data.x_start
			local x_end_pos = pos.x + data.x_end
			local y_start_pos = pos.y + data.y_start
			local y_end_pos = pos.y + data.y_end

			if(mouse_pos.x > x_start_pos and mouse_pos.y > y_start_pos and mouse_pos.x < x_end_pos and mouse_pos.y < y_end_pos) then
				can_drop = true
			end
		end

		print(#inv_data, can_drop, time())
	end
end