-- TUNNEL AND PROXY
cfg = {}
vRPhk = {}
Tunnel.bindInterface("vrp_hotkeys",vRPhk)
vRPserver = Tunnel.getInterface("vRP","vrp_hotkeys")
HKserver = Tunnel.getInterface("vrp_hotkeys","vrp_hotkeys")
vRP = Proxy.getInterface("vRP")

-- GLOBAL VARIABLES
handsup = false
crouched = false
pointing = false
engine = true
called = 0

-- YOU ARE ON A CLIENT SCRIPT ( Just reminding you ;) )
-- Keys IDs can be found at https://wiki.fivem.net/wiki/Controls

-- Hotkeys Configuration: cfg.hotkeys = {[Key] = {group = 1, pressed = function() end, released = function() end},}
cfg.hotkeys = {
  [29] = {
    -- B toggle Point
    group = 0, 
	pressed = function() 
      if not IsPauseMenuActive() and not IsPedInAnyVehicle(GetPlayerPed(-1), true) then  -- Comment to allow use in vehicle
		RequestAnimDict("anim@mp_point")
		while not HasAnimDictLoaded("anim@mp_point") do
          Wait(0)
		end
        pointing = not pointing 
		if pointing then 
		  SetPedCurrentWeaponVisible(GetPlayerPed(-1), 0, 1, 1, 1)
		  SetPedConfigFlag(GetPlayerPed(-1), 36, 1)
		  Citizen.InvokeNative(0x2D537BA194896636, GetPlayerPed(-1), "task_mp_pointing", 0.5, 0, "anim@mp_point", 24)
		  RemoveAnimDict("anim@mp_point")
        else
		  Citizen.InvokeNative(0xD01015C7316AE176, GetPlayerPed(-1), "Stop")
		  if not IsPedInjured(GetPlayerPed(-1)) then
		    ClearPedSecondaryTask(GetPlayerPed(-1))
		  end
		  if not IsPedInAnyVehicle(GetPlayerPed(-1), 1) then
		    SetPedCurrentWeaponVisible(GetPlayerPed(-1), 1, 1, 1, 1)
		  end
		  SetPedConfigFlag(GetPlayerPed(-1), 36, 0)
		  ClearPedSecondaryTask(PlayerPedId())
        end 
	  end -- Comment to allow use in vehicle
	end,
	released = function()
	  -- Do nothing on release because it's toggle.
	end,
  },
  [38] = {
    -- E call/skip emergency
    group = 0, 
	pressed = function() 
	  if vRP.isInComa({}) then
		Citizen.Wait(120000)
	    if called == 0 then 
	      HKserver.canSkipComa({"coma.skipper","coma.caller"},function(skipper,caller) -- permission to skip when no Doc is online, or just call them when they are. Change them on client.lua too if you do
		    if skipper or caller then
		      HKserver.docsOnline({},function(docs)
		        if docs == 0 and skipper then
				  vRP.killComa({})
			    end
			  end)
            end
		  end)
		else
		  vRP.notify({"~r~Você chamou o samu."})
		end
	  end
	end,
	released = function()
	  -- Do nothing on release because it's toggle.
	end,
  },
  [20] = {
    -- K toggle Vehicle Engine
    group = 1, 
	pressed = function() 
      if not IsPauseMenuActive() and IsPedInAnyVehicle(GetPlayerPed(-1), false) then
		engine = not engine
		SetVehicleEngineOn(GetVehiclePedIsIn(GetPlayerPed(-1), false), engine, false, false)
	  end
	end,
	released = function()
	  -- Do nothing on release because it's toggle.
	end,
  },

}