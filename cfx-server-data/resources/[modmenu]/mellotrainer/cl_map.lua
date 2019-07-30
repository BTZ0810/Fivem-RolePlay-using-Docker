--[[--------------------------------------------------------------------------
	*
	* Mello Trainer
	* (C) Michael Goodwin 2017
	* http://github.com/thestonedturtle/mellotrainer/releases
	*
	* This menu used the Scorpion Trainer as a framework to build off of.
	* https://github.com/pongo1231/ScorpionTrainer
	* (C) Emre Cürgül 2017
	* 
	* A lot of useful functionality has been converted from the lambda menu.
	* https://lambda.menu
	* (C) Oui 2017
	*
	* Additional Contributors:
	* WolfKnight (https://forum.fivem.net/u/WolfKnight)
	*
---------------------------------------------------------------------------]]

function createAllMapBlips()
	
end




function destroyAllMapBlips()
	RemoveBlip(open1)
	open1 = nil;
	RemoveBlip(open2)
	open2 = nil;
	RemoveBlip(open3)
	open3 = nil;
	RemoveBlip(open4)
	open4 = nil;
	RemoveBlip(open5)
	open5 = nil;
	RemoveBlip(open6)
	open6 = nil;
	RemoveBlip(open7)
	open7 = nil;
	RemoveBlip(open8)
	open8 = nil;
	RemoveBlip(open9)
	open9 = nil;
	RemoveBlip(open10)
	open10 = nil;
	RemoveBlip(open11)
	open11 = nil;
	RemoveBlip(open12)
	open12 = nil;
	RemoveBlip(open13)
	open13 = nil;
	RemoveBlip(open14)
	open14 = nil;
	RemoveBlip(open15)
	open15 = nil;
	RemoveBlip(open16)
	open16 = nil;
	RemoveBlip(open17)
	open17 = nil;
	RemoveBlip(open18)
	open18 = nil;
	RemoveBlip(open19)
	open19 = nil;
	RemoveBlip(open20)
	open20 = nil;
	RemoveBlip(open21)
	open21 = nil;
	RemoveBlip(open22)
	open22 = nil;
	RemoveBlip(open23)
	open23 = nil;
	RemoveBlip(open24)
	open24 = nil;
	RemoveBlip(open25)
	open25 = nil;
	RemoveBlip(open26)
	open26 = nil;
	RemoveBlip(open27)
	open27 = nil;
	RemoveBlip(open28)
	open28 = nil;
	RemoveBlip(open29)
	open29 = nil;
	RemoveBlip(open30)
	open30 = nil;
	RemoveBlip(open31)
	open31 = nil;
	RemoveBlip(open32)
	open32 = nil;
	RemoveBlip(open33)
	open33 = nil;
	RemoveBlip(open34)
	open34 = nil;
	--RemoveBlip(open35)
	--open35 = nil;
	RemoveBlip(ponsonbys1)
	ponsonbys1 = nil;
	RemoveBlip(ponsonbys2)
	ponsonbys2 = nil;
	RemoveBlip(ponsonbys3)
	ponsonbys3 = nil;
	RemoveBlip(discount1)
	discount1 = nil;
	RemoveBlip(discount2)
	discount2 = nil;
	RemoveBlip(discount3)
	discount3 = nil;
	RemoveBlip(discount4)
	discount4 = nil;
	RemoveBlip(discount5)
	discount5 = nil;
	RemoveBlip(binco1)
	binco1 = nil;
	RemoveBlip(binco2)
	binco2 = nil;
	RemoveBlip(suburban1)
	suburban1 = nil;
	RemoveBlip(suburban2)
	suburban2 = nil;
	RemoveBlip(suburban3)
	suburban3 = nil;
	RemoveBlip(suburban4)
	suburban4 = nil;
	RemoveBlip(lsc1)
	lsc1 = nil;
	RemoveBlip(lsc2)
	lsc2 = nil;
	RemoveBlip(lsc3)
	lsc3 = nil;
	RemoveBlip(lsc4)
	lsc4 = nil;
	RemoveBlip(lsc5)
	lsc5 = nil;
	RemoveBlip(lsc6)
	lsc6 = nil;
	RemoveBlip(tattoo1)
	tattoo1 = nil;
	RemoveBlip(tattoo2)
	tattoo2 = nil;
	RemoveBlip(tattoo3)
	tattoo3 = nil;
	RemoveBlip(tattoo4)
	tattoo4 = nil;
	RemoveBlip(tattoo5)
	tattoo5 = nil;
	RemoveBlip(tattoo6)
	tattoo6 = nil;
	RemoveBlip(ammo1)
	ammo1 = nil;
	RemoveBlip(ammo2)
	ammo2 = nil;
	RemoveBlip(ammo3)
	ammo3 = nil;
	RemoveBlip(ammo4)
	ammo4 = nil;
	RemoveBlip(ammo5)
	ammo5 = nil;
	RemoveBlip(ammo6)
	ammo6 = nil;
	RemoveBlip(ammo7)
	ammo7 = nil;
	RemoveBlip(ammo8)
	ammo8 = nil;
	RemoveBlip(ammo9)
	ammo9 = nil;
	RemoveBlip(ammo10)
	ammo10 = nil;
	RemoveBlip(ammo11)
	ammo11 = nil;
	RemoveBlip(barber1)
	barber1 = nil;
	RemoveBlip(barber2)
	barber2 = nil;
	RemoveBlip(barber3)
	barber3 = nil;
	RemoveBlip(barber4)
	barber4 = nil;
	RemoveBlip(barber5)
	barber5 = nil;
	RemoveBlip(barber6)
	barber6 = nil;
	RemoveBlip(barber7)
	barber7 = nil;
	RemoveBlip(store1)
	store1 = nil;
	RemoveBlip(store2)
	store2 = nil;
	RemoveBlip(store3)
	store3 = nil;
	RemoveBlip(store4)
	store4 = nil;
	RemoveBlip(store5)
	store5 = nil;
	RemoveBlip(store6)
	store6 = nil;
	RemoveBlip(store7)
	store7 = nil;
	RemoveBlip(store8)
	store8 = nil;
	RemoveBlip(store9)
	store9 = nil;
	RemoveBlip(store10)
	store10 = nil;
	RemoveBlip(store11)
	store11 = nil;
	RemoveBlip(store12)
	store12 = nil;
	RemoveBlip(policestation1)
	policestation1 = nil;
	RemoveBlip(policestation2)
	policestation2 = nil;
	RemoveBlip(policestation4)
	policestation4 = nil;
	RemoveBlip(policestation5)
	policestation5 = nil;
	RemoveBlip(policestation6)
	policestation6 = nil;
	RemoveBlip(policestation7)
	policestation7 = nil;
	RemoveBlip(policestation8)
	policestation8 = nil;
	RemoveBlip(policestation9)
	policestation9 = nil;
	RemoveBlip(policestation10)
	policestation10 = nil;
	RemoveBlip(policestation11)
	policestation11 = nil;
	RemoveBlip(bank1)
	bank1 = nil;
	RemoveBlip(bank2)
	bank2 = nil;
	RemoveBlip(bank3)
	bank3 = nil;
	RemoveBlip(bank4)
	bank4 = nil;
	RemoveBlip(bank5)
	bank5 = nil;
	RemoveBlip(bank6)
	bank6 = nil;
	RemoveBlip(bank7)
	bank7 = nil;
	RemoveBlip(cablecar1)
	cablecar1 = nil;
	RemoveBlip(cablecar2)
	cablecar2 = nil;
	RemoveBlip(carwash1)
	carwash1 = nil;
	RemoveBlip(carwash2)
	carwash2 = nil;
	RemoveBlip(airport1)
	airport1 = nil;
	RemoveBlip(airport2)
	airport2 = nil;
	RemoveBlip(airport3)
	airport3 = nil;
	RemoveBlip(stripclub)
	stripclub = nil;
	RemoveBlip(helipad)
	helipad = nil;
	RemoveBlip(boat1)
	boat1 = nil;
	RemoveBlip(rebel)
	rebel = nil;
	RemoveBlip(theater1)
	theater1 = nil;
	RemoveBlip(theater2)
	theater2 = nil;
	RemoveBlip(theater3)
	theater3 = nil;
	RemoveBlip(hospital1)
	hospital1 = nil;
	RemoveBlip(hospital2)
	hospital2 = nil;
	RemoveBlip(hospital3)
	hospital3 = nil;
	RemoveBlip(bar1)
	bar1 = nil;
	RemoveBlip(bar2)
	bar2 = nil;
	RemoveBlip(comedy)
	comedy = nil;
	RemoveBlip(drugs)
	drugs = nil;
	RemoveBlip(marijuana1)
	marijuana1 = nil;
	RemoveBlip(marijuana2)
	marijuana2 = nil;
	RemoveBlip(altruist)
	altruist = nil;
	RemoveBlip(sub)
	sub = nil;
	RemoveBlip(masks)
	masks = nil;
	RemoveBlip(fairground)
	fairground = nil;
	RemoveBlip(golf)
	golf = nil;
	RemoveBlip(tennis)
	tennis = nil;
	RemoveBlip(darts)
	darts = nil;
	RemoveBlip(playboy)
	playboy = nil;
	RemoveBlip(fib)
	fib = nil;
end

local currentstate = false -- Prevent creating multiple blips.
function toggleMapBlips(toggle)
	if(toggle)then
		if(not currentstate)then
			createAllMapBlips()
			currentstate = true
		end
	else
		if(currentstate)then
			destroyAllMapBlips()
			currentstate = false
		end
	end
end