QBCore = nil

local QBCore = exports['qb-core']:GetCoreObject()  

QBCore.Functions.CreateUseableItem("nightvision", function(source)
    local player = QBCore.Functions.GetPlayer(source)
        if player ~= nil then 
            TriggerClientEvent("cfs-nightvision:toggle", source)
        end 
end)

QBCore.Functions.CreateUseableItem("thermalvision", function(source)
    local player = QBCore.Functions.GetPlayer(source)
        if player ~= nil then 
            TriggerClientEvent("cfs-thermalvision:toggle", source)
        end 
end)
