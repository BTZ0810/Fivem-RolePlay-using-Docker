
Key = 38 -- E

vRP = Proxy.getInterface("vRP")

local blips = {
	{title="Concessionária de Veículos", colour=20, id=500, x=-31.457941055298, y=-1114.8493652344, z=26.422336578369},
}


Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 5)
      SetBlipScale(info.blip, 1.2)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)

function DrawSpecialText(m_text, showtime)
	SetTextEntry_2("STRING")
	AddTextComponentString(m_text)
	DrawSubtitleTimed(showtime, 1)
end

-- Warner Bros Studios

Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
				if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -31.457941055298,-1114.8493652344,26.422336578369, true ) < 5 then
				DrawSpecialText("Pressione [~g~E~s~] para se tornar sócio da loja de carros por R$ 20.000.000,00!")
				if(IsControlJustPressed(1, Key)) then
				TriggerServerEvent('business:checkmoney')
			end
		end
	end
end)

Citizen.CreateThread(function ()
	while true do
	local user_id = vRP.getUserId({source})
		Citizen.Wait(1800000) -- Every 30 minutes you get paid your business money.
		TriggerServerEvent('business:salary')
		vRP.notify({"~g~Se possui ações, os seus lucros foram depositados!"})
	end
end)

RegisterNetEvent('business:success')
AddEventHandler('business:success', function()
	vRP.notify({"~g~Você comprou parte da sociedade, parabéns!"})
end)
RegisterNetEvent('business:notenough')
AddEventHandler('business:notenough', function()
	--vRP.notify({"~r~Você não possui dinheiro suficiente."})
end)
RegisterNetEvent('business:alreadyin')
AddEventHandler('business:alreadyin', function()
	vRP.notify({"~r~Você já é sócio nessa empresa."})
end)
