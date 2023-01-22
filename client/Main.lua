TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- CreateThread(function()
--     while true do
--         local wait = 750
--         for k, v in pairs(Laboratory) do
--             local plyCoords = GetEntityCoords(PlayerPedId())
--             local dist = Vdist(v.enterPos.x, v.enterPos.y, v.enterPos.z, plyCoords.x, plyCoords.y, plyCoords.z, false)
--             if dist <= 3.5 then
--                 wait = 1
--                 DrawMarker(25, v.enterPos.x, v.enterPos.y, v.enterPos.z-0.965, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, v.markersColor.r, v.markersColor.g, v.markersColor.b, 255, false, true, 2, false, false, false)
--                 ESX.ShowHelpNotification("Appuyer sur ~INPUT_TALK~ pour entrer dans le laboratoire")
--             end
--             if dist <= 3.5 then
--                 wait = 1
--                 if IsControlJustPressed(1,51) then
--                     TeleportPlayer(v.exitPos.x, v.exitPos.y, v.exitPos.z)
--                 end
--             end
--         end
--         Wait(wait)
--     end
-- end)
-- CreateThread(function()
--     while true do
--         local wait = 750
--         for k, v in pairs(Laboratory) do
--             local plyCoords = GetEntityCoords(PlayerPedId())
--             local dist = Vdist(v.exitPos.x, v.exitPos.y, v.exitPos.z, plyCoords.x, plyCoords.y, plyCoords.z, false)
--             if dist <= 3.5 then
--                 wait = 1
--                 DrawMarker(25, v.exitPos.x, v.exitPos.y, v.exitPos.z-0.965, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, v.markersColor.r, v.markersColor.g, v.markersColor.b, 255, false, true, 2, false, false, false)
--                 ESX.ShowHelpNotification("Appuyer sur ~INPUT_TALK~ pour quitter le laboratoire")
--             end
--             if dist <= 3.5 then
--                 wait = 1
--                 if IsControlJustPressed(1,51) then
--                     TeleportPlayer(v.enterPos.x, v.enterPos.y, v.enterPos.z)
--                 end
--             end
--         end
--         Wait(wait)
--     end
-- end)
-- CreateThread(function()
--     while true do
--         local wait = 750
--         for k, v in pairs(Laboratory) do
--             local plyCoords = GetEntityCoords(PlayerPedId())
--             local dist = Vdist(v.recoltePos.x, v.recoltePos.y, v.recoltePos.z, plyCoords.x, plyCoords.y, plyCoords.z, false)
--             if dist <= 3.5 then
--                 wait = 1
--                 DrawMarker(25, v.recoltePos.x, v.recoltePos.y, v.recoltePos.z-0.965, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, v.markersColor.r, v.markersColor.g, v.markersColor.b, 255, false, true, 2, false, false, false)
--                 ESX.ShowHelpNotification("Appuyer sur ~INPUT_TALK~ pour récolter de la"..v.color.." "..v.name)
--             end
--             if dist <= 3.5 then
--                 wait = 1
--                 if IsControlJustPressed(1,51) then
--                     StartHarvesting(v.name, v.item1)
--                 end
--             end
--         end
--         Wait(wait)
--     end
-- end)



-- CreateThread(function()
--     while true do
--         local wait = 750
--         for k, v in pairs(Laboratory) do
--             local plyCoords = GetEntityCoords(PlayerPedId())
--             local dist = Vdist(v.traitementPos.x, v.traitementPos.y, v.traitementPos.z, plyCoords.x, plyCoords.y, plyCoords.z, false)
--             if dist <= 3.5 then
--                 wait = 1
--                 DrawMarker(25, v.traitementPos.x, v.traitementPos.y, v.traitementPos.z, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.5, 0.5, 0.5, v.markersColor.r, v.markersColor.g, v.markersColor.b, 255, false, true, p19, true)
--                 ESX.ShowHelpNotification("Appuyer sur ~INPUT_TALK~ pour traiter de la"..v.color.." "..v.name)
--             end
--             if dist <= 3.5 then
--                 wait = 1
--                 if IsControlJustPressed(1,51) then
--                     StartTreatment(v.name, v.item1, v.item2)
--                 end
--             end
--         end
--         Wait(wait)
--     end
-- end)


