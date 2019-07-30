
-- periodic player state update

local state_ready = false

AddEventHandler("playerSpawned",function() -- delay state recording
  state_ready = false
  
  Citizen.CreateThread(function()
    Citizen.Wait(30000)
    state_ready = true
  end)
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(30000)

    if IsPlayerPlaying(PlayerId()) and state_ready then
      local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1),true))
      vRPserver.ping({})
      vRPserver.updatePos({x,y,z})
      vRPserver.updateHealth({tvRP.getHealth()})
      vRPserver.updateWeapons({tvRP.getWeapons()})
      vRPserver.updateCustomization({tvRP.getCustomization()})
    end
  end
end)

-- WEAPONS

-- def
local weapon_types = {
		"WEAPON_STUNGUN",
		"WEAPON_REMOTESNIPER",
		"WEAPON_PASSENGER_ROCKET",
		"WEAPON_AIRSTRIKE_ROCKET",
		"WEAPON_STINGER",
		"WEAPON_GRENADE",
		"WEAPON_STICKYBOMB",
		"WEAPON_SMOKEGRENADE",
		"WEAPON_BZGAS",
		"WEAPON_MOLOTOV",
		"WEAPON_FIREEXTINGUISHER",
		"WEAPON_PETROLCAN",
		"WEAPON_DIGISCANNER",
		"WEAPON_BRIEFCASE",
		"WEAPON_BRIEFCASE_02",
		"WEAPON_BALL",
		"WEAPON_FLARE",
		"WEAPON_KNIFE",
		"WEAPON_KNUCKLE",
		"WEAPON_NIGHTSTICK",
		"WEAPON_HAMMER",
		"GADGET_NIGHTVISION",
		"WEAPON_GARBAGEBAG,",
		"WEAPON_HANDCUFFS,",
		"WEAPON_BAT",
		"WEAPON_GOLFCLUB",
		"WEAPON_CROWBAR",
		"WEAPON_BOTTLE",
		"WEAPON_DAGGER",
		"WEAPON_HATCHET",
		"WEAPON_MACHETE",
		"WEAPON_FLASHLIGHT",
		"WEAPON_SWITCHBLADE",
		"WEAPON_PROXMINE",
		"WEAPON_BZGAS",
		"WEAPON_SMOKEGRENADE",
		"WEAPON_MOLOTOV",
		"WEAPON_FIREEXTINGUISHER",
		"WEAPON_PETROLCAN",
		"WEAPON_SNOWBALL",
		"WEAPON_FLARE",
		"WEAPON_BALL",
		"WEAPON_PISTOL",
		"WEAPON_PISTOL_MK2",
		"WEAPON_COMBATPISTOL",
		"WEAPON_APPISTOL",
		"WEAPON_PISTOL50",
		"WEAPON_SNSPISTOL",
		"WEAPON_HEAVYPISTOL",
		"WEAPON_VINTAGEPISTOL",
		"WEAPON_MARKSMANPISTOL",
		"WEAPON_FLAREGUN",
		"WEAPON_MICROSMG",
		"WEAPON_SMG",
		"WEAPON_SMG_MK2",
		"WEAPON_ASSAULTSMG",
		"WEAPON_MG",
		"WEAPON_COMBATMG",
		"WEAPON_COMBATMG_MK2",
		"WEAPON_COMBATPDW",
		"WEAPON_GUSENBERG",
		"WEAPON_MACHINEPISTOL",
		"WEAPON_ASSAULTRIFLE",
		"WEAPON_ASSAULTRIFLE_MK2",
		"WEAPON_CARBINERIFLE",
		"WEAPON_CARBINERIFLE_MK2",
		"WEAPON_ADVANCEDRIFLE",
		"WEAPON_SPECIALCARBINE",
		"WEAPON_BULLPUPRIFLE",
		"WEAPON_COMPACTRIFLE",
		"WEAPON_PUMPSHOTGUN",
		"WEAPON_SAWNOFFSHOTGUN",
		"WEAPON_BULLPUPSHOTGUN",
		"WEAPON_ASSAULTSHOTGUN",
		"WEAPON_MUSKET",
		"WEAPON_HEAVYSHOTGUN",
		"WEAPON_DBSHOTGUN",
		"WEAPON_BATTLEAXE",
		"WEAPON_COMPACTLAUNCHER",
		"WEAPON_MINISMG",
		"WEAPON_PIPEBOMB",
		"WEAPON_POOLCUE",
		"WEAPON_WRENCH",
		"WEAPON_SNIPERRIFLE",
		"WEAPON_HEAVYSNIPER",
		"WEAPON_HEAVYSNIPER_MK2",
		"WEAPON_MARKSMANRIFLE",
		"WEAPON_GRENADELAUNCHER",
		"WEAPON_GRENADELAUNCHER_SMOKE",
		"WEAPON_RPG",
		"WEAPON_MINIGUN",
		"WEAPON_FIREWORK",
		"WEAPON_RAILGUN",
		"WEAPON_HOMINGLAUNCHER",
		"WEAPON_GRENADE",
		"WEAPON_STICKYBOMB",
		"COMPONENT_AT_RAILCOVER_01",
		"COMPONENT_AT_AR_AFGRIP",
		"COMPONENT_AT_PI_FLSH",
		"COMPONENT_AT_AR_FLSH",
		"COMPONENT_AT_SCOPE_MACRO",
		"COMPONENT_AT_SCOPE_SMALL",
		"COMPONENT_AT_SCOPE_MEDIUM",
		"COMPONENT_AT_SCOPE_LARGE",
		"COMPONENT_AT_SCOPE_MAX",
		"COMPONENT_AT_PI_SUPP",
		"COMPONENT_AT_AR_SUPP",
		"COMPONENT_AT_AR_SUPP_02",
		"COMPONENT_AT_SR_SUPP",
		"COMPONENT_PISTOL_CLIP_01",
		"COMPONENT_PISTOL_CLIP_02",
		"COMPONENT_COMBATPISTOL_CLIP_01",
		"COMPONENT_COMBATPISTOL_CLIP_02",
		"COMPONENT_APPISTOL_CLIP_01",
		"COMPONENT_APPISTOL_CLIP_02",
		"COMPONENT_MICROSMG_CLIP_01",
		"COMPONENT_MICROSMG_CLIP_02",
		"COMPONENT_SMG_CLIP_01",
		"COMPONENT_SMG_CLIP_02",
		"COMPONENT_ASSAULTRIFLE_CLIP_01",
		"COMPONENT_ASSAULTRIFLE_CLIP_02",
		"COMPONENT_CARBINERIFLE_CLIP_01",
		"COMPONENT_CARBINERIFLE_CLIP_02",
		"COMPONENT_ADVANCEDRIFLE_CLIP_01",
		"COMPONENT_ADVANCEDRIFLE_CLIP_02",
		"COMPONENT_MG_CLIP_01",
		"COMPONENT_MG_CLIP_02",
		"COMPONENT_COMBATMG_CLIP_01",
		"COMPONENT_COMBATMG_CLIP_02",
		"COMPONENT_PUMPSHOTGUN_CLIP_01",
		"COMPONENT_SAWNOFFSHOTGUN_CLIP_01",
		"COMPONENT_ASSAULTSHOTGUN_CLIP_01",
		"COMPONENT_ASSAULTSHOTGUN_CLIP_02",
		"COMPONENT_SNIPERRIFLE_CLIP_01",
		"COMPONENT_HEAVYSNIPER_CLIP_01",
		"COMPONENT_MINIGUN_CLIP_01",
		"COMPONENT_RPG_CLIP_01",
		"COMPONENT_GRENADELAUNCHER_CLIP_01",
		"COMPONENT_PISTOL50_CLIP_01",
		"COMPONENT_PISTOL50_CLIP_02",
		"COMPONENT_ASSAULTSMG_CLIP_01",
		"COMPONENT_ASSAULTSMG_CLIP_02",
		"COMPONENT_BULLPUPSHOTGUN_CLIP_01"
}

