local speedBuffer  = {}
local velBuffer    = {}
local beltOn       = false
local wasInCar     = false

IsCar = function(veh)
		    local vc = GetVehicleClass(veh)
		    return (vc >= 0 and vc <= 7) or (vc >= 9 and vc <= 12) or (vc >= 17 and vc <= 20)
        end	

Fwv = function (entity)
		    local hr = GetEntityHeading(entity) + 90.0
		    if hr < 0.0 then hr = 360.0 + hr end
		    hr = hr * 0.0174533
		    return { x = math.cos(hr) * 2.0, y = math.sin(hr) * 2.0 }
      end

Citizen.CreateThread(function()
	Citizen.Wait(500)
	while true do
		
		local ped = GetPlayerPed(-1)
		local car = GetVehiclePedIsIn(ped)
		
		if car ~= 0 and (wasInCar or IsCar(car)) then
		
			wasInCar = true
			
			if beltOn then DisableControlAction(0, 75) end
			
			speedBuffer[2] = speedBuffer[1]
			speedBuffer[1] = GetEntitySpeed(car)
			
			if speedBuffer[2] ~= nil 
			   and not beltOn
			   and GetEntitySpeedVector(car, true).y > 1.0  
			   and speedBuffer[1] > 19.25
			   and (speedBuffer[2] - speedBuffer[1]) > (speedBuffer[1] * 0.255) then
			   
				local co = GetEntityCoords(ped)
				local fw = Fwv(ped)
				SetEntityCoords(ped, co.x + fw.x, co.y + fw.y, co.z - 0.47, true, true, true)
				SetEntityVelocity(ped, velBuffer[2].x, velBuffer[2].y, velBuffer[2].z)
				Citizen.Wait(1)
				SetPedToRagdoll(ped, 1000, 1000, 0, 0, 0, 0)
			end
				
			velBuffer[2] = velBuffer[1]
			velBuffer[1] = GetEntityVelocity(car)
				
			if IsControlJustReleased(0, 58) then
				beltOn = not beltOn				  
				if beltOn then 
					exports.pNotify:SendNotification({
						text = "Você está com cinto  de segurança",
						type = "info",timeout = 3000,progressBar = false, layout = "zezao",queue = "left",
						animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}
					})
				else 
					exports.pNotify:SendNotification({
						text = "Você está sem cinto de segurança",
						type = "info",timeout = 3000,progressBar = false, layout = "zezao",queue = "left",
						animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}
					})
				end 
			end
			
		elseif wasInCar then
			wasInCar = false
			beltOn = false
			speedBuffer[1], speedBuffer[2] = 0.0, 0.0
		end
		Citizen.Wait(0)
	end
end)