-- TEST


CreateThread(function()
    while true do
        local wait = 750
        for k, v in pairs(Laboratory) do
            local plyCoords = GetEntityCoords(PlayerPedId())
            local dist = Vdist(v.enterPos.x, v.enterPos.y, v.enterPos.z, plyCoords.x, plyCoords.y, plyCoords.z, false)
            if dist <= 3.5 then
                wait = 1
                DrawMarker(25, v.enterPos.x, v.enterPos.y, v.enterPos.z-0.965, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, v.markersColor.r, v.markersColor.g, v.markersColor.b, 255, false, true, 2, false, false, false)
                ESX.ShowHelpNotification("Appuyer sur ~INPUT_TALK~ pour entrer dans le laboratoire")
            end
            if dist <= 3.5 then
                wait = 1
                if IsControlJustPressed(1,51) then
                    TeleportPlayer(v.exitPos.x, v.exitPos.y, v.exitPos.z)
                end
            end
        end
        for k, v in pairs(Laboratory) do
            local plyCoords = GetEntityCoords(PlayerPedId())
            local dist = Vdist(v.exitPos.x, v.exitPos.y, v.exitPos.z, plyCoords.x, plyCoords.y, plyCoords.z, false)
            if dist <= 3.5 then
                wait = 1
                DrawMarker(25, v.exitPos.x, v.exitPos.y, v.exitPos.z-0.965, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, v.markersColor.r, v.markersColor.g, v.markersColor.b, 255, false, true, 2, false, false, false)
                ESX.ShowHelpNotification("Appuyer sur ~INPUT_TALK~ pour quitter le laboratoire")
            end
            if dist <= 3.5 then
                wait = 1
                if IsControlJustPressed(1,51) then
                    TeleportPlayer(v.enterPos.x, v.enterPos.y, v.enterPos.z)
                end
            end
        end
        for k, v in pairs(Laboratory) do
            local plyCoords = GetEntityCoords(PlayerPedId())
            local dist = Vdist(v.recoltePos.x, v.recoltePos.y, v.recoltePos.z, plyCoords.x, plyCoords.y, plyCoords.z, false)
            if dist <= 3.5 then
                wait = 1
                DrawMarker(25, v.recoltePos.x, v.recoltePos.y, v.recoltePos.z-0.965, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, v.markersColor.r, v.markersColor.g, v.markersColor.b, 255, false, true, 2, false, false, false)
                ESX.ShowHelpNotification("Appuyer sur ~INPUT_TALK~ pour récolter de la"..v.color.." "..v.name)
            end
            if dist <= 3.5 then
                wait = 1
                if IsControlJustPressed(1,51) then
                    StartHarvesting(v.name, v.item1)
                end
            end
        end
        for k, v in pairs(Laboratory) do
            local plyCoords = GetEntityCoords(PlayerPedId())
            local dist = Vdist(v.traitementPos.x, v.traitementPos.y, v.traitementPos.z, plyCoords.x, plyCoords.y, plyCoords.z, false)
            if dist <= 3.5 then
                wait = 1
                DrawMarker(25, v.traitementPos.x, v.traitementPos.y, v.traitementPos.z, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.5, 0.5, 0.5, v.markersColor.r, v.markersColor.g, v.markersColor.b, 255, false, true, p19, true)
                ESX.ShowHelpNotification("Appuyer sur ~INPUT_TALK~ pour traiter de la"..v.color.." "..v.name)
            end
            if dist <= 3.5 then
                wait = 1
                if IsControlJustPressed(1,51) then
                    StartTreatment(v.name, v.item1, v.item2)
                end
            end
        end
        Wait(wait)
    end
end)