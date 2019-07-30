
-- this file configure the cloakrooms on the map

local cfg = {}

--policia
local radiopatrulha01 = { model = "rp01" }
local radiopatrulha02 = { model = "rp02" }
local radiopatrulha03 = { model = "rp03" }
local radiopatrulha04 = { model = "rp04" }

local ftatica01 = { model = "ft01" }
local ftatica02 = { model = "ft02" }
local ftatica03 = { model = "ft03" }
local ftatica04 = { model = "ft04" }

local skinVander01 = { model = "McGreg" }
local skinVander01 = { model = "McGreg" }
local skinVander01 = { model = "McGreg" }
local skinVander01 = { model = "McGreg" }

local rotaskin01 = { model = "rota01" }
local rotaskin02 = { model = "rota02" }
local rotaskin03 = { model = "rota03" }
local rotaskin04 = { model = "rota04" }

local gateskin01 = { model = "gate01" }
local gateskin02 = { model = "gate02" }

local rocamskin_01 = { model = "rocam_01" }
local rocamskin_02 = { model = "rocam_02" }
local rocamskin_03 = { model = "rocam03" }
local rocamskin_04 = { model = "rocam_04" }

local pilotoaguia = { model = "piloto" }

local fardagoe = { model = "goe_01" }
local fardagoe2 = { model = "goe2" }
local fardapc01 = { model = "pcivil" }
local fardapc02 = { model = "pcivil02" }


local castela = { model = "Child" }




