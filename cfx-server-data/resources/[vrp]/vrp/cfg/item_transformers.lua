
local cfg = {}

-- define static item transformers
-- see https://github.com/ImagicTheCat/vRP to understand the item transformer concept/definition

cfg.item_transformers = {
  -- example of harvest item transformer
  {
    name="Academia", -- menu name
    r=255,g=125,b=0, -- color
    max_units=1000,
    units_per_minute=1000,
    x=-1202.96252441406,y=-1566.14086914063,z=4.61040639877319, -- pos
    radius=7.5, height=1.5, -- area
    recipes = {
      ["Força"] = { -- action name
        description="Aumente sua força e stamina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={}, -- items given per unit
        aptitudes={ -- optional
          ["physical.strength"] = 1 -- "group.aptitude", give 1 exp per unit
        }
      }
    }
  },
  {
    name="Cofre", -- menu name
    permissions = {"bankdriver.money"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=200,
    units_per_minute=200,
    x=1.7533090114594, y = -672.1826171875, z = 16.130626678467, -- pos
    radius=3, height=1.5, -- area
    recipes = {
      ["Coletar Malote"] = { -- action name
        description="Coletar Malote.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["bank_money"] = 1
        }
      }
    }
  },
  --MINERADOR COMEÇO--   
  {
    name="Mina", -- Nome do menu
    permissions = {"minerar"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=500,
    units_per_minute=50,
    x=-596.43072509766,y=2090.7236328125,z=131.4126739502, -- Localização
    radius=7.5, height=1.5, -- area
    recipes = {
      ["Minerar"] = { -- Nome da ação
        description="Minerar", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["diamante_bruto"] = 1
        }
      }
    }
  },  
  {
    name="Lapidação", -- Nome do menu
    permissions = {"minerar"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=500,
    units_per_minute=50,
    x=-1035.3331298828,y=-1146.3178710938,z=2.1585986614227, -- Localização
    radius=3.5, height=1.5, -- area
    recipes = {
      ["Lapidar Diamante Bruto"] = { -- Nome da ação
        description="Lapidando Diamante", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={
          ["diamante_bruto"] = 1
		}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
		  ["diamante"] = 1
        }
      }
    }
  }, 

  {
    name="Venda de Diamante", -- Nome do menu
    --permissions = {"minerar"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=500,
    units_per_minute=50,
    x=-630.34429931641,y=-229.12178039551,z=38.057052612305, -- Localização
    radius=3.5, height=1.5, -- area
    recipes = {
      ["Vender Diamante"] = { -- Nome da ação
        description="Lapidando Diamante", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=300, -- Dinheiro ganho por unidade
        reagents={
          ["diamante"] = 1
		}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
        }
      }
    }
  }, 
  --MINERADOR FINAL--
  --LENHADOR COMEÇO--
  {
    name="Madeireira", -- menu name
    permissions = {"coletar.lenha"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=-800.14215087891,y=5403.4541015625,z=34.126468658447, -- pos
    radius=3.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Comprar Madeira"] = { -- action name
        description="Comprando Madeira.", -- action description
        in_money=100, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
	    },
        products={ -- items given per unit
          ["madeira"] = 1
        }
      }
    }
  },  

  {
    name="Madeireira", -- menu name
    permissions = {"vender.lenha"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=-410.35720825195,y=2962.4812011719,z=25.029891967773, -- pos
    radius=3.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender Madeira"] = { -- action name
        description="Vendendo Madeira.", -- action description
        in_money=0, -- money taken per unit
        out_money=300, -- money earned per unit
        reagents={  -- items taken per unit
          ["madeira"] = 1
	    },
        products={ -- items given per unit
        }
      }
    }
  }, 
  --LENHADOR FINAL--  
  --HACKER COMEÇO--   
  {
    name="Coletar Cartões", -- Nome do menu
    permissions = {"hacker.credit_cards"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=1000,
    units_per_minute=100,
    x=1275.7307128906,y=-1710.5224609375,z=54.771453857422, -- Localização
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Coletar Cartões"] = { -- Nome da ação
        description="Cartões de Crédito Clonado.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={
		}, -- Itens colhidos por unidade
        products={
          ["ccinfo"] = 1 -- Nome do produto fornecido por unidade
        }
      }
    }
  },
  --HACKER FINAL--
  --MACONHA COMEÇO--
  {
    name="Comprar Tablete", -- menu name
    permissions = {"comprar.drogas"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=2193.7133789063,y=5599.4174804688,z=53.711864471436, -- pos
    radius=3.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Comprar Tablete"] = { -- action name
        description="Comprar Tablete.", -- action description
        in_money=100, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
	    },
        products={ -- items given per unit
          ["tablete_maconha"] = 1
        }
      }
    }
  },
  {
    name="Comprar Tablete", -- menu name
    permissions = {"comprar.drogas"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=771.99127197266,y=-259.89730834961,z=68.945854187012, -- pos
    radius=3.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender Tablete"] = { -- action name
        description="Vender Tablete.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["tablete_maconha"] = 1
	    },
        products={ -- items given per unit
          ["dirty_money"] = 500
        }
      }
    }
  },
  --MACONHA FINAL--
  --METANFETAMINA COMEÇO--
  {
    name="Comprar Metanfetamina", -- menu name
    permissions = {"comprar.drogas"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=1389.2108154297,y=3605.0244140625,z=38.941890716553, -- pos
    radius=3.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Comprar Metanfetamina"] = { -- action name
        description="Comprar Metanfetamina.", -- action description
        in_money=100, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
	    },
        products={ -- items given per unit
          ["metanfetamina"] = 1
        }
      }
    }
  },
  --METANFETAMINA FINAL--
  --COCAINA COMEÇO--
  {
    name="Comprar Tablete", -- menu name
    permissions = {"comprar.drogas"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=-74.125541687012,y=6220.6455078125,z=31.089849472046, -- pos
    radius=3.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Comprar Cocaina"] = { -- action name
        description="Comprar Cocaina.", -- action description
        in_money=100, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
	    },
        products={ -- items given per unit
          ["tablete_cocaina"] = 1
        }
      }
    }
  },
  {
    name="Comprar Tablete", -- menu name
    permissions = {"comprar.drogas"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=1346.505859375,y=-786.40679931641,z=67.769485473633, -- pos
    radius=3.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender Cocaina"] = { -- action name
        description="Venda Cocaina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["tablete_cocaina"] = 1
	    },
        products={ -- items given per unit
          ["dirty_money"] = 500
        }
      }
    }
  },
  --COCAINA FINAL--
  --TARTARUGA COMEÇO--
  {
    name="Capturar tartaruga", -- menu name
    permissions = {"contrabando.tartaruga"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=1303.265625,y=4038.1279296875,z=-0.022800702601671, -- pos
    radius=5.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Capturar Tartaruga"] = { -- action name
        description="Capturar Tartaruga.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
	    },
        products={ -- items given per unit
          ["tartaruga"] = 1
        }
      }
    }
  },
  {
    name="Vender tartaruga", -- menu name
    permissions = {"contrabando.tartaruga"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=973.62884521484,y=-2167.2248535156,z=29.461545944214, -- pos
    radius=5.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender Tartaruga"] = { -- action name
        description="Vender Tartaruga.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
          ["tartaruga"] = 1
		}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["dirty_money"] = 500
        }
      }
    }
  },
  --TARTARUGA FINAL--
  --CONTRABANDISTA COMEÇO--
  {
    name="Contrabandista", -- Nome do menu
    permissions = {"comprar.cigarro"}, -- you can add permissions
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=50,
    x=-1593.8466796875,y=5204.7993164063,z=4.3100881576538, -- Localização    
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Comprar Cigarro"] = { -- Nome da ação
        description="Comprar Cigarro.", -- Descrição do produto a se colher
        in_money=50, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={
		}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["carteira_cigarro"] = 1
        }
      }
    }
  },
  --CONTRABANDISTA FINAL--
  --FACÇÃO ARMAS COMEÇO--
  {
    name="Coletar Pedaços", -- Nome do menu
    permissions = {"fabricar.armas"}, -- you can add permissions
    r=0,g=200,b=0, -- cor
    max_units=50,
    units_per_minute=1,
    x=1123.5740966797,y=2627.5859375,z=37.99650955200, -- Localização    
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Pedaço da Pistola"] = { -- Nome da ação
        description="Pedaços da Pistola.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={
		}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["pistol_parts"] = 1
        }
      },
	  ["Pedaço da Shotgun"] = { -- Nome da ação
        description="Pedaços da  Shotgun.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={
		}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["shotgun_parts"] = 1
        }
      },
	  ["Pedaço da AK47"] = { -- Nome da ação
        description="Pedaços da  Rifle AK47.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={
		}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["ak47_parts"] = 1
        }
      },
    }
  },
  {
    name="Fabrica de Armas", -- Nome do menu
    permissions = {"fabricar.armas"}, -- you can add permissions
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=50,
    x=834.95062255859,y=-3244.9694824219,z=-98.699165344238, -- Localização    
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Fabricar Pistola"] = { -- Nome da ação
        description="Fabrique Pistolas.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={
          ["pistol_parts"] = 15
		}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["WEAPON_PISTOL"] = 1
        }
      },
	  ["Fabricar Shotgun"] = { -- Nome da ação
        description="Fabrique Shotgun.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={
          ["shotgun_parts"] = 15
		}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["WEAPON_PUMPSHOTGUN"] = 1
        }
      },
	  ["Fabricar AK47"] = { -- Nome da ação
        description="Fabrique Rifle AK47.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={
          ["ak47_parts"] = 45
		}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["WEAPON_ASSAULTRIFLE"] = 1
        }
      },
    }
  },
  --FACÇÃO ARMAS FINAL--
  --TRAFICANTE DE ÓRGÃOS COMEÇO--
  {
    name="Cemitério", -- Nome do menu
    permissions = {"coletar.orgao"}, -- you can add permissions
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=50,
    x=-1763.2978515625,y=-262.98330688477,z=48.18030166626, -- Localização    
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Inspecionar Difunto"] = { -- Nome da ação
        description="Inspecionar Difunto.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={
		}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["orgaos"] = 1
        }
      }
    }
  },
  --TRAFICANTE DE ÓRGÃOS FINAL--
  --LAVAGEM DE DINHEIRO COMEÇO--
  {
    name="Lavagem de Dinheiro", -- Nome do menu
    --permissions = {"coletar.orgao"}, -- you can add permissions
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=50,
    x=977.0712890625,y=-103.90280914307,z=74.845169067383, -- Localização    
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Lavar Dinheiro"] = { -- Nome da ação
        description="Lave o dinheiro com uma taxa de 10%.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=900, -- Dinheiro ganho por unidade
        reagents={
          ["dirty_money"] = 1000
		}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
        }
      }
    }
  },
  {
    name="Lavagem de Dinheiro", -- Nome do menu
    --permissions = {"coletar.orgao"}, -- you can add permissions
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=50,
    x=-1053.7478027344,y=-230.57955932617,z=44.020950317383, -- Localização    
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Lavar Dinheiro"] = { -- Nome da ação
        description="Lave o dinheiro com uma taxa de 50%.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=500, -- Dinheiro ganho por unidade
        reagents={
          ["dirty_money"] = 1000
		}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
        }
      }
    }
  },
  --LAVAGEM DE DINHEIRO FINAL--


  {
    name="OAB", -- menu name
    permissions = {"carteira.oab"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=-1910.6088867188,y=-571.90643310547,z=19.097219467163, -- pos
    radius=5.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Pegar Carteira OAB"] = { -- action name
        description="Carteira OAB.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
		},
        products={ -- items given per unit
		  ["oab"] = 1
        }
      }
    }
  },
}



