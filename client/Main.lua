TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Enter

CreateThread(function()
    while true do
        local wait = 750
        for k, v in pairs(Laboratory) do
            local plyCoords = GetEntityCoords(PlayerPedId())
            local dist = Vdist(v.enterPos.x, v.enterPos.y, v.enterPos.z, plyCoords.x, plyCoords.y, plyCoords.z, false)
            if dist <= 3.5 then
                wait = 1
                DrawMarker(22, v.enterPos.x, v.enterPos.y, v.enterPos.z, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, v.markersColor.r, v.markersColor.g, v.markersColor.b, 255, true, true, p19, true) 
                ESX.ShowHelpNotification("Appuyer sur ~INPUT_TALK~ pour entrer dans le laboratoire")
            end
            if dist <= 3.5 then
                wait = 1
                if IsControlJustPressed(1,51) then
                    _EnterInTheLaboratory(v.exitPos.x, v.exitPos.y, v.exitPos.z)
                end
            end
        end
        Wait(wait)
    end
end)

-- Exit

CreateThread(function()
    while true do
        local wait = 750
        for k, v in pairs(Laboratory) do
            local plyCoords = GetEntityCoords(PlayerPedId())
            local dist = Vdist(v.exitPos.x, v.exitPos.y, v.exitPos.z, plyCoords.x, plyCoords.y, plyCoords.z, false)
            if dist <= 3.5 then
                wait = 1
                DrawMarker(22, v.exitPos.x, v.exitPos.y, v.exitPos.z, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, v.markersColor.r, v.markersColor.g, v.markersColor.b, 255, true, true, p19, true)
                ESX.ShowHelpNotification("Appuyer sur ~INPUT_TALK~ pour quitter le laboratoire")
            end
            if dist <= 3.5 then
                wait = 1
                if IsControlJustPressed(1,51) then
                    _ExitTheLaboratory(v.enterPos.x, v.enterPos.y, v.enterPos.z)
                end
            end
        end
        Wait(wait)
    end
end)

-- Recolte

CreateThread(function()
    while true do
        local wait = 750
        for k, v in pairs(Laboratory) do
            local plyCoords = GetEntityCoords(PlayerPedId())
            local dist = Vdist(v.recoltePos.x, v.recoltePos.y, v.recoltePos.z, plyCoords.x, plyCoords.y, plyCoords.z, false)
            if dist <= 3.5 then
                wait = 1
                DrawMarker(22, v.recoltePos.x, v.recoltePos.y, v.recoltePos.z, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, v.markersColor.r, v.markersColor.g, v.markersColor.b, 255, true, true, p19, true)
                ESX.ShowHelpNotification("Appuyer sur ~INPUT_TALK~ pour récolter de la"..v.color.." "..v.name)
            end
            if dist <= 3.5 then
                wait = 1
                if IsControlJustPressed(1,51) then
                    _StartHarvesting(v.name, v.label1)
                end
            end
        end
        Wait(wait)
    end
end)

-- Traitement

CreateThread(function()
    while true do
        local wait = 750
        for k, v in pairs(Laboratory) do
            local plyCoords = GetEntityCoords(PlayerPedId())
            local dist = Vdist(v.traitementPos.x, v.traitementPos.y, v.traitementPos.z, plyCoords.x, plyCoords.y, plyCoords.z, false)
            if dist <= 3.5 then
                wait = 1
                DrawMarker(22, v.traitementPos.x, v.traitementPos.y, v.traitementPos.z, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, v.markersColor.r, v.markersColor.g, v.markersColor.b, 255, true, true, p19, true)
                ESX.ShowHelpNotification("Appuyer sur ~INPUT_TALK~ pour traiter de la"..v.color.." "..v.name)
            end
            if dist <= 3.5 then
                wait = 1
                if IsControlJustPressed(1,51) then
                    _StartTreatment(v.name, v.label1, v.label2)
                end
            end
        end
        Wait(wait)
    end
end)
