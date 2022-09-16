---@type Folder
local ROOT = script:GetCustomProperty("Root"):WaitForObject()

---@type UI_Tab
local UI_Tab = require(script:GetCustomProperty("UI_Tab"))

---@type UIContainer
local CONTAINER = script:GetCustomProperty("Container"):WaitForObject()

---@type UIImage
local OVERLAY = script:GetCustomProperty("Overlay"):WaitForObject()

---@type UIPanel
local HEADER_TABS = script:GetCustomProperty("HeaderTabs"):WaitForObject()

local BODY = script:GetCustomProperty("Body"):WaitForObject()

local PADDING = ROOT:GetCustomProperty("Padding")

UI_Tab.set(CONTAINER, OVERLAY, HEADER_TABS, PADDING, BODY)

Input.actionPressedEvent:Connect(UI_Tab.on_action_pressed)