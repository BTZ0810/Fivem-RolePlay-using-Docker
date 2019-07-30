local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_bank")

local banks = cfg.banks

local robbers = {}

function get3DDistance(x1, y1, z1, x2, y2, z2)
	return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y1 - y2, 2) + math.pow(z1 - z2, 2))
end

RegisterServerEvent('es_bank:toofar')
AddEventHandler('es_bank:toofar', function(robb)
	if(robbers[source])then
		TriggerClientEvent('es_bank:toofarlocal', source)
		robbers[source] = nil
		TriggerClientEvent('chatMessage', -1, '@ANONIMO', { 105, 105, 105 }, "Os assaltantes fugiram do ^2" .. banks[robb].nameofbank .."^0, ficaram com medo da ROTA")
	end
end)

RegisterServerEvent('es_bank:playerdied')
AddEventHandler('es_bank:playerdied', function(robb)
	if(robbers[source])then
		TriggerClientEvent('es_bank:playerdiedlocal', source)
		robbers[source] = nil
		TriggerClientEvent('chatMessage', -1, '@ANONIMO', { 105, 105, 105 }, "Os assaltantes fugiram do ^2" .. banks[robb].nameofbank .."^0, ficaram com medo da ROTA")
	end
end)

RegisterServerEvent('es_bank:rob')
AddEventHandler('es_bank:rob', function(robb)
  local user_id = vRP.getUserId({source})
  local player = vRP.getUserSource({user_id})
  local cops = vRP.getUsersByPermission({cfg.permission})
  if vRP.hasPermission({user_id,cfg.permission}) then
    vRPclient.notify(player,{"~r~Policiais não podem cometer crimes. Vaza dai"})
  else
    if #cops >= cfg.cops then
	  if banks[robb] then
		  local bank = banks[robb]

		  if (os.time() - bank.lastrobbed) < cfg.seconds+cfg.cooldown and bank.lastrobbed ~= 0 then
			  TriggerClientEvent('chatMessage', player, 'GERENTE DO BANCO', { 255, 69, 0 }, "Não temos dinheiro, acabamos de ser assaltados, o próximo carro forte vem daqui ^2" .. (cfg.seconds+cfg.cooldown - (os.time() - bank.lastrobbed)) .. "^0 segundos.")
			  return
		  end
		  TriggerClientEvent('chatMessage', -1, 'G1.COM', { 128, 0, 0 }, "Está acontecendo um assalto no ^2" .. bank.nameofbank)
		  TriggerClientEvent('chatMessage', player, 'AVISO', { 0, 0x99, 255 }, "Você começou um assalto no ^2" .. bank.nameofbank .. "^0, cuide do cofre até ele abrir, não saia da área!")
		  TriggerClientEvent('chatMessage', player, 'AVISO', { 0, 0x99, 255 }, "Aguente firme por ^1 20 ^0 minutos e o dinheiro será seu!")
		  TriggerClientEvent('es_bank:currentlyrobbing', player, robb)
		  banks[robb].lastrobbed = os.time()
		  robbers[player] = robb
		  local savedSource = player
		  SetTimeout(cfg.seconds*1000, function()
			  if(robbers[savedSource])then
				  if(user_id)then
					  vRP.giveInventoryItem({user_id,"dirty_money",bank.reward,true})
					  TriggerClientEvent('chatMessage', -1, 'G1.COM', { 128, 0, 0 }, "O roubo terminou no ^2" .. bank.nameofbank .. "^0!")	
					  TriggerClientEvent('es_bank:robberycomplete', savedSource, bank.reward)
				  end
			  end
		  end)
	  end
    else
      vRPclient.notify(player,{"~r~Não tem policiais de serviço o suficiente."})
    end
  end
end)