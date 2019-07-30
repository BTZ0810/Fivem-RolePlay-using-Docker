local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_holdup")

local stores = cfg.holdups

local robbers = {}

function get3DDistance(x1, y1, z1, x2, y2, z2)
	return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y1 - y2, 2) + math.pow(z1 - z2, 2))
end

RegisterServerEvent('es_holdup:toofar')
AddEventHandler('es_holdup:toofar', function(robb)
	if(robbers[source])then
		TriggerClientEvent('es_holdup:toofarlocal', source)
		robbers[source] = nil
		TriggerClientEvent('chatMessage', -1, '@ANONIMO', { 105, 105, 105 }, "Os assaltantes fugiram da ^2" .. stores[robb].nameofstore.." ^0, ficaram com medo da ROTA")
	end
end)

RegisterServerEvent('es_holdup:playerdied')
AddEventHandler('es_holdup:playerdied', function(robb)
	if(robbers[source])then
		TriggerClientEvent('es_holdup:playerdiedlocal', source)
		robbers[source] = nil
		TriggerClientEvent('chatMessage', -1, '@ANONIMO', { 105, 105, 105 }, "Os assaltantes fugiram da ^2" .. stores[robb].nameofstore.." ^0, ficaram com medo da ROTA")
	end
end)

RegisterServerEvent('es_holdup:rob')
AddEventHandler('es_holdup:rob', function(robb)
  local user_id = vRP.getUserId({source})
  local player = vRP.getUserSource({user_id})
  local cops = vRP.getUsersByPermission({cfg.permission})
  if vRP.hasPermission({user_id,cfg.permission}) then
    vRPclient.notify(player,{"~r~Policiais não podem cometer crimes. Vaza dai"})
  else
    if #cops >= cfg.cops then
	  if stores[robb] then
		  local store = stores[robb]

		  if (os.time() - store.lastrobbed) <  cfg.seconds+cfg.cooldown and store.lastrobbed ~= 0 then
			  TriggerClientEvent('chatMessage', player, 'DONO DA LOJA', { 255, 69, 0 }, "Não temos dinheiro, acabamos de ser assaltados. Aguarde ^2" .. (cfg.seconds+cfg.cooldown - (os.time() - store.lastrobbed)) .. "^0 segundos.")
			  return
		  end
		  TriggerClientEvent('chatMessage', -1, 'G1.COM', { 128, 0, 0 }, "Está acontecendo um assalto na ^2" .. store.nameofstore)
		  TriggerClientEvent('chatMessage', player, 'AVISO', { 0, 0x99, 255 }, "Você começou um assalto na ^2" .. store.nameofstore .. "^0, cuide do cofre até ele abrir, não saia da área!")
		  TriggerClientEvent('chatMessage', player, 'AVISO', { 0, 0x99, 255 }, "Aguente firme por ^1 10 ^0 minutos e o dinheiro será seu!")
		  TriggerClientEvent('es_holdup:currentlyrobbing', player, robb)
		  stores[robb].lastrobbed = os.time()
		  robbers[player] = robb
		  local savedSource = player
		  SetTimeout(cfg.seconds*1000, function()
			  if(robbers[savedSource])then
				  if(user_id)then
					  vRP.giveInventoryItem({user_id,"dirty_money",store.reward,true})
					  TriggerClientEvent('chatMessage', -1, 'G1.COM', { 128, 0, 0 }, "O roubo terminou na ^2" .. store.nameofstore .. "^0!")
					  TriggerClientEvent('es_holdup:robberycomplete', savedSource, store.reward)
				  end
			  end
		  end)		
	  end
    else
      vRPclient.notify(player,{"~r~Não tem policiais de serviço o suficiente."})
    end
  end
end)