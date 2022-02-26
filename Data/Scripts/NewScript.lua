local panel = script.parent

function Tick()
	local mouse_pos = UI.GetCursorPosition()
	local pos = panel:GetAbsolutePosition()

	local x_start = 0
	local x_end = 0
	local y_start = 0
	local y_end = 0
	local anchor = panel.anchor

	if(anchor == UIPivot.TOP_LEFT) then
		
	elseif(anchor == UIPivot.TOP_CENTER) then

	elseif(anchor == UIPivot.TOP_RIGHT) then

	elseif(anchor == UIPivot.MIDDLE_LEFT) then

	elseif(anchor == UIPivot.MIDDLE_CENTER) then
	elseif(anchor == UIPivot.MIDDLE_RIGHT) then
	elseif(anchor == UIPivot.BOTTOM_LEFT) then
	elseif(anchor == UIPivot.BOTTOM_CENTER) then
	elseif(anchor == UIPivot.BOTTOM_RIGHT) then

	end

	local inside = false

	if(mouse_pos.x > x_start and mouse_pos.x < x_end and mouse_pos.y > y_start and mouse_pos.y < y_end) then
		inside = true
	end

	print(string.format("Mouse X: %s, Start X: %s, End X: %s, Mouse Y: %s, Start Y: %s, End Y: %s, Inside: %s", mouse_pos.x, x_start, x_end, mouse_pos.y, y_start, y_end, inside))

end