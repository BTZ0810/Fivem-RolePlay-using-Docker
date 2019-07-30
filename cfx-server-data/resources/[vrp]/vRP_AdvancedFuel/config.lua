petrolCanPrice = 250

lang = "en"
-- lang = "fr"

settings = {}
settings["en"] = {
	openMenu = "Pressione ~g~E~w~ para abrir o menu.",
	electricError = "~r~Você está em um carro Elétrico.",
	fuelError = "~r~ Você está num carro a cobustão.",
	buyFuel = "Abastercer",
	liters = "litros",
	percent = "Porcentagem",
	confirm = "Confirmar",
	fuelStation = "Posto de Gasolina",
	boatFuelStation = "Posto de Gasolina | Barco",
	avionFuelStation = "Posto de Gasolina | Avião ",
	heliFuelStation = "Posto de Gasolina | Helicoptero",
	getJerryCan = "Pressione ~g~E~w~ para comprar um galão de gasolina (R$ "..petrolCanPrice..")",
	refeel = "Pressione ~g~E~w~ para reabastecer o carro.",
	YouHaveBought = "Você comprou ",
	fuel = " % de recarga",
	price = "Preço"
}

settings["fr"] = {
	openMenu = "Appuyez sur ~g~E~w~ pour ouvrir le menu.",
	electricError = "~r~Vous avez une voiture électrique.",
	fuelError = "~r~Vous n'êtes pas au bon endroit.",
	buyFuel = "acheter de l'essence",
	liters = "litres",
	percent = "pourcent",
	confirm = "Valider",
	fuelStation = "Station essence",
	boatFuelStation = "Station d'essence | Bateau",
	avionFuelStation = "Station d'essence | Avions",
	heliFuelStation = "Station d'essence | Hélicoptères",
	getJerryCan = "Appuyez sur ~g~E~w~ pour acheter un bidon d'essence (R$ "..petrolCanPrice..")",
	refeel = "Appuyez sur ~g~E~w~ pour remplir votre voiture d'essence.",
	YouHaveBought = "Vous avez acheté ",
	fuel = " litres d'essence",
	price = "prix"
}


showBar = true
showText = true


hud_form = 2 -- 1 : Vertical | 2 = Horizontal
hud_x = 0.087
hud_y = 0.785

text_x = 0.2125
text_y = 0.825


electricityPrice = 1 -- NOT RANOMED !!
petrolCanPrice = 250
randomPrice = true --Random the price of each stations
price = 25 --If random price is on False, set the price here for 1 liter