RegisterServerEvent("updateClients")
AddEventHandler("updateClients", function(test)
	local _source = source
    TriggerClientEvent('changeProximity', -1, test)
		               	            TriggerClientEvent("pNotify:SetQueueMax", _source, "lmao", 1)
									TriggerClientEvent("pNotify:SendNotification", _source, {
							            text = "Your VOIP has been set to "..test..".",
							            type = "info",
							            queue = "lmao",
							            timeout = 3000,
							            layout = "CenterLeft"
						       		})
end)