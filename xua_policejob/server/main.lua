ESX = nil
local xPlayer = nil
cuffed = false

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.EnableESXService then
	if Config.MaxInService ~= -1 then
		TriggerEvent('esx_service:activateService', 'police', Config.MaxInService)
	end
end

request_data = {}

RegisterServerEvent("slang:send:request")
AddEventHandler("slang:send:request", function(id)
    local src = source

    if request_data[id] ~= nil then 
        return 
    end 

    request_data[id] = {
        target = id,
        sender = src
    }
    TriggerClientEvent("slang:getrequest", id, src)
end)

RegisterServerEvent("acceptrequestboeien")
AddEventHandler("acceptrequestboeien", function(sender)
    print(sender)
    local xPlayer = ESX.GetPlayerFromId(sender)
    local count = xPlayer.getInventoryItem("tiewraps").count
    if count > 0 then
        if request_data[source] then 
            TriggerClientEvent("requestacceptedcuff", request_data[source].sender, request_data[source].target)
            request_data[source] = nil
            xPlayer.removeInventoryItem("tiewraps", 1)
        else
            print("er is iets misgegaan...")
        end
    else
        xPlayer.showNotification("Je hebt geen handboeien")
    end
end)

RegisterServerEvent("revokerequestboeien")
AddEventHandler("revokerequestboeien", function()
    TriggerClientEvent('esx:showNotification', request_data[source].sender, 'Je verzoek is afgewezen')
    request_data[source] = nil
end)

RegisterServerEvent('plj:msg')
AddEventHandler('plj:msg', function(target, msg)

	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'police' then
		TriggerClientEvent('esx:showNotification', target, msg)
	else
		print(('esx_policejob: %s attempted to shownotification (not a cop)!'):format(xPlayer.identifier))
		ESX.BanPlayer(source, 'Heeft "esx_policejob" proberen te manipuleren via triggers.')
	end
end)

TriggerEvent('esx_phone:registerNumber', 'police', _U('alert_police'), true, true)
TriggerEvent('esx_society:registerSociety', 'police', 'police', 'society_police', 'society_police', 'society_police', {type = 'private'})

RegisterNetEvent('esx_policejob:confiscatePlayerItem')
AddEventHandler('esx_policejob:confiscatePlayerItem', function(target, itemType, itemName, amount)
	local _source = source
	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local targetXPlayer = ESX.GetPlayerFromId(target)

	if sourceXPlayer.job.name ~= 'police' then
		print(('esx_policejob: %s attempted to confiscate!'):format(sourceXPlayer.identifier))
		return
	end

	if itemType == 'item_standard' then
		local targetItem = targetXPlayer.getInventoryItem(itemName)
		local sourceItem = sourceXPlayer.getInventoryItem(itemName)

		-- does the target player have enough in their inventory?

			-- can the player carry the said amount of x item?
				targetXPlayer.removeInventoryItem(itemName, amount)
				sourceXPlayer.addInventoryItem   (itemName, amount)
				sourceXPlayer.showNotification(_U('you_confiscated', amount, sourceItem.label, targetXPlayer.name))
				targetXPlayer.showNotification(_U('got_confiscated', amount, sourceItem.label, sourceXPlayer.name))

	elseif itemType == 'item_account' then
		targetXPlayer.removeAccountMoney(itemName, amount)
		sourceXPlayer.addAccountMoney   (itemName, amount)

		sourceXPlayer.showNotification(_U('you_confiscated_account', amount, itemName, targetXPlayer.name))
		targetXPlayer.showNotification(_U('got_confiscated_account', amount, itemName, sourceXPlayer.name))

	elseif itemType == 'item_weapon' then
		if amount == nil then amount = 0 end
		targetXPlayer.removeWeapon(itemName, amount)
		sourceXPlayer.addWeapon   (itemName, amount)

		sourceXPlayer.showNotification(_U('you_confiscated_weapon', ESX.GetWeaponLabel(itemName), targetXPlayer.name, amount))
		targetXPlayer.showNotification(_U('got_confiscated_weapon', ESX.GetWeaponLabel(itemName), amount, sourceXPlayer.name))
	end
end)

RegisterNetEvent('esx_policejob:handcuff')
AddEventHandler('esx_policejob:handcuff', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'police' then
		TriggerClientEvent('esx_policejob:handcuff', target)
	else
		print(('esx_policejob: %s attempted to handcuff a player (not cop)!'):format(xPlayer.identifier))
		ESX.BanPlayer(source, 'Heeft "esx_policejob" proberen te manipuleren via triggers.')
	end
end)