function tvRP.getWeaponTypes()
  return weapon_types
end

function tvRP.getWeapons()
  local player = GetPlayerPed(-1)

  local ammo_types = {} -- remember ammo type to not duplicate ammo amount

  local weapons = {}
  for k,v in pairs(weapon_types) do
    local hash = GetHashKey(v)
    if HasPedGotWeapon(player,hash) then
      local weapon = {}
      weapons[v] = weapon

      local atype = Citizen.InvokeNative(0x7FEAD38B326B9F74, player, hash)
      if ammo_types[atype] == nil then
        ammo_types[atype] = true
        weapon.ammo = GetAmmoInPedWeapon(player,hash)
      else
        weapon.ammo = 0
      end
    end
  end

  return weapons
end

function tvRP.giveWeapons(weapons,clear_before)
  local player = GetPlayerPed(-1)

  -- give weapons to player

  if clear_before then
    RemoveAllPedWeapons(player,true)
  end

  for k,weapon in pairs(weapons) do
    local hash = GetHashKey(k)
    local ammo = weapon.ammo or 0

    GiveWeaponToPed(player, hash, ammo, false)
  end
end

--[[
function tvRP.dropWeapon()
  SetPedDropsWeapon(GetPlayerPed(-1))
end
--]]

-- PLAYER CUSTOMIZATION

