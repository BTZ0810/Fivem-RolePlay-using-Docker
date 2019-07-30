-- this file is used to define additional static blips and markers to the map
-- this file is used to define additional static blips and markers to the map
-- this file is used to define additional static blips and markers to the map
-- some lists: https://wiki.gtanet.work/index.php?title=Blips

local cfg = {}

-- list of blips
-- {x,y,z,idtype,idcolor,text}
cfg.blips = {
  {-480.63885498047,5984.1459960938,32.097984313965, 43, 47, "Heliporto"},
  
  --lenhador
  {-800.26184082031,5403.6264648438,34.119697570801, 78, 3, "~b~Lenhador - Comprar Madeira"},
  {-410.35720825195,2962.4812011719,25.029891967773, 78, 3, "~b~Lenhador - Vender Madeira"},
  
  --traficante de órgãos
  {-1763.2978515625,-262.98330688477,48.18030166626,310,1,"~r~Tráfico de Órgãos"},
  
  --contrabandista
  {-1593.8466796875,5204.7993164063,4.3100881576538, 501, 1, "~r~Contrabandista - Comprar Cigarros"},
  
  --minerador de diamantes
  {-596.28082275391,2090.650390625,131.41279602051, 78, 3, "~b~Diamante - Mina"},
  {-1035.3331298828,-1146.3178710938,2.1585986614227, 364, 3, "~b~Diamante - Lapidação"},
  {-630.31927490234,-228.67762756348,38.057018280029, 431, 3, "~b~Diamante - Venda"},
  
  --drogas
  {2193.7133789063,5599.4174804688,53.711864471436,496, 1,"~r~ Compra de Drogas - Maconha"},
  {771.99127197266,-259.89730834961,68.945854187012,496, 1,"~r~ Venda de Drogas - Maconha"},
  {-74.125541687012,6220.6455078125,31.089849472046, 51, 1,"~r~ Compra de Drogas - Cocaina"},
  {1346.505859375,-786.40679931641,67.769485473633, 51, 1,"~r~ Venda de Drogas - Cocaina"},
  {1389.2108154297,3605.0244140625,38.941890716553, 468, 1,"~r~ Compra de Drogas - Metanfetamina"},
  
  {1123.3653564453,2627.6721191406,37.993724822998, 158, 1,"~r~ Peças para Armas"},
  
  {977.0712890625,-103.90280914307,74.845169067383, 500, 1,"~r~ Lavagem de Dinheiro - 10% de Taxa"},
  {-1053.7478027344,-230.57955932617,44.020950317383, 500, 1,"~r~ Lavagem de Dinheiro - 50% de Taxa"},
  
  --hacker
  {1275.7307128906,-1710.5224609375,54.771453857422, 80, 1,"~r~Hacker - Coletar Cartões"},
  
  --facções
  {976.77221679688,-99.891220092773,74.870132446289, 226, 1,"~r~Moto Clube"},
  
  --empregos legais
  {179.16873168945,-2210.9465332031,5.9963974952698, 318, 3, "~b~Reciclagem"},
  {-339.1393737793,-1024.0324707031,29.988176345825, 198, 3, "~b~UBER"},
  {401.52920532227,-1631.716796875,29.291864395142, 446, 3, "~b~Garagem do Mecânico"},
  
  --estabelecimentos
  {-1388.7412109375, -586.31683349609, 30.219205856323, 93, 73, "Bahamas Mamas."},
  
  --empregos ilegais
  {1333.4770507813,4268.1967773438,30.177610397339, 73, 3, "Roupa de Mergulho"},
  {1303.265625,4038.1279296875,-0.022800702601671, 456, 1, "~r~Tartarugas - Coletar" },
  {973.62884521484,-2167.2248535156,29.461545944214, 456, 1, "~r~Tartarugas - Vender" },
  
  -- Banco
  {150.266, -1040.203, 29.374, 108, 25, "Banco VRP"},
  {-1212.980,  -330.841, 37.787, 108, 25, "Banco VRP"},
  {-2962.582,  482.627, 15.703, 108, 25, "Banco VRP"},
  {-112.202,  6469.295, 31.626, 108, 25, "Banco VRP"},
  {314.187,  -278.621, 54.170, 108, 25, "Banco VRP"},
  {-351.534,  -49.529, 49.042, 108, 25, "Banco VRP"},
  {241.727,  220.706, 106.286, 108, 25, "Banco VRP"},
  
  -- Police Stations
  {425.130, -979.558, 30.711, 60, 2, "~g~Delegacia de Policia"},
  {1852,3687.,34, "~g~Delegacia de Policia"},
  {-446,6012.,31, "~g~Delegacia de Policia"},
  {1679.049, 2513.711, 45.565, 285, 1, "~r~Penitenciária"},
  
  -- Hospitals
  {427.22036743164,-404.61895751953,47.598701477051, 61, 25, "~g~Base do SAMU"},
  {1839.0307617188,3673.3779296875,34.276702880859, 61, 25, "Hospital"},
  {358.92150878906,-589.69885253906,28.800045013428, 61, 25, "Hospital"},
  {298.60885620117,-583.91088867188,43.260852813721, 61, 25, "Hospital"},
  {1151.4211425781,-1529.5603027344,35.367755889893, 61, 25, "Hospital"},
  {-676.94653320313,312.48385620117,83.084197998047, 61, 25, "Hospital"},
  
  
  {-1202.96252441406,-1566.14086914063,4.61040639877319,311,17,"~o~Academia"},
  --Rede Globo
  {-545.40747070313,-902.18463134766,23.907133102417,184,3,"~b~Emissora de TV"},
}

-- list of markers
-- {x,y,z,sx,sy,sz,r,g,b,a,visible_distance}
cfg.markers = {
}

return cfg