-- cloakroom types (_config, map of name => customization)
--- _config:
---- permissions (optional)
---- not_uniform (optional): if true, the cloakroom will take effect directly on the player, not as a uniform you can remove
cfg.cloakroom_types = {
  ["GARI"] = {
    _config = { permissions = {"gari.uniforme"} },
	["Uniforme Masculino"] = {
	[3] = {0,0,0},
	[4] = {43,1,2},
	[6] = {54,0,2},
	[8] = {59,0,2},
	[11] = {57,0,2},
	["p0"] = {58,2},
  },
  },
    ["SAMU"] = {
    _config = { permissions = {"samu.uniforme"} },
    ["Uniforme Masculino"] = {
	[3] = {85,1,2},
	[4] = {96,0,2},
	[6] = {25,0,2},
	[8] = {129,0,2},
	[11] = {250,0,2},
	["p0"] = {122,0},
  },
	["Uniforme Feminino"] = {
	[3] = {100,0,2},
	[4] = {99,0,2},
	[6] = {26,0,2},
	[8] = {159,0,2},
	[11] = {258,0,2},
	["p0"] = {121,0},
  },
	["Doutora | Enfermeira"] = {
	[3] = {86,0,2},
	[4] = {23,0,2},
	[6] = {18,0,2},
	[8] = {39,0,2},
	[11] = {7,1,2},
	["p0"] = {-1,0},
  },
	["Doutor | Enfermeiro"] = {
	[3] = {82,0,2},
	[4] = {48,0,2},
	[6] = {20,3,2},
	[8] = {13,0,2},
	[11] = {23,3,2},
	["p0"] = {-1,0},
	},
  },
  ["JORNALISTA"] = {
    _config = { permissions = {"jornalista.uniforme"} },
    ["Uniforme Masculino | Repórter"] = {
	  [1] = {121,0,2},
	  [3] = {11,0,2},
	  [4] = {37,2,2},
	  [6] = {21,0,2},
	  [7] = {21,11,2},
	  [8] = {15,0,2},
	  [9] = {0,1,2},
	  [11] = {13,0,2},
	  ["p0"] = {-1,0},
	  ["p6"] = {4,0},
   },
   ["Uniforme Masculino | Cameraman"] = {
	  [1] = {121,0,2},
	  [3] = {12,0,2},
	  [4] = {0,0,2},
	  [6] = {21,0,2},
	  [7] = {72,0,2},
	  [8] = {15,0,2},
	  [9] = {0,1,2},
	  [11] = {12,0,2},
	  ["p0"] = {-1,0},
	  ["p6"] = {-1,0},
   },
  },
  ["MINERADOR"] = {
    _config = { permissions = {"minerador.uniforme"} },
    ["Uniforme Masculino"] = {
	  [1] = {36,0,2},
	  [3] = {16,0,2},
	  [4] = {46,0,2},
	  [6] = {52,0,2},
	  [7] = {72,0,2},
	  [8] = {59,0,2},
	  [9] = {0,1,2},
	  [11] = {14,15,2},
	  ["p0"] = {0,0},
	  ["p6"] = {-1,0},
    },
  },
  
  ["Escolher Sexo"] = {
    _config = { not_uniform = false },
    ["Homem"] = surgery_male,
    ["Mulher"] = surgery_female
  },

    ["Policia Civil"] = {
    _config = { permissions = {"pcivil.cloakroom"} },
    ["Farda 1"] = fardapc01,
	["Farda 2"] = fardapc02,
	["Farda GOE 1"] = fardagoe,
	["Farda GOE 2"] = fardagoe2,
  },
  
	["PMESP"] = {
    _config = { permissions = {"rp.cloakroom"} },
	["Farda 01"] = radiopatrulha01,
	["Farda 02"] = radiopatrulha02,
	["Farda 03"] = radiopatrulha03,
	["Farda 04"] = radiopatrulha04	
  },
  
  ["Força Tatica"] = {
    _config = { permissions = {"ft.cloakroom"} },
	["Farda 01"] = ftatica01,
	["Farda 02"] = ftatica02,
	["Farda 03"] = ftatica03,
	["Farda 04"] = ftatica04
  },
  ["Rota"] = {
    _config = { permissions = {"rota.cloakroom"} },
	["Farda 01"] = rotaskin01,
	["Farda 02"] = rotaskin02,
	["Farda 03"] = rotaskin03,
	["Farda 04"] = rotaskin04
  },
  
  ["GATE"] = {
    _config = { permissions = {"gate.cloakroom"} },
	["Farda 01"] = gateskin01,
	["Farda 02"] = gateskin02,
  },
  
  ["GRPAe"] = {
    _config = { permissions = {"grpae.cloakroom"} },
	["Farda 01"] = pilotoaguia,
  },
  ["Rocam"] = {
    _config = { permissions = {"rocam.cloakroom"} },
	["Farda 01"] = rocamskin_01,
	["Farda 02"] = rocamskin_02,
	["Farda 03"] = rocamskin_03,
	["Farda 04"] = rocamskin_04
  },
  ["UBER"] = {
    _config = { permissions = {"uber.uniforme"} },
	["UBER BLACK | M"] = {
	[3] = {1,0,2},
	[4] = {10,0,2},
	[6] = {10,0,2},
	[8] = {32,2,2},
	[11] = {31,0,2},
	["p0"] = {-1,0},
	},
  },
  ["MERGULHADOR"] = {
    ["Masculino"] = {
	[3] = {17,0,2},
	[4] = {94,0,2},
	[6] = {67,0,2},
	[8] = {123,0,2},
	[11] = {148,1,2},
	[12] = {65792,0,0},
	["p0"] = {-1,0},
	},
	["Feminino"] = {
	[3] = {18,0,2},
	[4] = {97,0,2},
	[6] = {70,0,2},
	[8] = {153,0,2},
	[11] = {251,0,2},
	[12] = {0,0,0},
	["p0"] = {-1,0},
	},
  },
  ["Transportador de Valores"] = {
    _config = { permissions = {"tvalores.uniforme"} },
	["Uniforme Masculino"] = {
	[3] = {0,0,0},
	[4] = {47,1,2},
	[6] = {54,0,2},
	[8] = {131,0,2},
	[11] = {13,2,2},
	["p0"] = {121,2},
	},
  },
  ["CASTELA"] = {
    _config = { permissions = {"player.givemoney"} },
	["Skin"] = child,
  },
}

