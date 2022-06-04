---@type Audio
local PICKUP_AUDIO = script:GetCustomProperty("PickupAudio"):WaitForObject()

Events.Connect("Audio.Pickup", function()
	print(1)
	PICKUP_AUDIO:Play()
end)