local voice = {default = 5.0, shout = 12.0, whisper = 1.0, current = 1, level = "Ativada"}

function drawLevel(r, g, b, a)
  SetTextFont(4)
  SetTextProportional(1)
  SetTextScale(0.5, 0.5)
  SetTextColour(r, g, b, a)
  SetTextDropShadow(0, 0, 0, 0, 255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString("~b~Voz:~s~ " .. voice.level)
  local playerPed = GetPlayerPed(-1)
  local playerVeh = GetVehiclePedIsIn(playerPed, false)
	if IsPedInAnyVehicle(playerPed,true) then
		DrawText(0.880, 0.92)
	else 
		DrawText(0.880, 0.92)
	end
  
end



Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    if IsControlJustPressed(1, 74) and IsControlPressed(1, 21) then
      voice.current = (voice.current + 1) % 3
      if voice.current == 1 then
        NetworkSetTalkerProximity(voice.default)
        voice.level = "Ativada"
      elseif voice.current == 2 then
        NetworkSetTalkerProximity(voice.shout)
        voice.level = "Ativada"
      elseif voice.current == 3 then
        NetworkSetTalkerProximity(voice.whisper)
        voice.level = "Ativada"
      end
    end
    if voice.current == 1 then
      voice.level = "Ativada"
    elseif voice.current == 2 then
      voice.level = "Ativada"
    elseif voice.current == 3 then
      voice.level = "Ativada"
    end
    if NetworkIsPlayerTalking(PlayerId()) then
      drawLevel(0, 0, 255, 255)
    elseif not NetworkIsPlayerTalking(PlayerId()) then
      drawLevel(185, 185, 185, 255)
    end
  end
end)

