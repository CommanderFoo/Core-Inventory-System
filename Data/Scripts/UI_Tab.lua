---@class UI_Tab
local UI_Tab = {

	visible = false,

	buttons = {},
	panels = {},

	LEFT = 1,
	RIGHT = 2,

	offset = 0,

	last_active = nil,
	last_active_panel = nil

}

function UI_Tab.set(container, overlay, header, padding, body)
	UI_Tab.container = container
	UI_Tab.overlay = overlay
	UI_Tab.header = header
	UI_Tab.padding = padding or 0
	UI_Tab.body = body
end

function UI_Tab.add(options)
	options.position = options.position or UI_Tab.LEFT
	options.button.anchor = UIPivot.MIDDLE_CENTER

	if(options.position == UI_Tab.LEFT) then
		options.button.dock = UIPivot.MIDDLE_LEFT
	else
		options.button.dock = UIPivot.MIDDLE_RIGHT
	end

	options.button.parent = UI_Tab.header
	options.button.visibility = Visibility.INHERIT
	options.button.x = UI_Tab.offset

	local tbl = {
		
		button = options.button,
		panel = options.panel,
		width = options.button.width,
		height = options.button.height,
		active = options.active,
		inactive = options.inactive,
		default = options.default

	}

	UI_Tab.buttons[options.key] = tbl

	if(options.panel ~= nil) then
		UI_Tab.panels[options.key] = options.panel
		options.panel.parent = UI_Tab.body
	end

	UI_Tab.offset = UI_Tab.offset + options.button.width + UI_Tab.padding
	
	Events.Connect("UI.Button.Pressed." .. options.button.id, function()
		UI_Tab.toggle_active(UI_Tab.buttons[options.key])
	end)

	if(UI_Tab.last_active == nil and options.default) then
		UI_Tab.last_active = tbl
		UI_Tab.last_active_panel = tbl.panel
	end
end

function UI_Tab.toggle_active(obj)
	if(obj.button == UI_Tab.last_active.button) then
		return
	end

	if(UI_Tab.last_active.active ~= nil) then
		UI_Tab.last_active.inactive(obj)
	end

	if(obj.active ~= nil) then
		obj.active(obj)
	end

	local pressed_image = UI_Tab.last_active.button:GetCustomProperty("PressedImage"):WaitForObject()
	local button_image = UI_Tab.last_active.button:GetCustomProperty("ButtonImage"):WaitForObject()

	pressed_image.visibility = Visibility.FORCE_OFF
	button_image.visibility = Visibility.FORCE_ON

	if(UI_Tab.last_active_panel ~= nil) then
		UI_Tab.last_active_panel.visibility = Visibility.FORCE_OFF
	end

	Events.Broadcast("UI.Button.Active." .. obj.button.id, obj.button)

	local pressed_image = obj.button:GetCustomProperty("PressedImage"):WaitForObject()
	local button_image = obj.button:GetCustomProperty("ButtonImage"):WaitForObject()

	pressed_image.visibility = Visibility.FORCE_ON
	button_image.visibility = Visibility.FORCE_OFF

	if(obj.panel ~= nil) then
		obj.panel.visibility = Visibility.INHERIT
	end

	UI_Tab.last_active = obj

	if(obj.panel ~= nil) then
		UI_Tab.last_active_panel = obj.panel
	end
end

function UI_Tab.get(key)
	if(UI_Tab.buttons[key] ~= nil and UI_Tab.panels[key] ~= nil) then
		return UI_Tab.buttons[key].button, UI_Tab.panels[key]
	end

	return nil, nil
end

function UI_Tab.get_button(key)
	if(UI_Tab.buttons[key] ~= nil) then
		return UI_Tab.buttons[key].button
	end

	return nil
end

function UI_Tab.get_panel(key)
	if(UI_Tab.panels[key] ~= nil) then
		return UI_Tab.panels[key]
	end

	return nil
end

function UI_Tab.has_button(key)
	if(UI_Tab.buttons[key] ~= nil) then
		return true
	end

	return false
end

function UI_Tab.has_panel(key)
	if(UI_Tab.panels[key] ~= nil) then
		return true
	end

	return false
end

function UI_Tab.show()
	if(UI_Tab.last_active.default) then
		UI_Tab.last_active.default = false

		if(UI_Tab.last_active.panel ~= nil) then
			UI_Tab.last_active.panel.visibility = Visibility.INHERIT
		end

		if(UI_Tab.last_active.button ~= nil) then
			Events.Broadcast("UI.Button.Active." .. UI_Tab.last_active.button.id, UI_Tab.last_active.button)
		end
	end

	UI_Tab.container.visibility = Visibility.INHERIT
	UI_Tab.visible = true
end

function UI_Tab.hide()
	UI_Tab.container.visibility = Visibility.FORCE_OFF
	UI_Tab.visible = false
end

function UI_Tab.on_action_pressed(player, action, value)
	if(action == "Menu") then
		if(UI_Tab.visible) then
			UI_Tab.hide()

			UI.SetCanCursorInteractWithUI(false)
			UI.SetCursorVisible(false)


			Events.Broadcast("UI.Tab.Hidden")
		else
			UI_Tab.show()

			UI.SetCanCursorInteractWithUI(true)
			UI.SetCursorVisible(true)

			Events.Broadcast("UI.Tab.Visible")
		end
	end
end

return UI_Tab