-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

local generalLoaded = false
local PlayingAnim = false

-------------------------------------------------------------------------------------------------
----------------------------------- YOU CAN EDIT THIS LINES -------------------------------------
-------------------------------------------------------------------------------------------------

local ShopClerk = {
  -- ID: id of NPC | name: Name of Blip | BlipID: Icone of Blip | VoiceName: NPC Talk When near it | Ambiance: Ambiance of Shop | Weapon: Hash of Weapon | modelHash: Model | X: Position x | Y: Position Y | Z: Position Z | heading: Where Npc look
	{id = 1, modelHash = "U_M_M_FIBArchitect", x = -267.00628662109, y = -968.84735107422, z = 30.224838256836, heading = 300.0}, 
	{id = 2, modelHash = "A_F_Y_Business_01", x = -259.75921630859, y = -964.58575439453, z = 30.224721908569, heading = 110.0},
	{id = 3, modelHash = "A_M_Y_Business_03", x = -268.85211181641, y = -962.3251953125, z = 30.223133087158, heading = 300.0},
	{id = 4, modelHash = "U_M_M_JewelThief", x = -1034.5776367188, y = -1147.1368408203, z = 1.1585974693298, heading = 380.0},
	{id = 5, modelHash = "CS_MartinMadrazo", x = -631.32104492188, y = -229.94718933105, z = 37.057060241699, heading = 300.0},
	{id = 6, modelHash = "IG_TaosTranslator", x=-800.14215087891,y=5403.4541015625,z=33.126468658447, heading = 400.0},
	{id = 7, modelHash = "A_M_Y_StBla_01", x=-410.68630981445,y=2960.2890625,z=24.071413040161, heading = 350.0},
	{id = 8, modelHash = "IG_LesterCrest", x=1275.7307128906,y=-1710.5224609375,z=53.771453857422, heading = 130.0},
	{id = 9, modelHash = "MP_M_FamDD_01", x=2193.7133789063,y=5599.4174804688,z=52.711864471436, heading = 350.0},
	{id = 10, modelHash = "G_M_M_ChiCold_01", x=-74.125541687012,y=6220.6455078125,z=30.089849472046, heading = 400.0},
	{id = 11, modelHash = "G_M_M_ChemWork_01", x=1389.2108154297,y=3605.0244140625,z=37.941890716553, heading = 300.0},
	{id = 12, modelHash = "S_M_Y_Chef_01", x=973.62884521484,y=-2167.2248535156,z=28.461545944214, heading = 270.0},
	{id = 13, modelHash = "IG_Dale", x=-1593.8466796875,y=5204.7993164063,z=3.3100881576538, heading = 300.0},
	{id = 14, modelHash = "CS_BradCadaver", x=-1762.3840332031,y=-261.39212036133,z=46.0, heading = 150.0},
	{id = 15, modelHash = "A_F_Y_Golfer_01", x=-1332.8278808594,y=128.10989379883,z=56.027824401855, heading = 200.0},
	{id = 16, modelHash = "A_F_Y_Vinewood_04", x=562.35192871094,y=2741.5285644531,z=41.868907928467, heading = 200.0},
	{id = 17, modelHash = "CS_LamarDavis", x=2504.1508789063,y=4212.1157226563,z=39.1, heading = 350.0},
	{id = 18, modelHash = "A_M_Y_Business_01", x=-1913.5668457031,y=-572.08166503906,z=18.097217559814, heading = 250.0},
}

-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

-- Blip For NPC
Citizen.CreateThread(function()
	for k,v in pairs(ShopClerk)do
		local blip = AddBlipForCoord(v.x, v.y, v.z)
		SetBlipSprite(blip, v.BlipID)
		SetBlipScale(blip, 0.8)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(v.name)
		EndTextCommandSetBlipName(blip)
	end
end)

-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

-- Spawn NPC
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
	
	if (not generalLoaded) then
	  
	  for i=1, #ShopClerk do
        RequestModel(GetHashKey(ShopClerk[i].modelHash))
        while not HasModelLoaded(GetHashKey(ShopClerk[i].modelHash)) do
          Wait(1)
        end
		
        ShopClerk[i].id = CreatePed(2, ShopClerk[i].modelHash, ShopClerk[i].x, ShopClerk[i].y, ShopClerk[i].z, ShopClerk[i].heading, true, true)
        SetPedFleeAttributes(ShopClerk[i].id, 0, 0)
		SetPedDropsWeaponsWhenDead(ShopClerk[i].id, false)
		SetPedDiesWhenInjured(ShopClerk[i].id, false)
		FreezeEntityPosition(ShopClerk[i].id, true)  
        SetEntityInvincible(ShopClerk[i].id, true)
        SetBlockingOfNonTemporaryEvents(ShopClerk[i].id, true)
		GiveWeaponToPed(ShopClerk[i].id, ShopClerk[i].Weapon, 2800, false, true)
		
      end
      generalLoaded = true
		
    end
	
  end
end)



-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------


