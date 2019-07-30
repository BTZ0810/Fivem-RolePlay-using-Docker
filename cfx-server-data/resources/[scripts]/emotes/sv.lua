AddEventHandler('chatMessage', function(source, n, msg)
    local args = stringsplit(msg, ' ')
        
    if string.lower(args[1]) == "/animacao" then
        TriggerClientEvent("emote:display", source)
        CancelEvent()
    elseif string.lower(args[1]) == "/animar" then
        if args[2] ~= nil then
            TriggerClientEvent("emote:invoke", source, args[2])
        else
            TriggerClientEvent("chatMessage", source, "ERROR", {255,0,0}, "^7Use \"^3/animacao^7\" para exibir todos os emotes")
        end
        CancelEvent()
    elseif string.lower(args[1]) == "/cancelar" then
        TriggerClientEvent("emote:cancelnow", source)
        CancelEvent()
    end
end)
function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end
