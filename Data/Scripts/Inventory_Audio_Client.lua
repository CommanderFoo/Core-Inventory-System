---@type Audio
local PICKUP_AUDIO = script:GetCustomProperty("PickupAudio"):WaitForObject()

Events.Connect("Audio.Pickup", function()
	PICKUP_AUDIO:Play()
end)