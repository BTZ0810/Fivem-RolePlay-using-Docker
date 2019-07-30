local cfg = {}

-- start wallet/bank values
cfg.open_wallet = 15000
cfg.open_bank = 150

-- money display css
cfg.display_css = [[
.div_money{
position: relative;
    float: right;
    top: 40px;
    background-color: #111111;
    padding: 2px 11px 4px;
    padding-right: 19px;
    right: 22px;
    font-size: 18px;
    font-family: arial;
    font-weight: 600;
    color: #d6d3d3;

    border-radius: 4px;
    border-bottom: 4px solid #0e6916;
}

.div_money .symbol{
  content: url('https://i.imgur.com/f5tfCp1.png');
  width: 27px;
  margin-bottom: -7px;
  position: relative;
  left: -5px;

}
]]

return cfg
