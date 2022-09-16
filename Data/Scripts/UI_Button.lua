---@class UI_Button
local UI_Button = {

	active = nil

}

---Turns on visibility for A and off for b and c.
---@param a CoreObject
---@param b CoreObject
---@param c CoreObject
---@param d CoreObject
function UI_Button.flip_visbility(a, b, c, d)
	if(Object.IsValid(a)) then
		a.visibility = Visibility.FORCE_ON
	end

	if(Object.IsValid(b)) then
		b.visibility = Visibility.FORCE_OFF
	end

	if(Object.IsValid(c)) then
		c.visibility = Visibility.FORCE_OFF
	end

	if(Object.IsValid(d)) then
		d.visibility = Visibility.FORCE_OFF
	end
end

---Set the color of item.
---@param item UIText
---@param color Color
function UI_Button.set_color(item, color)
	item:SetColor(color)
end

---Sets up the events for the button. Returns back a table of properties and methods.
---@param s CoreObject
---@param opts table Table of callbacks.
---@return table
function UI_Button.setup(s, opts)
	local root = s.parent
	local evts = {}
	local button_text = root:GetCustomProperty("ButtonText"):WaitForObject()
	local obj = {

		opts = opts,
		width = root.width,
		height = root.height,
		is_disabled = false,
		is_hovered = false,
		is_pressed = false,
		user_opts = opts,
		evts = evts,
		button = root,
		expand = root:GetCustomProperty("Expand"),
		button_text = root:GetCustomProperty("ButtonText"):WaitForObject(),
		button_image = root:GetCustomProperty("ButtonImage"):WaitForObject(),
		pressed_image = root:GetCustomProperty("PressedImage"):WaitForObject(),
		hovered_image = root:GetCustomProperty("HoveredImage"):WaitForObject(),
		disabled_image = root:GetCustomProperty("DisabledImage"):WaitForObject(),
		button_text_color = button_text:GetColor(),
		button_pressed_text_color = root:GetCustomProperty("PressedTextColor"),
		button_hovered_text_color = root:GetCustomProperty("HoveredTextColor"),
		button_disabled_text_color = root:GetCustomProperty("DisabledTextColor")

	}

	evts["pressed"] = root.pressedEvent:Connect(function(button)
		if(obj.is_disabled or obj.opts.active) then
			return
		end

		obj.is_pressed = true

		UI_Button.flip_visbility(obj.pressed_image, obj.button_image, obj.hovered_image, obj.disabled_image)
		UI_Button.set_color(button_text, obj.button_pressed_text_color)

		Events.Broadcast("UI.Button.Pressed." .. button.id, obj)

		if(opts.pressed ~= nil) then
			opts.pressed(obj)
		end
	end)

	evts["released"] = root.releasedEvent:Connect(function(button)
		if(obj.is_disabled or obj.opts.active) then
			return
		end

		obj.is_pressed = false

		if(obj.is_hovered) then
			UI_Button.flip_visbility(obj.hovered_image, obj.button_image, obj.pressed_image, obj.disabled_image)
			UI_Button.set_color(button_text, obj.button_hovered_text_color)
		else
			UI_Button.flip_visbility(obj.button_image, obj.hovered_image, obj.pressed_image, obj.disabled_image)
			UI_Button.set_color(button_text, obj.button_text_color)
		end

		Events.Broadcast("UI.Button.Released." .. button.id, obj)
		
		if(opts.released ~= nil) then
			opts.released(obj)
		end
	end)

	evts["hovered"] = root.hoveredEvent:Connect(function(button)
		if(obj.is_disabled or obj.opts.active) then
			return
		end

		obj.is_hovered = true

		Events.Broadcast("UI.Button.Hovered." .. button.id, obj)

		if(opts.hovered ~= nil) then
			opts.hovered(obj)
		end

		if(obj.is_pressed) then
			return
		end

		UI_Button.flip_visbility(obj.hovered_image, obj.button_image, obj.pressed_image, obj.disabled_image)
		UI_Button.set_color(button_text, obj.button_hovered_text_color)
	end)

	evts["unhovered"] = root.unhoveredEvent:Connect(function(button)
		if(obj.is_disabled or obj.opts.active) then
			return
		end

		obj.is_hovered = false

		if(opts.unhovered ~= nil) then
			opts.unhovered(obj)
		end
		
		Events.Broadcast("UI.Button.Unhovered." .. button.id, obj)

		if(obj.is_pressed) then
			return
		end

		UI_Button.flip_visbility(obj.button_image, obj.hovered_image, obj.pressed_image, obj.disabled_image)
		UI_Button.set_color(button_text, obj.button_text_color)
	end)

	root.destroyEvent:Connect(function()
		for key, listener in pairs(evts) do
			if(listener.isConnected) then
				listener:Disconnect()
			end
		end

		if(obj.expand) then
			UI_Button.counter = math.max(0, UI_Button.counter - 1)
		end

		if(opts.destroyed ~= nil) then
			opts.destroyed(obj)
		end

		evts = nil
		obj = nil
	end)

	obj.disable = UI_Button.disable(obj)
	obj.enable = UI_Button.enable(obj)
	obj.destroy = function()
		root:Destroy()
	end

	return obj
end

---Disables the button.
---@param opts table
---@return function
function UI_Button.disable(opts)
	return function()
		if(opts.is_disabled) then
			return
		end

		opts.is_disabled = true
		UI_Button.flip_visbility(opts.disabled_image, opts.hovered_image, opts.pressed_image, opts.button_image)
		UI_Button.set_color(opts.button_text, opts.button_disabled_text_color)

		if(opts.user_opts.disabled ~= nil) then
			opts.user_opts.disabled(opts)
		end

		Events.Broadcast("UI.Button.Disabled." .. opts.button.id, opts)
	end
end

---Enables the button.
---@param opts table
---@return function
function UI_Button.enable(opts)
	return function()
		if(not opts.is_disabled) then
			return
		end

		opts.is_disabled = false
		UI_Button.flip_visbility(opts.button_image, opts.hovered_image, opts.pressed_image, opts.disabled_image)
		UI_Button.set_color(opts.button_text, opts.button_text_color)

		if(opts.user_opts.enabled ~= nil) then
			opts.user_opts.enabled(opts)
		end

		Events.Broadcast("UI.Button.Enabled." .. opts.button.id, opts)
	end
end

function UI_Button.is_active(button)
	if(button == UI_Button.active) then
		return true
	end

	return false
end

function UI_Button.toggle_active(button)
	if(UI_Button.active == button) then
		return
	end

	if(UI_Button.active ~= nil) then
		Events.Broadcast("UI.Button.Reset." .. UI_Button.active.id)
	end

	UI_Button.active = button
end

return UI_Button