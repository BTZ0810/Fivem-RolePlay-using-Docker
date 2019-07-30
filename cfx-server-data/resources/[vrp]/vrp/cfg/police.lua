
local cfg = {}

-- PCs positions
cfg.pcs = {
  {442.04299926758, -977.76538085938, 30.689607620239},
  {1853.1212158203,3690.1049804688,34.267070770264},
}

-- vehicle tracking configuration
cfg.trackveh = {
  min_time = 60, -- min time in seconds
  max_time = 300, -- max time in seconds
  service = "police" -- service to alert when the tracking is successful
}

-- wanted display
cfg.wanted = {
  blipid = 458,
  blipcolor = 38,
  service = "police"
}

-- illegal items (seize)
cfg.seizable_items = {
  "dirty_money",
  "tablete_maconha",
  "baseado_maconha",
  "cacaina",
  "folhadecoca",
  "pasta_base_cocaina",
  "tablete_cocaina",
  "pino_cocaina",
  "metanfetamina",
  "cristal_metanfetamina",
  "maconha",
  "pino_cocaina",
  "carteira_cigarro",
  "ccinfo",
  "ak47_parts",
  "shotgun_parts",
  "pistol_parts",
  "tartaruga",
  "capivara",
  "municao_caca",
}

-- jails {x,y,z,radius}
cfg.jails = {
  {459.485870361328,-1001.61560058594,24.914867401123,2.1},
  {459.305603027344,-997.873718261719,24.914867401123,2.1},
  {459.999938964844,-994.331298828125,24.9148578643799,1.6},
  {1693.8347167969,2504.6379394531,-78.011207580566,1.6},
  {1693.9188232422,2492.7983398438,-78.008407592773,1.6},
  {1699.5046386719,2492.8659667969,-78.008819580078,1.6},
  {1703.2939453125,2492.5808105469,-78.008819580078,1.6},
  {1703.2554931641,2504.2495117188,-78.008819580078,1.6},
  {1700.0571289063,2504.3500976563,-78.008819580078,1.6},
  {1697.05859375,2504.4445800781,-78.008819580078,1.6},
}

-- fines
-- map of name -> money
--[[cfg.fines = {
  ["Desacato."] = 0,
  ["Fuga"] = 2500,
  ["Sem habilitação"] = 5000,  
  ["Assalto a Civil"] = 5000,
  ["Assalto a Civil."] = 0,
  ["Porte ilegal de arma"] = 10000,
  ["Porte ilegal de arma."] = 0,
  ["Tráfico de drogas"] = 10000,
  ["Tráfico de drogas."] = 0,
  ["Alta Velocidade"] = 5000,
  ["Alta Velocidade."] = 0, 
  ["Direção Perigosa"] = 5000,
  ["Direção Perigosa."] = 0,
  ["Ultrapassar sinal vermelho"] = 1000,
  ["Ultrapassar sinal vermelho."] = 0, 
  ["Furto/Roubo de veículos."] = 0,
  ["Poluição Sonora"] = 2500,
  ["Poluição Sonora."] = 0,
  ["Assasinato."] = 0,
  ["Tentativa de homicídio."] = 0,
  ["Roubo a Banco."] = 0,
  ["Roubo a Loja."] = 0
}--]]

return cfg
