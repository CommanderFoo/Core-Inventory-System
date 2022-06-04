---@type Audio
local PICKUP_AUDIO = script:GetCustomProperty("PickupAudio"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

Events.Connect("Audio.Pickup", function(player)
	if(player == LOCAL_PLAYER) then
		PICKUP_AUDIO:Play()
	end
end)