RegisterNetEvent('esx_policejob:drag')
AddEventHandler('esx_policejob:drag', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'police' then
		TriggerClientEvent('esx_policejob:drag', target, source)
	else
		print(('esx_policejob: %s attempted to drag (not cop)!'):format(xPlayer.identifier))
		ESX.BanPlayer(source, 'Heeft "esx_policejob" proberen te manipuleren via triggers.')
	end
end)

RegisterNetEvent('esx_policejob:putInVehicle')
AddEventHandler('esx_policejob:putInVehicle', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'police' then
		TriggerClientEvent('esx_policejob:putInVehicle', target)
	else
		print(('esx_policejob: %s attempted to put in vehicle (not cop)!'):format(xPlayer.identifier))
		ESX.BanPlayer(source, 'Heeft "esx_policejob" proberen te manipuleren via triggers.')
	end
end)

RegisterNetEvent('esx_policejob:OutVehicle')
AddEventHandler('esx_policejob:OutVehicle', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'police' then
		TriggerClientEvent('esx_policejob:OutVehicle', target)
	else
		print(('esx_policejob: %s attempted to drag out from vehicle (not cop)!'):format(xPlayer.identifier))
		ESX.BanPlayer(source, 'Heeft "esx_policejob" proberen te manipuleren via triggers.')
	end
end)

RegisterNetEvent('esx_policejob:getStockItem')
AddEventHandler('esx_policejob:getStockItem', function(itemName, count)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_police', function(inventory)
		local inventoryItem = inventory.getItem(itemName)

		-- is there enough in the society?
		if count > 0 and inventoryItem.count >= count then

			-- can the player carry the said amount of x item?
			if xPlayer.canCarryItem(itemName, count) then
				inventory.removeItem(itemName, count)
				xPlayer.addInventoryItem(itemName, count)
				xPlayer.showNotification(_U('have_withdrawn', count, inventoryItem.label))
			else
				xPlayer.showNotification(_U('quantity_invalid'))
			end
		else
			xPlayer.showNotification(_U('quantity_invalid'))
		end
	end)
end)

--------------- Inbeslagname ----------------------------

ESX.RegisterServerCallback("esx_policejob-server-getinbeslagname", function(source, cb)
    local src = source 
    local xPlayer = ESX.GetPlayerFromId(src) 
    local storage = {}

    if xPlayer.job.name == 'police' then 
        MySQL.Async.fetchAll("SELECT * FROM mn_policejob_opslag", {}, function(result)
            if result[1].opslag ~= nil then
                local x = json.decode(result[1].opslag) or {}
                cb(x)
            end
        end)
    end
end)


RegisterNetEvent('esx_policejob:putStockItems')
AddEventHandler('esx_policejob:putStockItems', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)
	local sourceItem = xPlayer.getInventoryItem(itemName)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_police', function(inventory)
		local inventoryItem = inventory.getItem(itemName)

		-- does the player have enough of the item?
		if sourceItem.count >= count and count > 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
			xPlayer.showNotification(_U('have_deposited', count, inventoryItem.label))
		else
			xPlayer.showNotification(_U('quantity_invalid'))
		end
	end)
end)

ESX.RegisterServerCallback('esx_policejob:getOtherPlayerData', function(source, cb, target, notify)
	local xPlayer = ESX.GetPlayerFromId(target)
	if notify then
		xPlayer.showNotification(_U('being_searched'))
	end

	if xPlayer then
		local data = {
			name = xPlayer.getName(),
			job = xPlayer.job.label,
			grade = xPlayer.job.grade_label,
			inventory = xPlayer.getInventory(),
			accounts = xPlayer.getAccounts(),
			weapons = xPlayer.getLoadout()
		}

		if Config.EnableESXIdentity then
			data.dob = xPlayer.get('dateofbirth')
			data.height = xPlayer.get('height')

			if xPlayer.get('sex') == 'm' then data.sex = 'male' else data.sex = 'female' end
		end

		TriggerEvent('esx_status:getStatus', target, 'drunk', function(status)
			if status then
				data.drunk = ESX.Math.Round(status.percent)
			end
		end)

		cb(data)
	end
end)

ESX.RegisterServerCallback('esx_policejob:getFineList', function(source, cb, category)
	MySQL.Async.fetchAll('SELECT * FROM fine_types WHERE category = @category', {
		['@category'] = category
	}, function(fines)
		cb(fines)
	end)
end)

