local TeleportFromTo = {
	["arsenal"] = {
		positionFrom = { ['x'] = 451.76043701172, ['y'] = -982.69970703125, ['z'] = 30.689586639404, nom = "Arsenal"},
		positionTo = { ['x'] = 454.03625488281, ['y'] = -982.49066162109, ['z'] = 30.689588546753, nom = "Saída"},
	},

	["hospital"] = {
		positionFrom = { ['x'] = 240.75256347656, ['y'] = -1379.4505615234, ['z'] = 33.841756439209, nom = "Hospital"},
		positionTo = { ['x'] = 253.95764160156, ['y'] = -1372.2917480469, ['z'] = 24.557784576416, nom = "Saída"},
	},

	["ammunation"] = {
		positionFrom = { ['x'] = 14.243298530579, ['y'] = -1105.5391845703, ['z'] = 29.807012329102, nom = "Escritório"},
		positionTo = { ['x'] = 13.19003200531, ['y'] = -1107.7518310547, ['z'] = 29.807012329102, nom = "Saída"},
	},

	["grpae2"] = {
		positionFrom = { ['x'] = 360.73675537109, ['y'] = -1584.4884033203, ['z'] = 29.291944503784, nom = "Heliporto"},
		positionTo = { ['x'] = 378.50567626953, ['y'] = -1601.6043701172, ['z'] = 36.948799133301, nom = "Saída"},
	},

	["samu"] = {
		positionFrom = { ['x'] = 359.5592956543, ['y'] = -584.96868896484, ['z'] = 28.816930770874, nom = "Heliporto"},
		positionTo = { ['x'] = 339.0641784668, ['y'] = -584.21502685547, ['z'] = 74.165687561035, nom = "Saída"},
	},

	["joenalista"] = {
		positionFrom = { ['x'] = -568.83843994141, ['y'] = -927.80151367188, ['z'] = 36.853557128906, nom = "Heliporto"},
		positionTo = { ['x'] = -598.67529296875, ['y'] = -929.85534667969, ['z'] = 23.863552093506, nom = "Saída"},
	},

	["bunker"] = {
		positionFrom = { ['x'] = -3189.4724121094, ['y'] = 1371.791015625, ['z'] = 19.47608757019, nom = "Bunker GML~n~ENTRADA"},
		positionTo = { ['x'] = 880.44696044922, ['y'] = -3249.2902832031, ['z'] = -98.292304992676, nom = "Saída"},
	},

	["advogado"] = {
		positionFrom = { ['x'] = -1898.4870605469, ['y'] = -572.48205566406, ['z'] = 11.846803665161, nom = "Escritório OAB"},
		positionTo = { ['x'] = -1901.9768066406, ['y'] = -572.38348388672, ['z'] = 19.097217559814, nom = "Saída"},
	},
}

Drawing = setmetatable({}, Drawing)
Drawing.__index = Drawing


function Drawing.draw3DText(x,y,z,textInput,fontId,scaleX,scaleY,r, g, b, a)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*20
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov

    SetTextScale(scaleX*scale, scaleY*scale)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(r, g, b, a)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x,y,z+2, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

function Drawing.drawMissionText(m_text, showtime)
    ClearPrints()
    SetTextEntry_2("STRING")
    AddTextComponentString(m_text)
    DrawSubtitleTimed(showtime, 1)
end

function msginf(msg, duree)
    duree = duree or 500
    ClearPrints()
    SetTextEntry_2("STRING")
    AddTextComponentString(msg)
    DrawSubtitleTimed(duree, 1)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(2)
		local pos = GetEntityCoords(GetPlayerPed(-1), true)

		for k, j in pairs(TeleportFromTo) do

			--msginf(k .. " " .. tostring(j.positionFrom.x), 15000)
			if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 150.0)then
				DrawMarker(27, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, .801, 255, 255, 255,255, 0, 0, 0,0)
				if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 5.0)then
					Drawing.draw3DText(j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1.100, j.positionFrom.nom, 1, 0.2, 0.1, 255, 255, 255, 215)
					if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 2.0)then
						ClearPrints()
						SetTextEntry_2("STRING")
						AddTextComponentString("Pressione [~b~E~w~] para ".. j.positionFrom.nom)
						DrawSubtitleTimed(2000, 1)
						if IsControlJustPressed(1, 38) then
							DoScreenFadeOut(1000)
							Citizen.Wait(2000)
							SetEntityCoords(GetPlayerPed(-1), j.positionTo.x, j.positionTo.y, j.positionTo.z - 1)
							DoScreenFadeIn(1000)
						end
					end
				end
			end

			if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 150.0)then
				--DrawMarker(27, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, .801, 150, 255, 255,255, 0, 0, 0,0)
				if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 5.0)then
					Drawing.draw3DText(j.positionTo.x, j.positionTo.y, j.positionTo.z - 1.100, j.positionTo.nom, 1, 0.2, 0.1, 255, 255, 255, 215)
					if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 2.0)then
						ClearPrints()
						SetTextEntry_2("STRING")
						AddTextComponentString("Pressione [~b~E~w~] para ".. j.positionTo.nom)
						DrawSubtitleTimed(2000, 1)
						if IsControlJustPressed(1, 38) then
							DoScreenFadeOut(1000)
							Citizen.Wait(2000)
							SetEntityCoords(GetPlayerPed(-1), j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1)
							DoScreenFadeIn(1000)
						end
					end
				end
			end
		end
	end
end)
