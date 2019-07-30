-- define items, see the Inventory API on github

local cfg = {}

-- see the manual to understand how to create parametric items
-- idname = {name or genfunc, description or genfunc, genfunc choices or nil, weight or genfunc}
-- a good practice is to create your own item pack file instead of adding items here
cfg.items = {
--ITENS USADOS NO PROCESSO DA MACONHA
  ["tablete_maconha"] = {"Tablete de Maconha", "1kg de maconha embalada.", nil, 1.000}, -- no choices
  
--ITENS USADOS NO PROCESSO DA COCAINA
  ["tablete_cocaina"] = {"Tablete de Cocaina", "Cocaina em tablete de 1KG.", nil, 1.000}, -- no choices
  
--ITENS USADOS NO PROCESSO DA METANFETAMINA
  ["metanfetamina"] = {"Metanfetamina", "Metanfetamina pronta pra consumo (1Kg).", nil, 1.000}, -- no choices  
  
--ITENS USADOS NA MINERAÇÃO
  ["pedra"] = {"Pedra", "Pedra bruta.", nil, 1.000}, -- no choices
  ["diamante_bruto"] = {"Diamante Bruto", "Diamante para ser lapidado.", nil, 1.000}, -- no choices
  ["diamante"] = {"Diamante", "Diamante pronto para a venda.", nil, 1.000}, -- no choices
  
--ITENS GARI
  ["papelao"] = {"Pedaço de Papelão", "Papelão velho para reciclagem.", nil, 10.000}, -- no choices
  ["latinha_vazia"] = {"Latinha de Alumínio", "Lata de alumínio para reciclagem.", nil, 0.0145}, -- no choices
  ["pet_vazia"] = {"Garrafa PET 2L", "Garrafa pet vazia para reciclagem.", nil, 0.047}, -- no choices
  ["saco_lixo"] = {"Saco de Lixo", "Saco para embalar lixo.", nil, 0.000}, -- no choices
  
--OUTROS ITENS
  ["key_pd_boss"] = {"Chaves do Comandante", "Chave que abre o gabinete do comandante.", nil, 0.01}, -- no choices
  ["key_lspd"] = {"Chaves do DP", "Chave que abre o DP.", nil, 0.01}, -- no choices
  ["oab"] = {"OAB", "Carteira de Advogado.", nil, 0.01}, -- no choices
  ["bank_money"] = {"Malote de Dinheiro", "$.", nil, 1.000}, -- no choices

--CORREIOS
  ["pacote"] = {"Sedex", "Sedex que alguém pagou caro pra entregar, mas você não tá nem aí pra isso.", nil, 10.000}, -- no choices  
  
--CIGARREIRO
  ["carteira_cigarro"] = {"Carteira de Cigarro", "Cigarro paraguaio contrabandeado", nil, 0.150}, -- no choices  
  
--HACKER
  ["ccinfo"] = {"Cartão de Crédito Clonado", "Informações Cartao de Credito clonados de terceiros.", nil, 1.000}, -- no choices
  
--MUAMBA
  ["pendrive"] = {"Pendrive de 8GB", "Pendrive com música do Pablo Vittar, Anitta e outros", nil, 0.150}, -- no choices 
  ["dvd"] = {"DVD Pirata", "DVD de filme pirata, 3 por 10 real", nil, 0.150}, -- no choices   
  ["narguile"] = {"Narguile", "Mata mais que o cigarro (pelo menos é o que dizem)", nil, 0.500}, -- no choices   
  ["essencia"] = {"Essência de Narguile", "5.000x mais perigoso que o cigarro (é o que dizem)", nil, 0.150}, -- no choices   
  ["camiseta"] = {"Camiseta", "Camiseta da Holister", nil, 0.150}, -- no choices   
  ["meia"] = {"Par de Meias", "Meia da mais barata", nil, 0.150}, -- no choices   
  ["chapeu"] = {"Chapéu de Praia", "Não deixa você queimar muito... No sol", nil, 0.150}, -- no choices   
  ["mala"] = {"Mala de Viagem", "Não é cheia de dinheiro igual as de Brasília", nil, 1.000}, -- no choices   
  ["biquini"] = {"Biquini", "A mulherada gosta", nil, 0.150}, -- no choices   
  ["equip_surf"] = {"Equipamento de Surf", "Prancha e outros", nil, 2.000}, -- no choices   
  ["pecas_bicicleta"] = {"Peças de Bicicleta", "Pedal, guidão, pneu, roda, macaquinho", nil, 1.500}, -- no choices   
  ["bone"] = {"Boné", "Boné John John", nil, 0.150}, -- no choices   
  ["oculos"] = {"Óculos", "Óculos RAIBÃ, ORIGINEC", nil, 0.150}, -- no choices    
  
--MOTO CLUBE
  ["ak47_parts"] = {"Parte da AK47","Peça para a fabricação da AK47", nil, 1.000}, -- no choices 
  ["shotgun_parts"] = {"Parte da Shotgun","Peça para a fabricação de Shotgun", nil, 1.000}, -- no choices   
  ["pistol_parts"] = {"Parte da Pistola", "Peça para a fabricação de Pistola Taurus", nil, 1.000}, -- no choices   
  
--CONTRABANDISTA DE ANIMAIS
  ["tartaruga"] = {"Tartaruga","Tartaruga silvestre não legalizada", nil, 5.000}, -- no choices 
  
--CAÇADOR
  ["capivara"] = {"Capivara","Capivara abatida ilegalmente", nil, 65.000}, -- no choices 
  ["municao_caca"] = {"Munição de Caça","Munição de alto calibre para caça", nil, 1.000}, -- no choices 

--TRAFICANTE DE ÓRGÃOS
  ["orgaos"] = {"Órgãos Humanos","Órgão para transplante ilegal", nil, 1.000}, -- no choices 
  
--LENHADOR
  ["madeira"] = {"Madeira","Madeira utilizada para diversos trabalhos", nil, 5.000}, -- no choices 
  
  
  ["croquettes"] = {"Ração para PET","Comida para seu animal de estimação", nil, 0.250}, -- no choices 
  
  ["dourado"] = {"Dourado","Peixe Dourado", nil, 2.250}, -- no choices 
  ["robalo"] = {"Robalo","Peixe Robalo", nil, 5.000}, -- no choices 
  ["isca"] = {"Isca","Isca para peixe", nil, 0.100}, -- no choices 
  
  ["retrovisor"] = {"Retrovisor","Retrovisor proveniente de desmanche ilegal", nil, 1.500}, -- no choices 
  ["banco"] = {"Banco","Banco proveniente de desmanche ilegal", nil, 30.000}, -- no choices 
  ["parabrisa"] = {"Parabrisa","Parabrisa proveniente de desmanche ilegal", nil, 15.000}, -- no choices 
  ["farol"] = {"Farol","Farol proveniente de desmanche ilegal", nil, 2.000}, -- no choices 
  ["porta"] = {"Porta Dianteira","Porta dianteira proveniente de desmanche ilegal", nil, 30.000}, -- no choices 
  ["lanterna"] = {"Lanterna","Lanterna proveniente de desmanche ilegal", nil, 2.000}, -- no choices 
  ["motor"] = {"Bloco de Motor","Motor com numeração raspada proveniente de desmanche ilegal", nil, 50.000}, -- no choices 
  ["painel"] = {"Painel de Instrumentos","Painel de instrumentos proveniente de desmanche ilegal", nil, 25.000}, -- no choices 
  
}

-- load more items function
local function load_item_pack(name)
  local items = module("cfg/item/"..name)
  if items then
    for k,v in pairs(items) do
      cfg.items[k] = v
    end
  else
    print("[Brasil RP] Pacote de Itens ["..name.."] não encontrado")
  end
end

-- PACKS
load_item_pack("required")
load_item_pack("food")
load_item_pack("drugs")

return cfg
