local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","fishing")

RegisterServerEvent('fishing:item')
AddEventHandler('fishing:item', function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local cops = vRP.getUsersByGroup({"Pescador"})
	local randomBreak = math.random(1,10)
	if vRP.hasGroup({user_id,"user"}) then
		if not vRP.tryGetInventoryItem({user_id,"isca",1}) then
			TriggerClientEvent('cancel', player)
			vRPclient.notify(player,{"~r~Você precisa de isca da loja."})
		else
			TriggerClientEvent('hasFishingPole', player)
			if randomBreak == 1 then
				vRPclient.notify(player,{"~r~Você perdeu sua isca."})
			else
				vRP.getInventoryItem({user_id,"isca",1})
			end
		end
	else
		vRPclient.notify(player,{"~r~Você não é um Pescador!"})
	end
end)

RegisterServerEvent('fishing:reward')
AddEventHandler('fishing:reward', function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local randomFish = math.random(1,10)
	if randomFish == 5 then
		vRP.giveInventoryItem({user_id,"robalo",5})
	else
		vRP.giveInventoryItem({user_id,"robalo",1})
	end
end)