ESX.RegisterServerCallback('esx_policejob:getVehicleInfos', function(source, cb, plate)
	MySQL.Async.fetchAll('SELECT owner FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = plate
	}, function(result)
		local retrivedInfo = {plate = plate}

		if result[1] then
			local xPlayer = ESX.GetPlayerFromIdentifier(result[1].owner)

			-- is the owner online?
			if xPlayer then
				retrivedInfo.owner = xPlayer.getName()
				cb(retrivedInfo)
			elseif Config.EnableESXIdentity then
				MySQL.Async.fetchAll('SELECT firstname, lastname FROM users WHERE identifier = @identifier',  {
					['@identifier'] = result[1].owner
				}, function(result2)
					if result2[1] then
						retrivedInfo.owner = ('%s %s'):format(result2[1].firstname, result2[1].lastname)
						cb(retrivedInfo)
					else
						cb(retrivedInfo)
					end
				end)
			else
				cb(retrivedInfo)
			end
		else
			cb(retrivedInfo)
		end
	end)
end)

ESX.RegisterServerCallback('esx_policejob:getArmoryWeapons', function(source, cb)
	TriggerEvent('esx_datastore:getSharedDataStore', 'society_police', function(store)
		local weapons = store.get('weapons')

		if weapons == nil then
			weapons = {}
		end

		cb(weapons)
	end)
end)

ESX.RegisterServerCallback('esx_policejob:addArmoryWeapon', function(source, cb, weaponName, removeWeapon)
	local xPlayer = ESX.GetPlayerFromId(source)

		xPlayer.removeInventoryItem(weaponName, removeWeapon)

	-- TriggerEvent('esx_datastore:getSharedDataStore', 'society_police', function(store)
	-- 	local weapons = store.get('weapons') or {}
	-- 	local foundWeapon = false

	-- 	for i=1, #weapons, 1 do
	-- 		if weapons[i].name == weaponName then
	-- 			weapons[i].count = weapons[i].count + 1
	-- 			foundWeapon = true
	-- 			break
	-- 		end
	-- 	end

	-- 	if not foundWeapon then
	-- 		table.insert(weapons, {
	-- 			name  = weaponName,
	-- 			count = 1
	-- 		})
	-- 	end

	-- 	store.set('weapons', weapons)
	-- 	cb()
	-- end)
end)

ESX.RegisterServerCallback('esx_policejob:removeArmoryWeapon', function(source, cb, weaponName)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.addInventoryItem(weaponName, 1)

	TriggerEvent('esx_datastore:getSharedDataStore', 'society_police', function(store)
		local weapons = store.get('weapons') or {}

		local foundWeapon = false

		for i=1, #weapons, 1 do
			if weapons[i].name == weaponName then
				weapons[i].count = (weapons[i].count > 0 and weapons[i].count - 1 or 0)
				foundWeapon = true
				break
			end
		end

		if not foundWeapon then
			table.insert(weapons, {
				name = weaponName,
				count = 0
			})
		end

		store.set('weapons', weapons)
		cb()
	end)
end)

ESX.RegisterServerCallback('esx_policejob:buyWeapon', function(source, cb, weaponName, type, componentNum)
	local xPlayer = ESX.GetPlayerFromId(source)
	local authorizedWeapons, selectedWeapon = Config.AuthorizedWeapons[xPlayer.job.grade_name]
	for k,v in ipairs(authorizedWeapons) do
		if v.weapon == weaponName then
			selectedWeapon = v
			break
		end
	end

	if not selectedWeapon then
		print(('esx_policejob: %s attempted to buy an invalid weapon.'):format(xPlayer.identifier))
		cb(false)
	else
		-- Weapon
		if type == 1 then
			if xPlayer.getMoney() >= selectedWeapon.price then
				xPlayer.removeMoney(selectedWeapon.price)
				print(selectedWeapon.weapon)
				xPlayer.addInventoryItem(selectedWeapon.weapon, 1)
				xPlayer.addInventoryItem('rifle_ammo', 5000)
				xPlayer.addInventoryItem('pistol_ammo', 5000)
				xPlayer.addInventoryItem('smg_ammo', 5000)

				cb(true)
			else
				cb(false)
			end

		-- Weapon Component
		elseif type == 2 then
			local price = selectedWeapon.components[componentNum]
			local weaponNum, weapon = ESX.GetWeapon(weaponName)
			local component = weapon.components[componentNum]

			if component then
				if xPlayer.getMoney() >= price then
					xPlayer.removeMoney(price)
					xPlayer.addWeaponComponent(weaponName, component.name)

					cb(true)
				else
					cb(false)
				end
			else
				print(('esx_policejob: %s attempted to buy an invalid weapon component.'):format(xPlayer.identifier))
				cb(false)
			end
		end
	end
end)