cfg.cloakrooms = {
  {"CASTELA",1401.8090820313,1132.2937011719,114.33358764648},
  {"JORNALISTA",-598.86926269531,-933.52667236328,23.864618301392},
  {"Transportador de Valores",-9.0581197738647,-691.92352294922,16.130609512329},
  {"UBER",-340.04010009766,-1026.4876708984,30.400088806152},
  {"GARI",180.01850891113,-2215.1811523438,5.9761023521423},
  {"MINERADOR",180.01850891113,-2215.1811523438,5.9761023521423},
  {"Escolher Sexo",-270.00677490234,-958.40710449219,31.223134994507},
  {"SAMU",431.79244995117,-415.21597290039,47.598628997803},
  {"GATE", 940.46704101563,-42.622211456299,78.764358520508},
  {"GATE", 1848.4448242188,3690.0256347656,34.267074584961},
  {"GATE", 459.01037597656,-992.32800292969,30.689575195313},
  {"Rota", 940.46704101563,-42.622211456299,78.764358520508},
  {"Rota", 1848.4448242188,3690.0256347656,34.267074584961},
  {"Rota", 459.01037597656,-992.32800292969,30.689575195313},
  {"Juiz", 459.01037597656,-992.32800292969,30.689575195313},
  {"GRPAe", 459.01037597656,-992.32800292969,30.689575195313},
  {"GRPAe", -447.69525146484,6008.4584960938,31.716390609741},
  {"Juiz", 116.49544525146,-754.701171875,258.15213012695}, -- Predio Tribunal
  {"TMBR", 903.88555908203,-3199.73828125,-97.187950134277},
  {"Rocam", 1848.4448242188,3690.0256347656,34.267074584961},
  {"Rocam", 459.01037597656,-992.32800292969,30.689575195313},
  {"Rocam", -447.69525146484,6008.4584960938,31.716390609741},
  {"Comandante", 459.01037597656,-992.32800292969,30.689575195313},
  {"Rota", -447.69525146484,6008.4584960938,31.716390609741},
  {"PMESP", 1848.4448242188,3690.0256347656,34.267074584961},
  {"PMESP", 459.01037597656,-992.32800292969,30.689575195313},
  {"PMESP", -447.69525146484,6008.4584960938,31.716390609741},
  {"Juiz", 1848.4448242188,3690.0256347656,34.267074584961},
  {"Juiz", -447.69525146484,6008.4584960938,31.716390609741},
  {"Comandante", 1848.4448242188,3690.0256347656,34.267074584961},
  {"Comandante", -447.69525146484,6008.4584960938,31.716390609741},
  {"Força Tatica", 1848.4448242188,3690.0256347656,34.267074584961},
  {"Força Tatica", 459.01037597656,-992.32800292969,30.689575195313},
  {"Força Tatica", -447.69525146484,6008.4584960938,31.716390609741},
  {"Policia Civil", 1848.4448242188,3690.0256347656,34.267074584961},
  {"Policia Civil", 459.01037597656,-992.32800292969,30.689575195313},
  {"Policia Civil", -447.69525146484,6008.4584960938,31.716390609741},
  {"Policia Federal", 1728.7473144531,2508.5905761719,-78.032669067383},
  {"Policia Federal", 1848.4448242188,3690.0256347656,34.267074584961},
  {"Policia Federal", 459.01037597656,-992.32800292969,30.689575195313},
  {"Policia Federal", -447.69525146484,6008.4584960938,31.716390609741},
  {"Policia Especial", 1728.7473144531,2508.5905761719,-78.032669067383},
  {"Policia Especial", 1848.4448242188,3690.0256347656,34.267074584961},
  {"Policia Especial", 459.01037597656,-992.32800292969,30.689575195313},
  {"Policia Especial", -447.69525146484,6008.4584960938,31.716390609741},
  {"PRF", 1848.4448242188,3690.0256347656,34.267074584961},
  {"PRF", 459.01037597656,-992.32800292969,30.689575195313},
  {"PRF", -447.69525146484,6008.4584960938,31.716390609741},
  {"Ferris",80.750968933105,-1400.0679931641,29.376136779785},
  {"Vander",80.750968933105,-1400.0679931641,29.376136779785},
  {"Andre",80.750968933105,-1400.0679931641,29.376136779785},
  {"Bombeiro",199.22424316406,-1650.2969970703,29.803216934204},
  {"MERGULHADOR",1333.4770507813,4268.1967773438,30.177610397339},
  {"MC DONALDS",-1138.3792724609,-1720.7202148438,5.2102017402649},
}

return cfg

