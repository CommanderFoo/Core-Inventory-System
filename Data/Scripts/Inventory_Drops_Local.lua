---@type Inventory_Drop
local Inventory_Drop = require(script:GetCustomProperty("Inventory_Drop"))

local DROPS_INVENTORY = script:GetCustomProperty("DropsInventory"):WaitForObject()

Inventory_Drop.set_container(script.parent)
Inventory_Drop.set_inventory(DROPS_INVENTORY)