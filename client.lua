local Framework = nil

-- Framework initialization
if GetResourceState('qbx-core') ~= 'missing' and Config.Framework == "qbox" then
    Framework = exports['qbx-core']:GetCoreObject()
else
    Framework = exports['qb-core']:GetCoreObject()
end

local nightvision = false
local thermalvision = false

RegisterNetEvent('ml187-nightvision:toggle')
AddEventHandler('ml187-nightvision:toggle', function()
    local ChangeClothes = true
    local ped = PlayerPedId()
    
    if nightvision == false then
        nightvision = true
        if ChangeClothes == true then
            loadAnimDict("mp_masks@standard_car@ds@")
            TaskPlayAnim(PlayerPedId(), "mp_masks@standard_car@ds@", "put_on_mask", 2.0, 2.0, 800, 51, 0, false, false, false)
            SetPedComponentVariation(ped, 1, 0, 0, 0)
            Citizen.Wait(1000)
            TriggerServerEvent("InteractSound_SV:PlayOnSource", Config.NightvisionSound, Config.SoundVolume)
            SetNightvision(true)
        end
        
    elseif nightvision == true then
        if ChangeClothes == true then
            loadAnimDict("mp_masks@standard_car@ds@")
            TaskPlayAnim(PlayerPedId(), "mp_masks@standard_car@ds@", "put_on_mask", 2.0, 2.0, 800, 51, 0, false, false, false)
            SetPedComponentVariation(ped, 1, 0, 0, 0)
            Citizen.Wait(1000)
            SetNightvision(false)
            nightvision = false
        end
    end
end)

RegisterNetEvent('ml187-thermalvision:toggle')
AddEventHandler('ml187-thermalvision:toggle', function()
    local ChangeClothes = true
    local ped = PlayerPedId()
    
    if thermalvision == false then
        thermalvision = true
        if ChangeClothes == true then
            loadAnimDict("mp_masks@standard_car@ds@")
            TaskPlayAnim(PlayerPedId(), "mp_masks@standard_car@ds@", "put_on_mask", 2.0, 2.0, 800, 51, 0, false, false, false)
            SetPedComponentVariation(ped, 1, 0, 0, 0)
            Citizen.Wait(1000)
            TriggerServerEvent("InteractSound_SV:PlayOnSource", Config.ThermalvisionSound, Config.SoundVolume)
            SetNightvision(true)
            SetSeethrough(true)
        end
        
    elseif thermalvision == true then
        if ChangeClothes == true then
            loadAnimDict("mp_masks@standard_car@ds@")
            TaskPlayAnim(PlayerPedId(), "mp_masks@standard_car@ds@", "put_on_mask", 2.0, 2.0, 800, 51, 0, false, false, false)
            SetPedComponentVariation(ped, 1, 0, 0, 0)
            Citizen.Wait(1000)
            SetNightvision(false)
            SetSeethrough(false)
            thermalvision = false
        end
    end
end)

function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(5)
    end
end
