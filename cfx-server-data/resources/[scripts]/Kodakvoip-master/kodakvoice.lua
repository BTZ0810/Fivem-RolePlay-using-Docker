local voiceChatProximity = "whisper" -- default: veryclose
-- valid options are: veryclose, close, nearby, distant, far, veryfar, global.
local voiceEnabled = true
local allowProximityChange = true -- Allow people to change the chat proximity using /voice distance <proximity>
local allowVoiceToggle = true -- Allow people to disable voice chat for themseleves using /voice toggle


----------------- CODE DON'T TOUCH!!!! ---------------------

RegisterCommand("voip", function(source, args, rawCommand)
        if allowProximityChange then
            if args[1] == "whisper" then
                voiceChatProximity = args[1]
                TriggerServerEvent("updateClients", voiceChatProximity)
            elseif args[1] == "normal" then
                voiceChatProximity = args[1]
                TriggerServerEvent("updateClients", voiceChatProximity)
            elseif args[1] == "yell" then
                voiceChatProximity = args[1]
                TriggerServerEvent("updateClients", voiceChatProximity)
            else
                sendUsageMessage()
            end
        else
            TriggerEvent('chatMessage', '', {255,255,255}, "^4The ability to change the proximity has been disabled, contact the server owner if you believe that this is an error.")
        end
end)

function sendUsageMessage()
    TriggerEvent('chatMessage', '', {255,255,255}, "^8Usage: ^0/voip <Whisper, Normal, Yell>")
end

local prox = 0.01

RegisterNetEvent("changeProximity")
AddEventHandler('changeProximity', function(vprox)
    if vprox == "whisper" then
        prox = 25.01
    elseif vprox == "normal" then
        prox = 75.01
    elseif vprox == "yell" then
        prox = 200.01
    end
end)

function getProximity()
    if voiceChatProximity == "whisper" then
        prox = 25.01
    elseif voiceChatProximity == "normal" then
        prox = 75.01
    elseif voiceChatProximity == "yell" then
        prox = 200.01
    end
end
getProximity()

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        NetworkSetTalkerProximity(prox)
        NetworkClearVoiceChannel()
        NetworkSetVoiceActive(voiceEnabled)
        local a = 0
        if voiceEnabled then
            for i=0,31 do
                if NetworkIsPlayerTalking(i) then
                    a = a + 1
                end
            end
        end
    end
end)


function displayInfo(text, red, green, blue, alpha, posx, posy)
    local txt = text
    local red = red
    local green = green
    local blue = blue
    local alpha = alpha
    local locx = posx
    local locy = posy
    
    SetTextFont(0)
    SetTextProportional(1)
    SetTextScale(0.0, 0.34)
    SetTextColour(red, green, blue, alpha)
    SetTextDropShadow(50, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropshadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(txt)
    DrawText(locx, locy)
end