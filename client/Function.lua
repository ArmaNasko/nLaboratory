TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local time = 0

function _EnterInTheLaboratory(x, y, z)
    DoScreenFadeOut(1000)
    Wait(1000)
    SetEntityCoords(PlayerPedId(), x, y, z)
    DoScreenFadeIn(1000)
end

function _ExitTheLaboratory(x, y, z)
    DoScreenFadeOut(1000)
    Wait(1000)
    SetEntityCoords(PlayerPedId(), x, y, z)
    DoScreenFadeIn(1000)
end

function _StartHarvesting(name, label1)
    SetEntityHeading(PlayerPedId(), 173.390)
    ProgressBar('RÉCOLTE')
    TriggerServerEvent("nLaboratory:harvesting", name, label1)
end

function _StartTreatment(name, label1, label2)
    ProgressBar('TRAITEMENT')
    TriggerServerEvent("nLaboratory:treatment", name, label1, label2)
end

-- Progress Bar 

function drawProgressBar(x, y, width, height, colour, percent)
    local w = width * (percent/2500)
    local x = (x - (width * (percent/2500))/2)-width/2
    DrawRect(x+w, y, w, height, colour[1], colour[2], colour[3], colour[4])
end

CreateThread(function()
    while true do
        Wait(72)
        time = time + 30
		if time == 3211 then
            time = 0
            break
        end
    end
end)

function ProgressBar(data)
	time = 0
	FreezeEntityPosition(PlayerPedId(), true)
    while true do
        Wait(0)
        SetTextFont(0)
        SetTextScale(0.3, 0.3)
        SetTextColour(255, 255, 255, 255)
        SetTextEntry("STRING")
        AddTextComponentString(data)
        DrawText(0.80, 0.939)
    
        DrawRect(0.88, 0.95, 0.18, 0.04, 0, 0, 0, 200)
        DrawRect(0.91, 0.95, 0.09, 0.015, 10, 122, 10, 255)
        drawProgressBar(0.90, 0.95, 0.0690, 0.015, {0, 255, 0, 255}, time)
        if time == 3210 then
			FreezeEntityPosition(PlayerPedId(), false)
            break
        end
    end
end