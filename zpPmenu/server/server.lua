ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterNetEvent('zpl:eau')
AddEventHandler('zpl:eau', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 15
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('water', 1)
       TriggerClientEvent('esx:showNotification', source, "~y~Vous avez acheté du Pain pour le prix de ~r~"..price.."~s~ $")
    else
        TriggerClientEvent('esx:showNotification', source, "Il vous manque ~g~"..price-xMoney.."$")
    end
end)


RegisterNetEvent('zpl:cafe')
AddEventHandler('zpl:cafe', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 20
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('coffe', 1)
       TriggerClientEvent('esx:showNotification', source, "~y~Vous avez acheté du Pain pour le prix de ~r~"..price.."~s~ $")
    else
        TriggerClientEvent('esx:showNotification', source, "Il vous manque ~g~"..price-xMoney.."$")
    end
end)

RegisterNetEvent('zpl:ice')
AddEventHandler('zpl:ice', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 25
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('icetea', 1)
       TriggerClientEvent('esx:showNotification', source, "~y~Vous avez acheté du Pain pour le prix de ~r~"..price.."~s~ $")
    else
        TriggerClientEvent('esx:showNotification', source, "Il vous manque ~g~"..price-xMoney.."$")
    end
end)




-------------- nouriture 


RegisterNetEvent('zpl:pain')
AddEventHandler('zpl:pain', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 15
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('bread', 1)
       TriggerClientEvent('esx:showNotification', source, "~y~Vous avez acheté du Pain pour le prix de ~r~"..price.."~s~ $")
    else
        TriggerClientEvent('esx:showNotification', source, "Il vous manque ~g~"..price-xMoney.."$")
    end
end)


RegisterNetEvent('zpl:burg')
AddEventHandler('zpl:burg', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 20
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('hamburger', 1)
       TriggerClientEvent('esx:showNotification', source, "~y~Vous avez acheté du Pain pour le prix de ~r~"..price.."~s~ $")
    else
        TriggerClientEvent('esx:showNotification', source, "Il vous manque ~g~"..price-xMoney.."$")
    end
end)

RegisterNetEvent('zpl:gateau')
AddEventHandler('zpl:gateau', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 25
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('cupcake', 1)
       TriggerClientEvent('esx:showNotification', source, "~y~Vous avez acheté du Pain pour le prix de ~r~"..price.."~s~ $")
    else
        TriggerClientEvent('esx:showNotification', source, "Il vous manque ~g~"..price-xMoney.."$")
    end
end)

-------------- Divers 


RegisterNetEvent('zpl:tel')
AddEventHandler('zpl:tel', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 150
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('phone', 1)
       TriggerClientEvent('esx:showNotification', source, "~y~Vous avez acheté du Pain pour le prix de ~r~"..price.."~s~ $")
    else
        TriggerClientEvent('esx:showNotification', source, "Il vous manque ~g~"..price-xMoney.."$")
    end
end)


RegisterNetEvent('zpl:band')
AddEventHandler('zpl:band', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 200
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('bandage', 1)
       TriggerClientEvent('esx:showNotification', source, "~y~Vous avez acheté du Pain pour le prix de ~r~"..price.."~s~ $")
    else
        TriggerClientEvent('esx:showNotification', source, "Il vous manque ~g~"..price-xMoney.."$")
    end
end)

RegisterNetEvent('zpl:rad')
AddEventHandler('zpl:rad', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 250
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('radio', 1)
       TriggerClientEvent('esx:showNotification', source, "~y~Vous avez acheté du Pain pour le prix de ~r~"..price.."~s~ $")
    else
        TriggerClientEvent('esx:showNotification', source, "Il vous manque ~g~"..price-xMoney.."$")
    end
end)