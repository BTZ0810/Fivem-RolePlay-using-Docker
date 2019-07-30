
local cfg = {}

-- city hall position
cfg.city_hall = {-266.82794189453,-956.41778564453,31.223134994507}

-- cityhall blip {blipid,blipcolor}
cfg.blip = {498, 4}

-- cost of a new identity
cfg.new_identity_cost = 350

-- phone format (max: 20 chars, use D for a random digit)
cfg.phone_format = "DDDDDDD"
-- cfg.phone_format = "06DDDDDDDD" -- another example for cellphone in France


-- config the random name generation (first join identity)
-- (I know, it's a lot of names for a little feature)
-- (cf: http://names.mongabay.com/most_common_surnames.htm)
cfg.random_first_names = {
  "Sem",
}

cfg.random_last_names = {
  "Registro",
}

return cfg
