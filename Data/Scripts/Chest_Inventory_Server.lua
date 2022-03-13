local ROOT = script:GetCustomProperty("Root"):WaitForObject()

---@type API_Inventory
local API_Inventory = require(ROOT:GetCustomProperty("API_Inventory"))

API_Inventory.create({

	inventory = script:GetCustomProperty("Inventory"):WaitForObject(),
	slot_count = ROOT:GetCustomProperty("SlotCount"),
	storage_key = ROOT:GetCustomProperty("StorageKey"),
	name = ROOT:GetCustomProperty("Name"),
	type = API_Inventory.Type.CHEST_INVENTORY

})