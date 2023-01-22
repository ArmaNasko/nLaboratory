TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("nLaboratory:harvesting")
AddEventHandler("nLaboratory:harvesting", function(name, item1)
    local xPlayer = ESX.GetPlayerFromId(source)
    local itemQuantity = xPlayer.getInventoryItem(item1).count
    if itemQuantity >= 50 then
        TriggerClientEvent('esx:showNotification', source, "~r~Vous avez trop de "..name.." !")
    else
        xPlayer.addInventoryItem(item1, 1)
    end
end)

RegisterNetEvent("nLaboratory:treatment")
AddEventHandler("nLaboratory:treatment", function(name, item1, item2)
    local xPlayer = ESX.GetPlayerFromId(source)
    local itemQuantite = xPlayer.getInventoryItem(item1).count
    if itemQuantite >= 5 then
        xPlayer.removeInventoryItem(item1, 5)
        xPlayer.addInventoryItem(item2, 1)
    else
        TriggerClientEvent("esx:showNotification", source, "~r~Vous n'avez pas de "..name.." !")
    end
end)