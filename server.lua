local Framework = nil

-- Framework initialization
if GetResourceState('qbx-core') ~= 'missing' and Config.Framework == "qbox" then
    Framework = exports['qbx-core']:GetCoreObject()
else
    Framework = exports['qb-core']:GetCoreObject()
end

Framework.Functions.CreateUseableItem(Config.Items.nightvision, function(source)
    local player = Framework.Functions.GetPlayer(source)
    
    if player ~= nil then 
        TriggerClientEvent("ml187-nightvision:toggle", source)
    end 
end)

Framework.Functions.CreateUseableItem(Config.Items.thermalvision, function(source)
    local player = Framework.Functions.GetPlayer(source)
    
    if player ~= nil then 
        TriggerClientEvent("ml187-thermalvision:toggle", source)
    end 
end)