-- define multiple static transformers with postions list
local weedplants = {
}
for k,v in pairs(weedplants) do
  local plant = {
    name="Planta de Maconha", -- menu name
    --permissions = {"harvest.weed"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=v[1],y=v[2],z=v[3], -- pos
    radius=5.0, height=1.5, -- area
    recipes = {
      ["Colher"] = { -- action name
        description="Colher maconha.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["weed"] = 1
        }
      }
    }
  }
  table.insert(cfg.item_transformers, plant)
end

local warehouses = {
  {-1111.2841796875,4937.4052734375,218.386306762695},
  {1539.01794433594,1704.29174804688,109.659622192383},
  {981.412841796875,-1805.70349121094,35.4845695495605}
}
for k,v in pairs(warehouses) do
  local warehouse = {
    name="Oficina de armas", -- menu name
    permissions = {"build.gun"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=10,
    units_per_minute=1,
    x=v[1],y=v[2],z=v[3], -- pos
    radius=5.0, height=1.5, -- area
    recipes = {
      ["Build Pistol"] = { -- action name
        description="Construir pistola.", -- action description
        in_money=1500, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
		  ["pistol_parts"] = 1
		}, -- items taken per unit
        products={ -- items given per unit
          ["wbody|WEAPON_PISTOL"] = 1
        }
      },
      ["Build Shotgun"] = { -- action name
        description="Construir shotgun.", -- action description
        in_money=3000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
		  ["shotgun_parts"] = 1
		}, -- items taken per unit
        products={ -- items given per unit
          ["wbody|WEAPON_PUMPSHOTGUN"] = 1
        }
      },
      ["Build SMG"] = { -- action name
        description="Construir submachinegun.", -- action description
        in_money=5000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
		  ["smg_parts"] = 1
		}, -- items taken per unit
        products={ -- items given per unit
          ["wbody|WEAPON_SMG"] = 1
        }
      }
    }
  }
  table.insert(cfg.item_transformers, warehouse)
