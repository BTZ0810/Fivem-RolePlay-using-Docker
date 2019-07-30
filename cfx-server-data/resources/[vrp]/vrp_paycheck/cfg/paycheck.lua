
local cfg = {}

-- paycheck and bill for users
cfg.message_paycheck = "Você recebeu seu salario: ~g~$" -- message that will show before payment of salary
cfg.message_bill = "Pagamento de contas: ~r~$" -- message that will show before payment of bill
cfg.post = "." -- message that will show after payment

cfg.bank = true -- if true money goes to bank, false goes to wallet

cfg.minutes_paycheck = 30 -- minutes between payment for paycheck
cfg.minutes_bill = 30 -- minutes between withdrawal for bill

cfg.paycheck_title_picture = "Banco do Brasil" -- define title for paycheck notification picture
cfg.paycheck_picture = "CHAR_BANK_MAZE" -- define paycheck notification picture want's to display
cfg.bill_title_picture = "Compania de Seguro" -- define title for bill notification picture
cfg.bill_picture = "CHAR_MP_MORS_MUTUAL" -- define bill notification picture want's to display

cfg.paycheck = { -- ["permission"] = paycheck
  ["recruta.paycheck"] = 3000,
  ["soldado.paycheck"] = 4080,
  ["cabo.paycheck"] = 4560,
  ["tsargento.paycheck"] = 5220,
  ["ssargento.paycheck"] = 6000,
  ["psargento.paycheck"] = 6840,
  ["subtenente.paycheck"] = 8820,
  ["aspirante.paycheck"] = 9090,
  ["stenente.paycheck"] = 9450,
  ["ptenente.paycheck"] = 10050,
  ["capitao.paycheck"] = 11820,
  ["major.paycheck"] = 14100,
  ["tcoronel.paycheck"] = 17130,
  ["coronel.paycheck"] = 23220,
  ["agente.paycheck"] = 23220,
  ["investigador.paycheck"] = 23220,
  ["delegado.paycheck"] = 23220,
--[""] = 0,
  ["emergency.paycheck"] = 2000,
  ["taxi.paycheck"] = 800,
  ["repair.paycheck"] = 800,
  ["bankdriver.paycheck"] = 1200,
  ["diretorchefe.paycheck"] = 15000,
  ["delivery.paycheck"] = 500
}

cfg.bill = { -- ["permission"] = withdrawal
	["recruta.paycheck"] = 300,
	["soldado.paycheck"] = 400,
	["cabo.paycheck"] = 450,
	["tsargento.paycheck"] = 500,
	["ssargento.paycheck"] = 600,
	["psargento.paycheck"] = 620,
	["subtenente.paycheck"] = 800,
	["aspirante.paycheck"] = 900,
	["stenente.paycheck"] = 1000,
	["ptenente.paycheck"] = 1100,
	["capitao.paycheck"] = 1200,
	["major.paycheck"] = 1400,
	["tcoronel.paycheck"] = 1700,
	["coronel.paycheck"] = 2300,
	["agente.paycheck"] = 2300,
	["investigador.paycheck"] = 2300,
	["delegado.paycheck"] = 2300,
--[""] = 0,
  ["emergency.paycheck"] = 150,
  ["taxi.paycheck"] = 125,
  ["repair.paycheck"] = 100,
  ["bankdriver.paycheck"] = 220,
  ["diretorchefe.paycheck"] = 2500,
  ["delivery.paycheck"] = 350
}

return cfg

