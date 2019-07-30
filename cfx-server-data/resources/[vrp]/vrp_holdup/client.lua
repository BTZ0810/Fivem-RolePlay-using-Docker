local holdingup = false
local store = ""
local secondsRemaining = 0

function holdup_DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function holdup_drawTxt(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    if(outline)then
	    SetTextOutline()
	end
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end

local stores = cfg.holdups

RegisterNetEvent('es_holdup:currentlyrobbing') -- substitua o evento existente
AddEventHandler('es_holdup:currentlyrobbing', function(robb)
    holdingup = true
    store = robb
    secondsRemaining = cfg.seconds
    local pos = stores[store].position
    TriggerServerEvent('robbaryInProgressPos', pos.x, pos.y, pos.z)
end)

RegisterNetEvent('es_holdup:toofarlocal')
AddEventHandler('es_holdup:toofarlocal', function(robb)
	holdingup = false
	TriggerEvent('chatMessage', 'GERENTE', { 255, 69, 0 }, "Pode ir embora, eu não ví seu rosto, não vou contar a polícia.")
	robbingName = ""
	secondsRemaining = 0
	incircle = false
end)

RegisterNetEvent('es_holdup:playerdiedlocal')
AddEventHandler('es_holdup:playerdiedlocal', function(robb)
	holdingup = false
	TriggerEvent('chatMessage', 'AVISO', {255, 0, 0}, "Você morreu antes de abrir o cofre, o roubo foi cancelado.")
	robbingName = ""
	secondsRemaining = 0
	incircle = false
end)

RegisterNetEvent('es_holdup:robberycomplete')
AddEventHandler('es_holdup:robberycomplete', function(reward)
	holdingup = false
	TriggerEvent('chatMessage', 'GERENTE', { 255, 69, 0 }, "Aqui está o dinheiro, tem ^2R$ " .. reward .. "^0 neste saco.")
	store = ""
	secondsRemaining = 0
	incircle = false
end)

Citizen.CreateThread(function()
	while true do
		if holdingup then
			Citizen.Wait(1000)
			if(secondsRemaining > 0)then
				secondsRemaining = secondsRemaining - 1
			end
		end

		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
	while true do
		local pos = GetEntityCoords(GetPlayerPed(-1), true)
		for k,v in pairs(stores)do
			local pos2 = v.position

			if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 15.0)then
				if IsPlayerWantedLevelGreater(PlayerId(),0) or ArePlayerFlashingStarsAboutToDrop(PlayerId()) then
					local wanted = GetPlayerWantedLevel(PlayerId())
					Citizen.Wait(5000)
					SetPlayerWantedLevel(PlayerId(), wanted, 0)
					SetPlayerWantedLevelNow(PlayerId(), 0)
				end
			end
		end
		Citizen.Wait(0)
	end
end)

if cfg.blips then -- blip settings
  Citizen.CreateThread(function()
	for k,v in pairs(stores)do
		local ve = v.position

		local blip = AddBlipForCoord(ve.x, ve.y, ve.z)
		SetBlipSprite(blip, 278)
		SetBlipScale(blip, 0.8)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString("Assalto")
		EndTextCommandSetBlipName(blip)
	end
  end)
end
incircle = false

Citizen.CreateThread(function()
	while true do
		local pos = GetEntityCoords(GetPlayerPed(-1), true)

		for k,v in pairs(stores)do
			local pos2 = v.position

			if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 15.0)then
				if not holdingup then
					DrawMarker(1, v.position.x, v.position.y, v.position.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, 1555, 0, 0,255, 0, 0, 0,0)
					
					if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 2.0)then
						if (incircle == false) then
							holdup_DisplayHelpText("Pressione ~INPUT_CONTEXT~ para iniciar o roubo no ~b~" .. v.nameofstore .. "~w~, os porco serão avisados!")
						end
						incircle = true
						if(IsControlJustReleased(1, 51))then
							TriggerServerEvent('es_holdup:rob', k)
						end
					elseif(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) > 2.0)then
						incircle = false
					end
				end
			end
		end

		if holdingup then
		    SetPlayerWantedLevel(PlayerId(), 2, 0)
            SetPlayerWantedLevelNow(PlayerId(), 0)

			holdup_drawTxt(0.66, 1.44, 1.0,1.0,0.4, "Roubando a loja, faltam ~r~" .. secondsRemaining .. "~w~ segundos para abrir o cofre", 255, 255, 255, 255)
			
			local pos2 = stores[store].position

			local ped = GetPlayerPed(-1)
			
            if IsEntityDead(ped) then
			TriggerServerEvent('es_holdup:playerdied', store)
			elseif(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) > 15)then
				TriggerServerEvent('es_holdup:toofar', store)
			end
		end

		Citizen.Wait(0)
	end
end)