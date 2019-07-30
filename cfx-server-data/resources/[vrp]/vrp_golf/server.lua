--# Written by koil
--# Web - nopixel.net
--# Twitch - twitch.tv/koil
--# Twitter - twitter.com/itskoil
--# Contact - koiltwitch@gmail.com
--# You can modify, do what you wish with it just dont claim it as your own. (not that its worthy)
-- ###################################
--
--       Credits: DevSun convert to VRPEX
--       Credits: contact me
--       Credits: contact me
-- My email sun@blackbox.ac
-- my group fivem server https://www.facebook.com/groups/1489038398088259/
-- ###################################



local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRPgf = {}
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_golf")
Tunnel.bindInterface("vrp_golf",vRPgf)

function vRPgf.payGolf()
  local source = source
  local user_id = vRP.getUserId({source})
  local player = vRP.getUserSource({user_id})
  if vRP.tryPayment({user_id, 100}) then
	  TriggerClientEvent('chatMessage', source, "SERVER", {255, 0, 0}, "Você pagou: ^2" .. tostring(100) .. "$.")
	  return true
  else
      TriggerClientEvent('chatMessage', source, "SERVER", {255, 0, 0}, "Você não tem dinheiro suficiente.")
	  return false
  end
end