end

-- define transformers randomly placed on the map
cfg.hidden_transformers = {
  ["weed plant"] = {
    def = {
      name="Weed Plant", -- menu name
      r=0,g=200,b=0, -- color
      max_units=50,
      units_per_minute=0,
      x=0,y=0,z=0, -- pos
      radius=0, height=0, -- area
      recipes = {
      }
    },
    positions = weedplants
  },
  ["gun warehouse"] = {
    def = {
      name="Gun Warehouse", -- menu name
      r=0,g=200,b=0, -- color
      max_units=50,
      units_per_minute=0,
      x=0,y=0,z=0, -- pos
      radius=0, height=0, -- area
      recipes = {
      }
    },
    positions = warehouses
  }
}

-- time in minutes before hidden transformers are relocated (min is 5 minutes)
cfg.hidden_transformer_duration = 30-- 12 hours -- 5*24*60 -- 5 days

-- configure the information reseller (can sell hidden transformers positions)
cfg.informer = {
  infos = {
    ["weed plant"] = 10000,
    ["gun warehouse"] = 25000
  },
  positions = {
    {1821.12390136719,3685.9736328125,34.2769317626953},
    {1804.2958984375,3684.12280273438,34.217945098877}
  },
  interval = 30, -- interval in minutes for the reseller respawn
  duration = 10, -- duration in minutes of the spawned reseller
  blipid = 133,
  blipcolor = 2
}

return cfg
