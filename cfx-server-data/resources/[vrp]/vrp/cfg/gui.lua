
-- gui config file
local cfg = {}

-- additional css loaded to customize the gui display (see gui/design.css to know the available css elements)
-- it is not recommended to modify the vRP core files outside the cfg/ directory, create a new resource instead
-- you can load external images/fonts/etc using the NUI absolute path: nui://my_resource/myfont.ttf
-- example, changing the gui font (suppose a vrp_mod resource containing a custom font)
cfg.css = [[
@font-face {
  font-family: "pcdown";
  src: url(nui://vrp/gui/fonts/pcdown.ttf) format("truetype");
}

@font-face {
  font-family: "bankgothic";
  src: url(nui://vrp/gui/fonts/bankgothic.ttf) format("truetype");
}

body{
  font-family: "Segoe UI";
  font-size: 0.9em;
}
]]

-- list of static menu types (map of name => {.title,.blipid,.blipcolor,.permissions (optional)})
-- static menus are menu with choices defined by vRP.addStaticMenuChoices(name, choices)
cfg.static_menu_types = {
   ["n1_policia_armas"] = {
      title = "Armas Polícia Militar | N1", 
      blipcolor = 0,
	  permissions = {
	    "n1.pm.armas"
	  }
	},
   ["n2_policia_armas"] = {
      title = "Armas Polícia Militar | N2", 
      blipcolor = 0,
	  permissions = {
	    "n2.pm.armas"
	  }
	},
   ["n3_policia_armas"] = {
      title = "Armas Polícia Militar | N3", 
      blipcolor = 0,
	  permissions = {
	    "n3.pm.armas"
	  }
	},
	["n4_policia_armas"] = {
      title = "Armas Polícia Federal | N4", 
      blipcolor = 0,
	  permissions = {
	    "n4.pm.armas"
	  }
	},
	["n5_policia_armas"] = {
      title = "Armas GRPAe | N5", 
      blipcolor = 0,
	  permissions = {
	    "n5.pm.armas"
	  }
	},
	["uberEATS_item1"] = {
      title = "UberEATS", 
      blipcolor = 0,
	  permissions = {
	    "delivery.service"
	  }
	},
	["uberEATS_item2"] = {
      title = "UberEATS", 
      blipcolor = 0,
	  permissions = {
	    "delivery.service"
	  }
	},
	["gariItem"] = {
      title = "GARI", 
      blipcolor = 0,
	  permissions = {
	    "gari.coleta"
	  }
	},
	["minItem"] = {
      title = "MINERADOR", 
      blipcolor = 0,
	  permissions = {
	    "minerar"
	  }
	},
	["correiosItem"] = {
      title = "CORREIOS", 
      blipcolor = 0,
	  permissions = {
	    "correios.pacote"
	  }
	},
	["mcItem"] = {
      title = "MC DONALDS", 
      blipcolor = 0,
	  permissions = {
	    "mc.chapa"
	  }
	},
	["emergency_heal"] = {
      title = "Atendimento Médico", 
      blipcolor = 0,
	  permissions = {
	    "emergency_heal"
	  }
	},
   ["emergency_medkit"] = {
      title = "Arsenal Emergência", 
      blipcolor = 0,
	  permissions = {
	    "emergency.medkit"
	  }
	},
}

-- list of static menu points
cfg.static_menus = {
  {"n1_policia_armas", 943.52514648438,-45.26012802124,78.876647949219},
  {"n2_policia_armas", 943.52514648438,-45.26012802124,78.876647949219},
  {"n3_policia_armas", 943.52514648438,-45.26012802124,78.876647949219},
  {"n4_policia_armas", 943.52514648438,-45.26012802124,78.876647949219},
  {"n5_policia_armas", 943.52514648438,-45.26012802124,78.876647949219},
  {"n1_policia_armas", 1728.3120117188,2506.1630859375,-78.032661437988},
  {"n2_policia_armas", 1728.3120117188,2506.1630859375,-78.032661437988},
  {"n3_policia_armas", 1728.3120117188,2506.1630859375,-78.032661437988},
  {"n4_policia_armas", 1728.3120117188,2506.1630859375,-78.032661437988},
  {"n5_policia_armas", 1728.3120117188,2506.1630859375,-78.032661437988},
  {"n1_policia_armas", 461.31414794922,-981.15582275391,30.689588546753},
  {"n2_policia_armas", 461.31414794922,-981.15582275391,30.689588546753},
  {"n3_policia_armas", 461.31414794922,-981.15582275391,30.689588546753},
  {"n4_policia_armas", 461.31414794922,-981.15582275391,30.689588546753},
  {"n5_policia_armas", 461.31414794922,-981.15582275391,30.689588546753},
  {"n1_policia_armas", 1852.3792724609,3691.7233886719,34.267044067383},
  {"n2_policia_armas", 1852.3792724609,3691.7233886719,34.267044067383},
  {"n3_policia_armas", 1852.3792724609,3691.7233886719,34.267044067383},
  {"n4_policia_armas", 1852.3792724609,3691.7233886719,34.267044067383},
  {"n5_policia_armas", 1852.3792724609,3691.7233886719,34.267044067383},
  {"n1_policia_armas", -450.78329467773,6011.259765625,31.716390609741},
  {"n2_policia_armas", -450.78329467773,6011.259765625,31.716390609741},
  {"n3_policia_armas", -450.78329467773,6011.259765625,31.716390609741},
  {"n4_policia_armas", -450.78329467773,6011.259765625,31.716390609741},
  {"n5_policia_armas", -450.78329467773,6011.259765625,31.716390609741},
  {"emergency_medkit", 436.55111694336,-411.8239440918,47.598648071289}, --BASE DO SAMU
  {"emergency_medkit", 1841.7905273438,3673.8713378906,34.77672958374},
  {"emergency_medkit", 195.54693603516,-1654.0541992188,29.803213119507}, -- BOMBEIRO MILITAR
  {"emergency_heal", 1839.0307617188,3673.3779296875,34.776702880859}, --BASE DO SAMU
  {"emergency_heal", 436.78558349609,-407.00982666016,47.598648071289}, --BASE DO SAMU
  {"emergency_heal", 356.48791503906,-596.64739990234,28.780311584473}, --HOSPITAL EXTERIOR 01
  {"emergency_heal", 298.60885620117,-583.91088867188,43.260852813721}, --HOSPITAL EXTERIOR 02
  {"emergency_heal", 360.5302734375,-585.26788330078,28.823350906372}, --HOSPITAL EXTERIOR 02
  {"emergency_heal", 1151.4211425781,-1529.5603027344,35.367755889893}, --HOSPITAL SUL
  {"emergency_heal", -676.94653320313,312.48385620117,83.084197998047}, --HOSPITAL NORTE
  {"uberEATS_item1", -1143.0932617188,-1720.1563720703,5.3102017402649}, --MC DONALDS
  {"uberEATS_item2", -1146.2377929688,-1721.9981689453,5.2102017402649}, --MC DONALDS
  {"gariItem", 182.07063293457,-2210.9807128906,5.9991369247437},
  {"minItem", 182.07063293457,-2210.9807128906,5.9991369247437},
  {"correiosItem", -231.95678710938,-911.7431640625,32.350802459717},
  {"mcItem", -1146.1350097656,-1706.5987548828,5.2102031707764},
}


return cfg