-- parse part key (a ped part or a prop part)
-- return is_proppart, index
local function parse_part(key)
  if type(key) == "string" and string.sub(key,1,1) == "p" then
    return true,tonumber(string.sub(key,2))
  else
    return false,tonumber(key)
  end
end

function tvRP.getDrawables(part)
  local isprop, index = parse_part(part)
  if isprop then
    return GetNumberOfPedPropDrawableVariations(GetPlayerPed(-1),index)
  else
    return GetNumberOfPedDrawableVariations(GetPlayerPed(-1),index)
  end
end

function tvRP.getDrawableTextures(part,drawable)
  local isprop, index = parse_part(part)
  if isprop then
    return GetNumberOfPedPropTextureVariations(GetPlayerPed(-1),index,drawable)
  else
    return GetNumberOfPedTextureVariations(GetPlayerPed(-1),index,drawable)
  end
end

function tvRP.getCustomization()
  local ped = GetPlayerPed(-1)

  local custom = {}

  custom.modelhash = GetEntityModel(ped)

  -- ped parts
  for i=0,20 do -- index limit to 20
    custom[i] = {GetPedDrawableVariation(ped,i), GetPedTextureVariation(ped,i), GetPedPaletteVariation(ped,i)}
  end

  -- props
  for i=0,10 do -- index limit to 10
    custom["p"..i] = {GetPedPropIndex(ped,i), math.max(GetPedPropTextureIndex(ped,i),0)}
  end

  return custom
end

-- partial customization (only what is set is changed)
function tvRP.setCustomization(custom) -- indexed [drawable,texture,palette] components or props (p0...) plus .modelhash or .model
  local exit = TUNNEL_DELAYED() -- delay the return values

  Citizen.CreateThread(function() -- new thread
    if custom then
      local ped = GetPlayerPed(-1)
      local mhash = nil

      -- model
      if custom.modelhash ~= nil then
        mhash = custom.modelhash
      elseif custom.model ~= nil then
        mhash = GetHashKey(custom.model)
      end

      if mhash ~= nil then
        local i = 0
        while not HasModelLoaded(mhash) and i < 10000 do
          RequestModel(mhash)
          Citizen.Wait(10)
        end

        if HasModelLoaded(mhash) then
          -- changing player model remove weapons, so save it
          local weapons = tvRP.getWeapons()
          SetPlayerModel(PlayerId(), mhash)
          tvRP.giveWeapons(weapons,true)
          SetModelAsNoLongerNeeded(mhash)
        end
      end

      ped = GetPlayerPed(-1)

      -- parts
      for k,v in pairs(custom) do
        if k ~= "model" and k ~= "modelhash" then
          local isprop, index = parse_part(k)
          if isprop then
            if v[1] < 0 then
              ClearPedProp(ped,index)
            else
              SetPedPropIndex(ped,index,v[1],v[2],v[3] or 2)
            end
          else
            SetPedComponentVariation(ped,index,v[1],v[2],v[3] or 2)
          end
        end
      end
    end

    exit({})
  end)
end

-- fix invisible players by resetting customization every minutes
--[[
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(60000)
    if state_ready then
      local custom = tvRP.getCustomization()
      custom.model = nil
      custom.modelhash = nil
      tvRP.setCustomization(custom)
    end
  end
end)
--]]
