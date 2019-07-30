
local cfg = {}

-- minimum capital to open a business
cfg.minimum_capital = 10000000

-- capital transfer reset interval in minutes
-- default: reset every 24h
cfg.transfer_reset_interval = 1440

-- commerce chamber {blipid,blipcolor}
cfg.blip = {431,70} 

-- positions of commerce chambers
cfg.commerce_chambers = {
  {-268.3522644043,-962.01696777344,31.223133087158}
}

return cfg