ESX.RegisterServerCallback('esx_policejob:buyJobVehicle', function(source, cb, vehicleProps, type)
	local xPlayer = ESX.GetPlayerFromId(source)
	local price = getPriceFromHash(vehicleProps.model, xPlayer.job.grade_name, type)

	-- vehicle model not found
	if price == 0 then
		print(('esx_policejob: %s attempted to exploit the shop! (invalid vehicle model)'):format(xPlayer.identifier))
		cb(false)
	else
		if xPlayer.getMoney() >= price then
			xPlayer.removeMoney(price)

			MySQL.Async.execute('INSERT INTO society_vehicles (owner, vehicle, plate, type, job, `stored`) VALUES (@owner, @vehicle, @plate, @type, @job, @stored)', {
				['@owner'] = xPlayer.identifier,
				['@vehicle'] = json.encode(vehicleProps),
				['@plate'] = vehicleProps.plate,
				['@type'] = type,
				['@job'] = xPlayer.job.name,
				['@stored'] = true
			}, function (rowsChanged)
				cb(true)
			end)
		else
			cb(false)
		end
	end
end)

ESX.RegisterServerCallback('esx_policejob:storeNearbyVehicle', function(source, cb, nearbyVehicles)
	local xPlayer = ESX.GetPlayerFromId(source)
	local foundPlate, foundNum

	for k,v in ipairs(nearbyVehicles) do
		local result = MySQL.Sync.fetchAll('SELECT plate FROM society_vehicles WHERE owner = @owner AND plate = @plate AND job = @job', {
			['@owner'] = xPlayer.identifier,
			['@plate'] = v.plate,
			['@job'] = xPlayer.job.name
		})

		if result[1] then
			foundPlate, foundNum = result[1].plate, k
			break
		end
	end

	if not foundPlate then
		cb(false)
	else
		MySQL.Async.execute('UPDATE society_vehicles SET `stored` = true WHERE owner = @owner AND plate = @plate AND job = @job', {
			['@owner'] = xPlayer.identifier,
			['@plate'] = foundPlate,
			['@job'] = xPlayer.job.name
		}, function (rowsChanged)
			if rowsChanged == 0 then
				print(('esx_policejob: %s has exploited the garage!'):format(xPlayer.identifier))
				cb(false)
			else
				cb(true, foundNum)
			end
		end)
	end
end)

function getPriceFromHash(vehicleHash, jobGrade, type)
	local vehicles = Config.AuthorizedVehicles[type][jobGrade]

	for k,v in ipairs(vehicles) do
		if GetHashKey(v.model) == vehicleHash then
			return v.price
		end
	end

	return 0
end

ESX.RegisterServerCallback('esx_policejob:getStockItems', function(source, cb)
	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_police', function(inventory)
		cb(inventory.items)
	end)
end)

ESX.RegisterServerCallback('esx_policejob:getPlayerInventory', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local items   = xPlayer.inventory

	cb({items = items})
end)

AddEventHandler('playerDropped', function()
	-- Save the source in case we lose it (which happens a lot)
	local playerId = source

	-- Did the player ever join?
	if playerId then
		local xPlayer = ESX.GetPlayerFromId(playerId)

		-- Is it worth telling all clients to refresh?
		if xPlayer and xPlayer.job.name == 'police' then
			Citizen.Wait(5000)
			TriggerClientEvent('esx_policejob:updateBlip', -1)
		end
	end
end)

RegisterNetEvent('esx_policejob:spawned')
AddEventHandler('esx_policejob:spawned', function()
	local xPlayer = ESX.GetPlayerFromId(playerId)

	if xPlayer and xPlayer.job.name == 'police' then
		Citizen.Wait(5000)
		TriggerClientEvent('esx_policejob:updateBlip', -1)
	end
end)

RegisterNetEvent('esx_policejob:forceBlip')
AddEventHandler('esx_policejob:forceBlip', function()
	TriggerClientEvent('esx_policejob:updateBlip', -1)
end)

AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Citizen.Wait(5000)
		TriggerClientEvent('esx_policejob:updateBlip', -1)
	end
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		TriggerEvent('esx_phone:removeNumber', 'police')
	end
end)

------------------------ Inbeslagname Voertuig -----------------------------------



ESX.RegisterServerCallback("esx_policejob:server:Voertuigeninbeslag", function(source, callback) 
    local data = {}
    MySQL.Async.fetchAll("SELECT * FROM esx_policejob_inbeslagnamevoertuigen", {}, function(result)  
        for k,v in pairs(result) do 
            table.insert(data, {
                owner = v.owner,
                plate = v.plate,
                vehicle = json.decode(v.vehicle),
                reden = v.reden
            })
        end
        callback(data)
    end)
end)


