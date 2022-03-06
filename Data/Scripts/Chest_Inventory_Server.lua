local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local INVENTORY_CONTAINER = script:GetCustomProperty("InventoryContainer"):WaitForObject()

---@type API_Inventory
local API_Inventory = require(ROOT:GetCustomProperty("API_Inventory"))

API_Inventory.create({

	slot_count = ROOT:GetCustomProperty("SlotCount"),
	storage_key = ROOT:GetCustomProperty("StorageKey"),
	name = ROOT:GetCustomProperty("Name"),
	container = INVENTORY_CONTAINER,
	type = API_Inventory.Type.CHEST_INVENTORY

})