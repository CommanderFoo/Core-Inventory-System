local Inventory = require(script:GetCustomProperty("Inventory"))

local TOOLTIP = script:GetCustomProperty("Tooltip"):WaitForObject()
local XOFFSET = script.parent:GetCustomProperty("XOffset")
local YOFFSET = script.parent:GetCustomProperty("YOffset")

Inventory.set_tooltip(TOOLTIP)

local width = TOOLTIP.width
local height = TOOLTIP.height
local offset_x = width / 2 + XOFFSET

function Tick()
	if(Inventory.is_tooltip_showing()) then
		local mouse_pos = Input.GetCursorPosition()
		local screen_size = UI.GetScreenSize()
		local pos = Vector2.New(mouse_pos.x, mouse_pos.y)
		local x_off = offset_x

		if(mouse_pos.x > (screen_size.x - (offset_x + (width / 2)))) then
			x_off = -offset_x
		end

		pos.x = pos.x + x_off

		TOOLTIP:SetAbsolutePosition(pos)
	end
end