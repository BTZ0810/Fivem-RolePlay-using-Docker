--[[
~r~ = Red
~b~ = Blue
~g~ = Green
~y~ = Yellow
~p~ = Purple
~o~ = Orange
~c~ = Grey?
~m~ = Darker Grey
~u~ = Black
~n~ = New Line
~s~ = Default White
~h~ = Bold Text
]]
local TeleportFromTo = {
	["cnh"] = {
		positionFrom = { ['x'] = -260.49652099609, ['y'] = -964.94061279297, ['z'] = 31.224351882935, nom = "~h~[~b~Comprar Habilitação~w~] ~n~ $ 5.000"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},

	["portearma"] = {
		positionFrom = { ['x'] = -266.21295166016, ['y'] = -968.33837890625, ['z'] = 31.224351882935, nom = "~h~[~b~Comprar Porte de Armas~w~] ~n~ $ 20.000"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},		

	["identidade"] = {
		positionFrom = { ['x'] = -266.82794189453, ['y'] = -956.41778564453, ['z'] = 31.223134994507, nom = "~h~Identidade~n~(~r~OBRIGATÓRIO~w~)"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},

	["sexo"] = {
		positionFrom = { ['x'] = -270.00677490234, ['y'] = -958.40710449219, ['z'] = 31.223134994507, nom = "~h~Escolher Sexo"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},
	
	["empregos"] = {
		positionFrom = { ['x'] = -268.3537902832, ['y'] = -957.37261962891, ['z'] = 31.223134994507, nom = "~h~Agência de Empregos"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},
	
	["cofre"] = {
		positionFrom = { ['x'] = -7.1137452125549, ['y'] = -654.05993652344, ['z'] = 33.490160980225, nom = "Entrar no Cofre"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},		

	["malotes"] = {
		positionFrom = { ['x'] = 1.7533090114594, ['y'] = -672.1826171875, ['z'] = 16.130626678467, nom = "Pegar Malotes de Dinheiro"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	
	
	["uniformetv"] = {
		positionFrom = { ['x'] = -9.0581197738647, ['y'] = -691.92352294922, ['z'] = 16.130609512329, nom = "Vestir Uniforme"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},

	["veiculotv"] = {
		positionFrom = { ['x'] = -5.2033176422119, ['y'] = -670.98248291016, ['z'] = 32.338073730469, nom = "Pegar Veículo"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},
	
	["lapidacao"] = {
		positionFrom = { ['x'] = -1035.3331298828, ['y'] = -1146.3178710938, ['z'] = 2.1585986614227, nom = "~b~Lapidação de Diamantes"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["concessionaria"] = {
		positionFrom = { ['x'] = -57.265560150146, ['y'] = -1110.5635986328, ['z'] = 26.43579864502, nom = "Concessionária"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},			
	
	["revendedor"] = {
		positionFrom = { ['x'] = -58.289119720459, ['y'] = -1113.8054199219, ['z'] = 26.43579864502, nom = "Concessionária~n~~b~(Sócio P.D.M.)"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["vendatartaruga"] = {
		positionFrom = { ['x'] = 973.65972900391, ['y'] = -2167.0751953125, ['z'] = 29.460708618164, nom = "Vender Tartarugas~n~~r~$ $ $"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},

	["pegarcartoes"] = {
		positionFrom = { ['x'] = 1275.6883544922, ['y'] = -1710.4342041016, ['z'] = 54.771450042725, nom = "Coletar Cartões"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},
	
	["atendimentomedico1"] = {
		positionFrom = { ['x'] = 1151.4515380859, ['y'] = -1529.5104980469, ['z'] = 35.367156982422, nom = "Atendimento Médico~n~~r~+ + +"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["atendimentomedico2"] = {
		positionFrom = { ['x'] = 360.52487182617, ['y'] = -585.29083251953, ['z'] = 28.823356628418, nom = "Atendimento Médico~n~~r~+ + +"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},
	
	["atendimentomedico3"] = {
		positionFrom = { ['x'] = 298.59658813477, ['y'] = -583.89123535156, ['z'] = 43.260848999023, nom = "Atendimento Médico~n~~r~+ + +"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	
	
	["atendimentomedico4"] = {
		positionFrom = { ['x'] = 1839.0980224609, ['y'] = 3673.3332519531, ['z'] = 34.276668548584, nom = "Atendimento Médico~n~~r~+ + +"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},

	["arsenalemergencia"] = {
		positionFrom = { ['x'] = 1841.8218994141, ['y'] = 3673.9038085938, ['z'] = 34.276744842529, nom = "~r~Arsenal Emergência"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemEmergencia1"] = {
		positionFrom = { ['x'] = 1843.5655517578, ['y'] = 3666.9812011719, ['z'] = 33.723239898682, nom = "~g~Garagem Emergência"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["atendimentomedico5"] = {
		positionFrom = { ['x'] = -676.99560546875, ['y'] = 312.63223266602, ['z'] = 83.08415222168, nom = "Atendimento Médico~n~~r~+ + +"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},

	["atendimentomedico6"] = {
		positionFrom = { ['x'] = 260.65274047852, ['y'] = -1358.6448974609, ['z'] = 24.537805557251, nom = "Atendimento Médico~n~~r~+ + +"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},
	
	["garagemTransportadorValores"] = {
		positionFrom = { ['x'] = 234.71469116211, ['y'] = 119.87322998047, ['z'] = 102.60284423828, nom = "Garagem~n~~y~Transportador de Valores"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},		

	["uniformeTransportadorValores"] = {
		positionFrom = { ['x'] = 224.66415405273, ['y'] = 121.64584350586, ['z'] = 102.59970092773, nom = "Uniforme~n~~y~Transportador de Valores"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["madeireira"] = {
		positionFrom = { ['x'] = -800.26599121094, ['y'] = 5403.7290039063, ['z'] = 34.114093780518, nom = "Comprar Madeira~n~~g~$ $ $"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["ponte"] = {
		positionFrom = { ['x'] = -410.35720825195, ['y'] = 2962.4812011719, ['z'] = 25.029891967773, nom = "Vender Madeira~n~~g~$ $ $"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},
	
	["maconha"] = {
		positionFrom = { ['x'] = 2193.7133789063,['y'] = 5599.4174804688, ['z'] = 53.711864471436, nom = "Comprar Maconha~n~~g~$ $ $"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},
	
	["metanfetamina"] = {
		positionFrom = { ['x'] = 1389.2108154297, ['y'] = 3605.0244140625, ['z'] = 38.941890716553, nom = "Comprar Metanfetamina~n~~g~$ $ $"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["cocaina"] = {
		positionFrom = { ['x'] = -74.125541687012, ['y'] = 6220.6455078125, ['z'] = 31.089849472046, nom = "Comprar Cocaina~n~~g~$ $ $"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},

	["tartarugaaviso"] = {
		positionFrom = { ['x'] = 1303.265625, ['y'] = 4038.1279296875, ['z'] = 29.362062454224, nom = "O NINHO É NO FUNDO DO MAR~n~~y~V V V V V~n~~r~~h~PRECISARÁ DO EQUIPAMENTO DE MERGULHO NO PIER"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},
	
	["tartarugasninho"] = {
		positionFrom = { ['x'] = 1303.265625, ['y'] = 4038.1279296875, ['z'] = -0.022800702601671, nom = "~h~~r~NINHO DE TARTARUGAS"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},
	
	["equimergulho"] = {
		positionFrom = { ['x'] = 1333.4739990234, ['y'] = 4268.1987304688, ['z'] = 30.00553894043, nom = "~h~~b~Equipamento de Mergulho~n~Entre na água para pegá-lo"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},
	
	["cigarrosCompra"] = {
		positionFrom = { ['x'] = -1593.9385986328, ['y'] = 5204.7387695313, ['z'] = 4.3100919723511, nom = "~r~Comprar Cigarros"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},		

	["muambaCompra"] = {
		positionFrom = { ['x'] = 1538.7447509766, ['y'] = 6322.232421875, ['z'] = 24.842821121216, nom = "Comprar Muamba"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemHospital"] = {
		positionFrom = { ['x'] = 291.91854858398, ['y'] = -573.09619140625, ['z'] = 43.195407867432, nom = "Garagem~n~~y~Emergência"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["coletarOrgao"] = {
		positionFrom = { ['x'] = -1763.0803222656, ['y'] = -262.7580871582, ['z'] = 48.204750061035, nom = "Coletar Restos Humanos"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	
	
	["venderOrgao"] = {
		positionFrom = { ['x'] = 711.94287109375, ['y'] = 590.91363525391, ['z'] = 129.0509185791, nom = "Vender Restos Humanos"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},

	["mina"] = {
		positionFrom = { ['x'] = -596.28082275391, ['y'] = 2090.650390625, ['z'] = 131.41279602051, nom = "~b~Mina de Diamante"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},		
	
	["processamentoDiamante"] = {
		positionFrom = { ['x'] = 1095.1418457031, ['y'] = -1978.5656738281, ['z'] = 31.014654159546, nom = "~b~Processamento Diamante Bruto"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},

	["vendaDiamante"] = {
		positionFrom = { ['x'] = -630.21575927734, ['y'] = -228.71415710449, ['z'] = 38.057018280029, nom = "~b~Venda de Diamante"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["uniformeUber"] = {
		positionFrom = { ['x'] = -339.9775390625, ['y'] = -1026.5345458984, ['z'] = 30.380081176758, nom = "Uniforme~n~~y~UBER"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemUber"] = {
		positionFrom = { ['x'] = -339.98431396484, ['y'] = -1023.2952880859, ['z'] = 30.380912780762, nom = "Garagem~n~~y~UBER"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["lscustoms"] = {
		positionFrom = { ['x'] = -205.58157348633, ['y'] = -1313.0388183594, ['z'] = 31.125827789307, nom = "~h~Pare o Veículo Aqui~n~Para Ser Atendido"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	
	
	["lscustoms2"] = {
		positionFrom = { ['x'] = -352.95291137695, ['y'] = -135.67283630371, ['z'] = 39.009632110596, nom = "~h~Pare o Veículo Aqui~n~Para Ser Atendido"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["lscustoms3"] = {
		positionFrom = { ['x'] = 728.87670898438, ['y'] = -1088.9276123047, ['z'] = 22.169073104858, nom = "~h~Pare o Veículo Aqui~n~Para Ser Atendido"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["lscustoms4"] = {
		positionFrom = { ['x'] = 112.18360900879, ['y'] = 6625.4213867188, ['z'] = 31.787254333496, nom = "~h~Pare o Veículo Aqui~n~Para Ser Atendido"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["lscustoms5"] = {
		positionFrom = { ['x'] = -1147.8723144531, ['y'] = -1993.5051269531, ['z'] = 13.180252075195, nom = "~h~Pare o Veículo Aqui~n~Para Ser Atendido"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	
	
	["garagemReporter"] = {
		positionFrom = { ['x'] = -545.33984375, ['y'] = -902.10601806641, ['z'] = 23.90803527832, nom = "Garagem~n~~y~Repórter"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["heliportoReporter"] = {
		positionFrom = { ['x'] = -598.85571289063, ['y'] = -933.52178955078, ['z'] = 23.864618301392, nom = "Heliporto~n~~y~Repórter"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["lavagemdedinheiro"] = {
		positionFrom = { ['x'] = 154.82154846191, ['y'] = -1935.1351318359, ['z'] = 20.029973983765, nom = "Lavagem de Dinheiro~n~~r~TAXA DE 60%"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["lavagemdedinheiro2"] = {
		positionFrom = { ['x'] = 429.48492431641, ['y'] = -807.64923095703, ['z'] = 29.491144180298, nom = "Lavagem de Dinheiro~n~~r~TAXA DE 50%"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["coletamaconha"] = {
		positionFrom = { ['x'] = 75.680282592773, ['y'] = -1970.1114501953, ['z'] = 21.12557220459, nom = "Coleta de~n~~r~MACONHA"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["coletacocaina"] = {
		positionFrom = { ['x'] = 183.02368164063, ['y'] = -1268.9936523438, ['z'] = 29.198459625244, nom = "Coleta de~n~~r~COCAÍNA"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},

	["processamentomaconha"] = {
		positionFrom = { ['x'] = -168.75514221191, ['y'] = 920.78088378906, ['z'] = 235.6556854248, nom = "Processamento de~n~~r~MACONHA"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},
	
	["processamentococaina"] = {
		positionFrom = { ['x'] = -429.71636962891, ['y'] = 6162.9033203125, ['z'] = 31.478199005127, nom = "Processamento de~n~~r~COCAÍNA"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["vendamaconha"] = {
		positionFrom = { ['x'] = -357.52038574219, ['y'] = 15.983797073364, ['z'] = 47.85474395752, nom = "Venda de~n~~r~MACONHA"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},
	
	["vendacocaina"] = {
		positionFrom = { ['x'] = 1747.4029541016, ['y'] = 3691.7810058594, ['z'] = 34.425769805908, nom = "Venda de~n~~r~COCAÍNA"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},
	
	["fardasPM"] = {
		positionFrom = { ['x'] = 459.09115600586, ['y'] = -992.39575195313, ['z'] = 30.689584732056, nom = "~g~CASO O SEU CABELO FIQUE VERDE~w~~n~Menu K > Player > Desbugar Rosto"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["atendimentomedicoEArsenal"] = {
		positionFrom = { ['x'] = 459.09115600586, ['y'] = -992.39575195313, ['z'] = 30.689584732056, nom = "~g~CASO O SEU CABELO FIQUE VERDE~w~~n~Menu K > Player > Desbugar Rosto"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["transportadordevalores"] = {
		positionFrom = { ['x'] = 236.95153808594, ['y'] = 217.52500915527, ['z'] = 106.28678131104, nom = "~g~Pegue aqui o malote~n~ Senhor Transportador de Valores"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	
	
	["malote"] = {
		positionFrom = { ['x'] = 230.02793884277, ['y'] = 123.08251190186, ['z'] = 102.59970092773, nom = "~g~Pegue o Malote para entrega~n~No Banco Central"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	
	
	["garagemMecanico"] = {
		positionFrom = { ['x'] = 407.90139770508, ['y'] = -1633.9783935547, ['z'] = 29.291948318481, nom = "Garagem~n~~y~Mecânico"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["ferramentasMecanico"] = {
		positionFrom = { ['x'] = 409.40014648438, ['y'] = -1622.8853759766, ['z'] = 29.291946411133, nom = "Ferramentas~n~~y~Mecânico"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},

	["juntacomercial"] = {
		positionFrom = { ['x'] = -268.3522644043, ['y'] = -962.01696777344, ['z'] = 31.223133087158, nom = "~y~Abrir Empresa"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},
	
	["uniformeSamu"] = {
		positionFrom = { ['x'] = 431.79244995117, ['y'] = -415.21597290039, ['z'] = 47.598628997803, nom = "Uniforme~n~~y~SAMU"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	
	
	["kitmedicoBase"] = {
		positionFrom = { ['x'] = 436.56005859375, ['y'] = -411.90924072266, ['z'] = 47.598651885986, nom = "Kit Médico~n~~y~SAMU"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},

	["garagemCarros"] = {
		positionFrom = { ['x'] = -2530.109375, ['y'] = 2334.3012695313, ['z'] = 33.059906005859, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemCarros2"] = {
		positionFrom = { ['x'] = 2576.7629394531, ['y'] = 403.1061706543, ['z'] = 108.45693206787, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemCarros3"] = {
		positionFrom = { ['x'] = -378.77001953125, ['y'] = -110.93278503418, ['z'] = 38.697410583496, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemCarros4"] = {
		positionFrom = { ['x'] = -580.55767822266, ['y'] = 316.67123413086, ['z'] = 84.783363342285, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemCarros5"] = {
		positionFrom = { ['x'] = 1404.8968505859, ['y'] = 1118.7971191406, ['z'] = 114.83769226074, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	
	["garagemCarros6"] = {
		positionFrom = { ['x'] = 151.99737548828, ['y'] = -1309.5081787109, ['z'] = 29.202308654785, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemCarros7"] = {
		positionFrom = { ['x'] = 497.71151733398, ['y'] = -1335.3879394531, ['z'] = 29.327247619629, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemCarros8"] = {
		positionFrom = { ['x'] = 1220.6368408203, ['y'] = 2710.6381835938, ['z'] = 38.005794525146, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemCarros9"] = {
		positionFrom = { ['x'] = 1930.3410644531, ['y'] = 3745.3630371094, ['z'] = 32.30867767334, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemCarros10"] = {
		positionFrom = { ['x'] = -138.35879516602, ['y'] = 6353.3129882813, ['z'] = 31.487783432007, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemCarros11"] = {
		positionFrom = { ['x'] = -829.64593505859, ['y'] = 158.36608886719, ['z'] = 68.864730834961, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemCarros12"] = {
		positionFrom = { ['x'] = -297.95516967773, ['y'] = -991.01470947266, ['z'] = 31.080604553223, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemCarros13"] = {
		positionFrom = { ['x'] = 212.30700683594, ['y'] = -798.68682861328, ['z'] = 30.877960205078, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemCarros14"] = {
		positionFrom = { ['x'] = 1376.1893310547, ['y'] = -740.61248779297, ['z'] = 67.232833862305, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemCarros15"] = {
		positionFrom = { ['x'] = 764.24114990234, ['y'] = -306.45928955078, ['z'] = 59.946491241455, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},

	["garagemCarros16"] = {
		positionFrom = { ['x'] = 446.3591003418, ['y'] = -1783.3962402344, ['z'] = 28.566579818726, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemCarros17"] = {
		positionFrom = { ['x'] = -797.47314453125, ['y'] = 0.15716552734, ['z'] =127.32711791992, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemCarros18"] = {
		positionFrom = { ['x'] = -795.96862792969, ['y'] = 304.84030151367, ['z'] = 85.700485229492, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemCarros19"] = {
		positionFrom = { ['x'] = 1728.5637207031, ['y'] = 3313.8908691406, ['z'] = 41.223480224609, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemCarros20"] = {
		positionFrom = { ['x'] = -51.9446144104, ['y'] = -786.52667236328, ['z'] = 44.074012756348, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemCarros21"] = {
		positionFrom = { ['x'] = -836.31384277344, ['y'] = 114.28999328613, ['z'] = 55.355060577393, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	

	["garagemCarros22"] = {
		positionFrom = { ['x'] = 11.120021820068, ['y'] = 548.63977050781, ['z'] = 175.96977233887, nom = "~n~~y~Garagem"},
		positionTo = { ['x'] = 238.91900006738281, ['y'] = -334.109400000006655273, ['z'] = -118.797869755566767346801758, nom = ""},
	},	
	

	
}

Drawing = setmetatable({}, Drawing)
Drawing.__index = Drawing


function Drawing.draw3DText(x,y,z,textInput,fontId,scaleX,scaleY,r, g, b, a)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*20
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov

    SetTextScale(scaleX*scale, scaleY*scale)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(r, g, b, a)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x,y,z+2, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

function Drawing.drawMissionText(m_text, showtime)
    ClearPrints()
    SetTextEntry_2("STRING")
    AddTextComponentString(m_text)
    DrawSubtitleTimed(showtime, 1)
end

function msginf(msg, duree)
    duree = duree or 500
    ClearPrints()
    SetTextEntry_2("STRING")
    AddTextComponentString(msg)
    DrawSubtitleTimed(duree, 1)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(2)
		local pos = GetEntityCoords(GetPlayerPed(-1), true)

		for k, j in pairs(TeleportFromTo) do

			--msginf(k .. " " .. tostring(j.positionFrom.x), 15000)
			if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 150.0)then
				DrawMarker(100, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, .801, 255, 255, 255,255, 0, 0, 0,0)
				if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 5.0)then
					Drawing.draw3DText(j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1.100, j.positionFrom.nom, 1, 0.2, 0.1, 255, 255, 255, 215)
					if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 2.0)then
						ClearPrints()
						SetTextEntry_2("STRING")
						AddTextComponentString("".. j.positionFrom.nom)
						DrawSubtitleTimed(2000, 1)
					end
				end
			end

			if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 150.0)then
				DrawMarker(100, j.positionTo.x, j.positionTo.y, j.positionTo.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, .801, 255, 255, 255,255, 0, 0, 0,0)
				if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 5.0)then
					Drawing.draw3DText(j.positionTo.x, j.positionTo.y, j.positionTo.z - 1.100, j.positionTo.nom, 1, 0.2, 0.1, 255, 255, 255, 215)
					if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 2.0)then
						ClearPrints()
						SetTextEntry_2("STRING")
						AddTextComponentString("".. j.positionTo.nom)
						DrawSubtitleTimed(2000, 1)
					end
				end
			end
		end
	end
end)


