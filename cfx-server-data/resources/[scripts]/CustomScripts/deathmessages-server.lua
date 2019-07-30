RegisterServerEvent('playerDied')
AddEventHandler('playerDied',function(killer,reason)
	if killer == "**Invalid**" then --Can't figure out what's generating invalid, it's late. If you figure it out, let me know. I just handle it as a string for now.
		reason = 2
	end
	if reason == 0 then
		--TriggerClientEvent('showNotification', -1,"~o~".. GetPlayerName(source).."~w~ cometeu suicídio, virou uma estrelinha no céu. ")
	elseif reason == 1 then
		--TriggerClientEvent('showNotification', -1,"~o~"..GetPlayerName(source).."~w~ foi assassinado, que seja feita justiça.")
	else
		--TriggerClientEvent('showNotification', -1,"~o~".. GetPlayerName(source).."~w~ morreu, um minuto de silêncio.")
	end
end)