local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_chopshop")


local prices = {
{id = 0, price = 9600}, --compacts
{id = 1, price = 12000}, --sedans
{id = 2, price = 15200}, --SUV's
{id = 3, price = 18400}, --coupes
{id = 4, price = 15000}, --muscle
{id = 5, price = 18500}, --sport classic
{id = 6, price = 21200}, --sport
{id = 7, price = 31000}, --super
{id = 8, price = 6200}, --motorcycle
{id = 9, price = 9800}, --offroad
{id = 10, price = 12400}, --industrial
{id = 11, price = 9400}, --utility
{id = 12, price = 9400}, --vans
{id = 13, price = 1200}, --bicycles
{id = 14, price = 6000}, --boats
{id = 15, price = 24200}, --helicopter
{id = 16, price = 27000}, --plane
{id = 17, price = 6900}, --service
{id = 18, price = 15000}, --emergency
{id = 19, price = 18200}, --military
{id = 20, price = 9400} --commercial
}

RegisterServerEvent("getVehPrice")
AddEventHandler("getVehPrice", function(class)
	for k, price in pairs(prices) do
		if class == price.id then
			vehPrice = price.price
			TriggerClientEvent("setVehPrice", -1, vehPrice)
		end
	end
end)


RegisterServerEvent("sellVehicle")
AddEventHandler("sellVehicle", function(vehPrice)
    local source = source
    local player = vRP.getUserSource({user_id})
    local user_id = vRP.getUserId({source})
        vRP.giveInventoryItem({user_id,"dirty_money",vehPrice})
        TriggerClientEvent('chatMessage', source, "", {0, 200, 60}, "Pega aqui os seus ^2R$ " .. vehPrice)
		TriggerClientEvent('chatMessage', source, "", {0, 200, 60}, "Volte daqui 2 dias.")
        CancelEvent()
end)
