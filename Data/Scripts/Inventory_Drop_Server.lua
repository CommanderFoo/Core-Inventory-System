---@type Inventory_Drop
local Inventory_Drop = require(script:GetCustomProperty("Inventory_Drop"))

---@type Folder
local DROPS = script:GetCustomProperty("Drops"):WaitForObject()

Inventory_Drop.set_container(DROPS)