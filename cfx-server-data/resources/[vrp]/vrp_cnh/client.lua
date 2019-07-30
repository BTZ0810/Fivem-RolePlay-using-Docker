
local options = {
    x = 0.1,
    y = 0.2,
    width = 0.2,
    height = 0.04,
    scale = 0.4,
    font = 0,
    menu_title = "NPC",
    menu_subtitle = "Diretor do Detran",
    color_r = 0,
    color_g = 128,
    color_b = 255,
}

local dmvped = {
  --{type=4, hash=0xc99f21c4, x=239.471, y=-1380.96, z=32.74176, h=600},
}

local dmvpedpos = {
	{ ['x'] = -260.49652099609, ['y'] = -964.94061279297, ['z'] = 31.224351882935 },
}

--[[Locals]]--

local dmvschool_location = {-260.49652099609,-964.94061279297,31.224351882935}

local DTutOpen = false
BuyLicense = false

RegisterNetEvent('dmv:CheckLicStatus')
AddEventHandler('dmv:CheckLicStatus', function()
--Check if player has buy license
	BuyLicense = true
end)

--[[Functions]]--

function drawNotification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end

function LocalPed()
	return GetPlayerPed(-1)
end

function drawTxt(text,font,centre,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextProportional(0)
	SetTextScale(scale, scale)
	SetTextColour(r, g, b, a)
	SetTextDropShadow(0, 0, 0, 0,255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(centre)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x , y)
end

--[[Arrays]]--
BuyLicense = true

function startbuy()
        if BuyLicense then
		    TriggerServerEvent('dmv:buysuccess')
		end
end

RegisterNetEvent('dmv:startbuy')
AddEventHandler('dmv:startbuy', function()
	openGui()
	Menu.hidden = not Menu.hidden
end)

RegisterNetEvent('dmv:EndBuyLicense')
AddEventHandler('dmv:EndBuyLicense', function()
	EndBuyLicense()
end)

function EndBuyLicense()
        if BuyLicense then
			TriggerServerEvent('dmv:success')
			BuyLicense = true
			drawNotification("~g~Você comprou sua CNH")
			EndTestTasks()
		end
end

RegisterNUICallback('close', function(data, cb)
  closeGui()
  cb('ok')
  BuyLicense = true
end)

---------------------------------- DMV PED ----------------------------------

Citizen.CreateThread(function()

  RequestModel(GetHashKey("a_m_y_business_01"))
  while not HasModelLoaded(GetHashKey("a_m_y_business_01")) do
    Wait(1)
  end

  RequestAnimDict("mini@strip_club@idles@bouncer@base")
  while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
    Wait(1)
  end

 	    -- Spawn the DMV Ped
  for _, item in pairs(dmvped) do
    dmvmainped =  CreatePed(item.type, item.hash, item.x, item.y, item.z, item.a, false, true)
    SetEntityHeading(dmvmainped, 0.0)
    FreezeEntityPosition(dmvmainped, true)
	SetEntityInvincible(dmvmainped, true)
	SetBlockingOfNonTemporaryEvents(dmvmainped, true)
    TaskPlayAnim(dmvmainped,"mini@strip_club@idles@bouncer@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
    end
end)

local talktodmvped = true
--DMV Ped interaction
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local pos = GetEntityCoords(GetPlayerPed(-1), false)
		for k,v in ipairs(dmvpedpos) do
			if(Vdist(v.x, v.y, v.z, pos.x, pos.y, pos.z) < 1.0)then
				DisplayHelpText("Pressione ~INPUT_CONTEXT~ para comprar uma ~y~CNH")
				if(IsControlJustReleased(1, 38))then
						if talktodmvped then
						    Citizen.Wait(500)
							LICENSEMenu()
							Menu.hidden = false
							talktodmvped = false
						else
							talktodmvped = true
						end
				end
				Menu.renderGUI(options)
			end
		end
	end
end)

------------
------------ DRAW MENUS
------------
function LICENSEMenu()
	ClearMenu()
    options.menu_title = "DETRAN"
	Menu.addButton("Adquirir CNH","FireArmsMenu",nil)
    Menu.addButton("Sair","CloseMenu",nil) 
end

function FireArmsMenu()
    ClearMenu()
    options.menu_title = "CNH"
	Menu.addButton("CNH R$ 5.000","startbuy",nil)
    Menu.addButton("Voltar","LICENSEMenu",nil) 
end

function CloseMenu()
		Menu.hidden = true
end

function Notify(text)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
    DrawNotification(false, false)
end

function drawNotification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(true, true)
end

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

----------------
----------------blip
----------------



Citizen.CreateThread(function()
	pos = dmvschool_location
	local blip = AddBlipForCoord(pos[1],pos[2],pos[3])
	SetBlipSprite(blip,225)
	SetBlipColour(blip,8)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString('~p~DETRAN')
	EndTextCommandSetBlipName(blip)
	SetBlipAsShortRange(blip,true)
	SetBlipAsMissionCreatorBlip(blip,true)
end)