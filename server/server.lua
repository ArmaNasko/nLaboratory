TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("nLaboratory:harvesting")
AddEventHandler("nLaboratory:harvesting", function(name, label1)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local itemQuantity = xPlayer.getInventoryItem(label1).count
    if itemQuantity >= 50 then
        TriggerClientEvent('esx:showNotification', _source, "~r~Vous avez trop de "..name)
    else
        xPlayer.addInventoryItem(label1, 1)
    end
end)

RegisterNetEvent("nLaboratory:treatment")
AddEventHandler("nLaboratory:treatment", function(name, label1, label2)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local itemQuantite = xPlayer.getInventoryItem(label1).count
    if itemQuantite >= 1 then
        xPlayer.removeInventoryItem(label1, 1)
        xPlayer.addInventoryItem(label2, 1)
    else
        TriggerClientEvent("esx:showNotification", _source, "~r~Vous n'avez pas de "..name)
    end
end)