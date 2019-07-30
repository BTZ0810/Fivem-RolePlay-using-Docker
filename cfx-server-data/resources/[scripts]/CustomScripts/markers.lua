--[[
~r~ = Red
~b~ = Blue
~g~ = Green
~y~ = Yellow
~p~ = Purple
~o~ = Orange
~c~ = Grey?
~m~ = Darker Grey
~u~ = Black
~n~ = New Line
~s~ = Default White
~h~ = Bold Text
]]


local farm1 = {}
farm1[0] = {["x"] = -1367.9219970703,["y"]= 56.479747772217,["z"]= 53.70458984375}

local farm2 = {}
farm2[0] = {["x"] = -803.37982177734,["y"]= -223.99125671387,["z"]= 37.225769042969} -- next point

Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(0)
        DrawMarker(27, -260.49652099609,-964.94061279297,31.224351882935-1.0001, 0, 0, 0, 0, 0, 0, 1.0001,1.0001,1.0001, 0, 0, 200, 155, 0, 0, 0, 0, 0, 0, 0)
        DrawMarker(27, -266.21295166016,-968.33837890625,31.224351882935-1.0001, 0, 0, 0, 0, 0, 0, 1.0001,1.0001,1.0001, 0, 0, 200, 155, 0, 0, 0, 0, 0, 0, 0)
            --DrawText3DTag(farm1[0]["x"], farm1[0]["y"], farm1[0]["z"], "~b~farm1 ~s~farm1")
            --DrawText3DTag(farm2[0]["x"], farm2[0]["y"], farm2[0]["z"] , "~b~farm2  ~r~farm2") --next point
    end
end)

function DrawText3DTag(x,y,z, text) 
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*2
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov
    
    if onScreen then
        SetTextScale(0.7*scale, 1.2*scale)
        SetTextFont(2)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        World3dToScreen2d(x,y,z, 0)
        DrawText(_x,_y)
    end
end