RegisterServerEvent("esx_policejob:server:inbeslagnemenvoertuig")
AddEventHandler("esx_policejob:server:inbeslagnemenvoertuig", function(x, vehdata, reden)
    local src = source 
    local xPlayer = ESX.GetPlayerFromId(src)
    local owner = x.owner 
    local plate = x.kenteken
    local veh = json.encode(vehdata)
    if xPlayer.job.name == 'police' then 
        MySQL.Async.execute("INSERT INTO esx_policejob_inbeslagnamevoertuigen (owner, vehicle, plate, reden) VALUES (@owner , @vehicle, @plate, @reden)", {
            ["@owner"] = owner,
            ["@plate"] = plate,
            ["@vehicle"] = veh,
            ["@reden"] = x.reden
        }, function(done)
        end)

        MySQL.Async.execute("DELETE FROM owned_vehicles WHERE plate = @plate", {["@plate"] = plate})
        DiscordLog("https://discord.com/api/webhooks/883051363850944562/716-Lyix1xQERg20gsrEf7C9lBZoFxPAVta7IJjxsL-_LMI5dYREp1JyONP9gwOvpQyv", "**Steamnaam Agent:** " .. GetPlayerName(src) .. "\n **Rang:** " .. xPlayer.getJob().grade_label .. "\n **Voertuig kenteken:** " .. plate .. "\n **Actie: ** Speler heeft het voertuig met kenteken " .. plate .. " inbeslag genomen \n **Reden: **" .. x.reden, false)
    else
		ESX.BanPlayer(source, 'Heeft "esx_policejob" proberen te manipuleren via triggers.')
    end
end)



ESX.RegisterServerCallback("esx_policejob:server:getvehowner", function(source, callback, identifier)
    MySQL.Async.fetchAll("SELECT firstname, lastname FROM users WHERE identifier = @identifier", {["@identifier"] = identifier}, function(result)
        callback(result[1].firstname .. " " .. result[1].lastname)
    end)
end)

RegisterServerEvent("esx_policejob:server:givecarback")
AddEventHandler("esx_policejob:server:givecarback", function(x)
    local src = source 
    local xPlayer = ESX.GetPlayerFromId(src)


    if xPlayer.job.name == 'police' then 

        MySQL.Async.execute("INSERT INTO owned_vehicles (owner, plate, vehicle, type, stored) VALUES(@owner, @plate, @vehicle, @type, @stored)", {
            ["@owner"] = x.identifier,
            ["@plate"] = x.kenteken,
            ["@vehicle"] = json.encode(x.voertuigmods),
            ["@type"] = 'car',
            ["@stored"] = 0,
        })
        MySQL.Async.execute("DELETE FROM esx_policejob_inbeslagnamevoertuigen WHERE plate = @plate", {["@plate"] = x.kenteken})
    else
		ESX.BanPlayer(source, 'Heeft "esx_policejob" proberen te manipuleren via triggers.')
    end
end)


RegisterServerEvent('esx_policejob:requestarrest')
AddEventHandler('esx_policejob:requestarrest', function(targetid, playerheading, playerCoords,  playerlocation)
    _source = source
    TriggerClientEvent('esx_policejob:getarrested', targetid, playerheading, playerCoords, playerlocation)
    TriggerClientEvent('esx_policejob:doarrested', _source)
end)

RegisterServerEvent('esx_policejob:requestrelease')
AddEventHandler('esx_policejob:requestrelease', function(targetid, playerheading, playerCoords,  playerlocation)
    _source = source
    TriggerClientEvent('esx_policejob:getuncuffed', targetid, playerheading, playerCoords, playerlocation)
    TriggerClientEvent('esx_policejob:douncuffing', _source)
end)

RegisterServerEvent('esx_policejob:sc')
AddEventHandler('esx_policejob:sc', function(playerheading, playercoords, playerlocation)
    _source = source
    TriggerClientEvent('esx_policejob:getuncuffed', targetid, playerheading, playerCoords, playerlocation)
    TriggerClientEvent('esx_policejob:douncuffing', _source)
end)

RegisterServerEvent('esx_policejob:requesthard')
AddEventHandler('esx_policejob:requesthard', function(targetid, playerheading, playerCoords,  playerlocation)
    _source = source
    TriggerClientEvent('esx_policejob:getarrestedhard', targetid, playerheading, playerCoords, playerlocation)
    TriggerClientEvent('esx_policejob:doarrested', _source)
end)