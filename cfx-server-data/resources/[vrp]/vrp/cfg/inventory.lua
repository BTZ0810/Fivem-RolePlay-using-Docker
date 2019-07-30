
local cfg = {}

cfg.inventory_weight_per_strength = 10 -- weight for an user inventory per strength level (no unit, but thinking in "kg" is a good norm)

-- default chest weight for vehicle trunks
cfg.default_vehicle_chest_weight = 30

-- define vehicle chest weight by model in lower case
--sedã 200
--hatch 130
--esportivo 30
--van 350
--porta malas pequeno 80
--moto sem bau 20
--moto com bau 40
--caminhão de 750 a 2500
cfg.vehicle_chest_weights = {
	["mule"] = 120,
	["rocoto"] = 80,
	["dune"] = 0,
	["hondacivictr"] = 50,
	["sultanrs"] = 50,
	["mobilete"] = 30,
	["150"] = 30,
	["206"] = 50,
	["clio"] = 50,
	["fusca"] = 50,
	["zl12017"] = 100,
	["r8ppi"] = 100,
	["x6m"] = 200,
	["bmci"] = 100,
	["440i"] = 100,
	["fc15"] = 100,
	["italia458"] = 100,
	["r1"] = 30,
	["f4rr"] = 30,
	["gtr"] = 100,
	["hcbr17"] = 30,
	["chevette"] = 50,
	["ds4"] = 50,
	["c7"] = 100,
	["fatboy"] = 30,
	["hayabusa"] = 30,
	["biz25"] = 30,
	["nh2r"] = 30,
	["ttrs"] = 100,
	["zx10r"] = 30,
	["aperta"] = 100,
	["aventadors"] = 100,
	["aperta"] = 100,
}

return cfg
