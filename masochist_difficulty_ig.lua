local function onhitPerish(event)
	if (event:GetName() == 'player_hurt' ) then
		local localPlayer = entities.GetLocalPlayer()
		local victim = entities.GetByUserID(event:GetInt("userid"))
		if (localPlayer:GetIndex() == victim:GetIndex()) then
			client.Command('kill', true)
			return
		end
	end
return
end

callbacks.Register("FireGameEvent", "kys", onhitPerish)