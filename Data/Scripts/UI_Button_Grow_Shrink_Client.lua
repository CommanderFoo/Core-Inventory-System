local TWEEN = script:GetCustomProperty("Tween")

if(not TWEEN) then
	warn("Tween library is needed.")
	return
end

---@type Tween
local Tween = require(TWEEN)

---@type UI_Button
local UI_Button = require(script:GetCustomProperty("UI_Button"))

local BUTTON = script.parent
local GROW_AMOUNT = BUTTON:GetCustomProperty("GrowAmount")

local BUTTON_IMAGE = BUTTON:GetCustomProperty("ButtonImage"):WaitForObject()
local PRESSED_IMAGE = BUTTON:GetCustomProperty("PressedImage"):WaitForObject()
local BUTTON_TEXT = BUTTON:GetCustomProperty("ButtonText"):WaitForObject()
local PRESSED_TEXT_COLOR = BUTTON:GetCustomProperty("PressedTextColor")

local tween = nil
local button_width = BUTTON.width
local button_height = BUTTON.height
local button_color = BUTTON_TEXT:GetColor()

local function shrink()
	tween = nil

	tween = Tween:new(.2, { w = BUTTON.width, h = BUTTON.height }, { w = button_width, h = button_height })
	tween:on_change(function(c)
		BUTTON.width = math.floor(c.w)
		BUTTON.height = math.floor(c.h)
	end)

	tween:on_complete(function()
		tween = nil
	end)
end

local opts = {

	active = false,

	hovered = function(obj)
		tween = Tween:new(.8, { w = obj.button.width, h = obj.button.height }, { w = button_width + GROW_AMOUNT, h = button_height + GROW_AMOUNT })
		tween:on_change(function(c)
			BUTTON.width = math.floor(c.w)
			BUTTON.height = math.floor(c.h)
		end)

		tween:on_complete(function()
			tween = nil
		end)

		tween:set_easing(Tween.Easings.Out_Elastic)
	end,

	unhovered = function(obj)
		if(UI_Button.is_active(BUTTON)) then
			return
		end

		shrink()
	end

}

UI_Button.setup(script, opts)

function Tick(dt)
	if(tween ~= nil) then
		tween:tween(dt)
	end
end

Events.Connect("UI.Button.Active." .. BUTTON.id, function(button)
	UI_Button.toggle_active(button)
	BUTTON_IMAGE.visibility = Visibility.FORCE_OFF
	PRESSED_IMAGE.visibility = Visibility.FORCE_ON
	BUTTON_TEXT:SetColor(PRESSED_TEXT_COLOR)
	BUTTON.width = button_width + GROW_AMOUNT
	BUTTON.height = button_height + GROW_AMOUNT
	opts.active = true
end)

Events.Connect("UI.Button.Reset." .. BUTTON.id, function()
	BUTTON_IMAGE.visibility= Visibility.FORCE_ON
	PRESSED_IMAGE.visibility = Visibility.FORCE_OFF
	BUTTON_TEXT:SetColor(button_color)
	opts.active = false
	
	shrink()
end)