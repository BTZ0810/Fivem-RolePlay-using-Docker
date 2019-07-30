local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

RSCclient = Tunnel.getInterface("vrp_names","vrp_names")
vRPclient = Tunnel.getInterface("vRP","vrp_names")
vRP = Proxy.getInterface("vRP")

local function update_name(player, user_id, source,vip)
	vRP.getUserIdentity({user_id, function(identity)
		if identity ~= nil then
			local vip = "none"
			if vRP.hasGroup({user_id, "VIP1"}) then
				vip = "~o~[VIP1] "
			elseif vRP.hasGroup({user_id, "VIP2"}) then
				vip = "~c~[VIP2] "
			elseif vRP.hasGroup({user_id, "VIP3"}) then
				vip = "~y~[VIP3] "
			end
			
			local fname
			if vip ~= "none" then
				fname = vip .. identity.firstname
			else
				fname = identity.firstname
			end
			
			RSCclient.insertUser(player,{user_id,source,fname .. ' ' .. identity.name,vRP.hasPermission({user_id, "player.group.add"})})
		end
	end})
end

AddEventHandler("vRP:playerSpawn", function(user_id, source, first_spawn) 
	local users = vRP.getUsers()
	for k,v in pairs(users) do
		update_name(source,k,v)
		update_name(v,user_id,source)
		
	end
end)

AddEventHandler("vRP:playerLeave",function(user_id, source)
	local users = vRP.getUsers({})
	for k,v in pairs(users) do
		RSCclient.removeUser(v,{user_id})
	end
end)
