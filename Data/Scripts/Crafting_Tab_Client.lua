---@type UI_Tab
local UI_Tab = require(script:GetCustomProperty("UI_Tab"))

---@type UIPanel
local CRAFTING_PANEL = script:GetCustomProperty("CraftingPanel"):WaitForObject()

---@type UIButton
local CRAFTING_TAB_BUTTON = script:GetCustomProperty("CraftingTabButton"):WaitForObject()

UI_Tab.add({
	
	key = "Crafting",
	button = CRAFTING_TAB_BUTTON,
	panel = CRAFTING_PANEL

})