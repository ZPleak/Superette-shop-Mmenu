ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(5000)
    end
end)

-- Menus
local ZPmenu = {
    Base = { Title = "ZP - SHOP" },
    Data = { currentMenu = "Faite votre choix" },
    Events = {
        onSelected = function(self, _, zpl, ZPMenu, menuData, currentButton, currentSlt, result)

            --- menu principal 

            if zpl.name == "Boisson" then
                OpenMenu 'Achat Boisson :'
            end 
            if zpl.name == 'Nouriture' then
                OpenMenu 'Achat Nouriture :'
            end
            if zpl.name == 'Divers' then
                 OpenMenu 'Achat Divers :'
            end
             if zpl.name == '~r~Fermer la catalogue' then
                CloseMenu ('ZPmenu')
        end

        --- Menu Boisson
        
        if zpl.name == "Eau" then
            TriggerServerEvent('zpl:eau')
        end
        if zpl.name == "Café" then
            TriggerServerEvent('zpl:cafe')
        end
        if zpl.name == "IceTea" then
            TriggerServerEvent('zpl:ice')
        end

        --- Menu Nouriture

        if zpl.name == "Pain" then
            TriggerServerEvent('zpl:pain')
        end
        if zpl.name == "Burger" then
            TriggerServerEvent('zpl:burg')
        end
        if zpl.name == "Petit Gateau" then
            TriggerServerEvent('zpl:gateau')
        end

        --- Menu Divers

        if zpl.name == "Smarthphone" then
            TriggerServerEvent('zpl:tel')
        end
        if zpl.name == "Bandage" then
            TriggerServerEvent('zpl:band')
        end
        if zpl.name == "Radio" then
            TriggerServerEvent('zpl:rad')
        end
    end
        
    },

    Menu = {
        ["Faite votre choix"] = {
            b = {
                {name = "Boisson", ask = "→", askX = true},
                {name = "Nouriture", ask = "→", askX = true},
                {name = "Divers", ask = "→", askX = true},
                {name = "~r~Fermer la catalogue", ask = "→", askX = true},
            }
        },

        ----- Sub menu Boisson 

        ["Achat Boisson :"] = {
            b = {
                {name = "Eau", ask = "~g~15 $", askX = true},
                {name = "Café", ask = "~g~20 $", askX = true},
                {name = "IceTea", ask = "~g~25 $", askX = true},
            }
        },

        ----- Sub menu Nouriture  

        ["Achat Nouriture :"] = {
            b = {
                {name = "Pain", ask = "~g~15 $", askX = true},
                {name = "Burger", ask = "~g~20 $", askX = true},
                {name = "Petit Gateau", ask = "~g~25 $", askX = true},
            }
        },

        ----- Sub menu Divers  

        ["Achat Divers :"] = {
            b = {
                {name = "Smarthphone", ask = "~g~150 $", askX = true},
                {name = "Bandage", ask = "~g~200 $", askX = true},
                {name = "Radio", ask = "~g~250 $", askX = true},
            }
        },
    }
}

local pos = {
    {x = 25.74, y = -1346.42, z = 29.48},
    {x = 2557.45, y = 382.28, z = 108.62},
    {x = -3038.93, y = 585.94, z = 7.9},
    {x = -3241.92, y = 10001.46, z = 12.83},
    {x = 547.43, y = 2671.71, z = 42.15},
    {x = 1961.46, y = 3740.67, z = 32.34},
    {x = 2678.91, y = 3280.67, z = 55.24},
    {x = 1729.21, y = 6414.13, z = 35.03},
    {x = 1135.8, y = -982.28, z = 46.41},
    {x = -1222.91, y = -906.98, z = 12.32},
    {x = -1487.553, y = -379.1, z = 40.16},
    {x = -2968.24, y = 390.91, z = 15.04},
    {x = 1166.02, y = 2708.93, z = 38.15},
    {x = 1392.56, y = 3604.68, z = 34.98},
}

-- Ouverture du Menu 
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(pos) do

            local plyCoords = GetEntityCoords(PlayerPedId(), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, pos[k].x, pos[k].y, pos[k].z)

            if dist <= 1.5 then
                ESX.ShowHelpNotification("Appuyez sur [~b~E~s~] pour ouvrir le shop")
                if IsControlJustPressed(1, 38) then
                    Citizen.Wait(200)
                    CreateMenu(ZPmenu)
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
    
    for k in pairs(pos) do

    local blip = AddBlipForCoord(pos[k].x, pos[k].y, pos[k].z) -- remplacer les coordonnés

    SetBlipSprite (blip, 293) -- Model du blip
    SetBlipDisplay(blip, 4)
    SetBlipScale  (blip, 0.8) -- Taille du blip
    SetBlipColour (blip, 2) -- Couleur du blip
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName('ZP - SHOP') -- Nom du blips
    EndTextCommandSetBlipName(blip)
    end
end)