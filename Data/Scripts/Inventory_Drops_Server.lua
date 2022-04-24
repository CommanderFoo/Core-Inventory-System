local API_INVENTORY_DROPS = require(script:GetCustomProperty("API_Inventory_Drops"))
local DROPS_INVENTORY = script:GetCustomProperty("DropsInventory"):WaitForObject()

API_INVENTORY_DROPS.set_inventory(DROPS_INVENTORY)