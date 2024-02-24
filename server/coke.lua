local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('lg-drugprocessing:pickedUpCocaLeaf', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)

	if Player.Functions.AddItem("coca_leaf", math.random(1, 3)) then 
		TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["coca_leaf"], "add")
		TriggerClientEvent('QBCore:Notify', src, Lang:t("success.coca_leaf"), "success")
	else
		TriggerClientEvent('QBCore:Notify', src, Lang:t("error.no_coca_leaf"), "error")
	end
end)

RegisterServerEvent('lg-drugprocessing:processCocaLeaf', function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)

	if Player.Functions.RemoveItem('coca_leaf', Config.CokeProcessing.CokeLeaf) then
		if Player.Functions.AddItem('coke', Config.CokeProcessing.ProcessCokeLeaf) then
			TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['coca_leaf'], "remove", Config.CokeProcessing.CokeLeaf)
			TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['coke'], "add", Config.CokeProcessing.ProcessCokeLeaf)
			TriggerClientEvent('QBCore:Notify', src, Lang:t("success.coke"), "success")
		else
			Player.Functions.AddItem('coca_leaf', Config.CokeProcessing.CokeLeaf)
		end
	else
		TriggerClientEvent('QBCore:Notify', src, Lang:t("error.no_coca_leaf"), "error")
	end
end)

RegisterServerEvent('lg-drugprocessing:processCocaPowder', function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)

	if Player.Functions.RemoveItem('coke', Config.CokeProcessing.Coke) then
		if Player.Functions.RemoveItem('bakingsoda', Config.CokeProcessing.BakingSoda) then
			if Player.Functions.AddItem('coke_small_brick', Config.CokeProcessing.SmallCokeBrick) then
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['coke'], "remove", Config.CokeProcessing.Coke)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['bakingsoda'], "remove", Config.CokeProcessing.BakingSoda)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['coke_small_brick'], "add", Config.CokeProcessing.SmallCokeBrick)
				TriggerClientEvent('QBCore:Notify', src, Lang:t("success.coke_small_brick"), "success")
			else
				Player.Functions.AddItem('coke', Config.CokeProcessing.Coke)
				Player.Functions.AddItem('bakingsoda', Config.CokeProcessing.BakingSoda)
			end
		else
			Player.Functions.AddItem('coke', Config.CokeProcessing.Coke)
			TriggerClientEvent('QBCore:Notify', src, Lang:t("error.no_bakingsoda"), "error")
		end
	else
		TriggerClientEvent('QBCore:Notify', src, Lang:t("error.no_cokain"), "error")
	end
end)

RegisterServerEvent('lg-drugprocessing:processCocaBrick', function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)

	if Player.Functions.RemoveItem('coke_small_brick', Config.CokeProcessing.SmallBrick) then
		if Player.Functions.AddItem('coke_brick', Config.CokeProcessing.LargeBrick) then
			TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items['coke_small_brick'], "remove", Config.CokeProcessing.SmallBrick)
			TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items['coke_brick'], "add", Config.CokeProcessing.LargeBrick)
			TriggerClientEvent('QBCore:Notify', src, Lang:t("success.coke_brick"), "success")
		else
			Player.Functions.AddItem('coke_small_brick', Config.CokeProcessing.SmallBrick)
		end
	end
end)

RegisterServerEvent('lg-drugprocessing:bagcoke', function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)

	if Player.Functions.RemoveItem('coke', 1) then
		if Player.Functions.RemoveItem('empty_weed_bag', 1) then
			if Player.Functions.AddItem('cokebaggy', 1) then
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['coke'], "remove")
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['empty_weed_bag'], "remove")
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['cokebaggy'], "add")
				TriggerClientEvent('QBCore:Notify', src, Lang:t("success.baggy"), "success")
			else
				Player.Functions.AddItem('coke', 1)
				Player.Functions.AddItem('empty_weed_bag', 1)
			end
		else
			Player.Functions.AddItem('coke', 1)
		end
	else
		TriggerClientEvent('QBCore:Notify', src, Lang:t("error.no_coke"), "error")
	end
end)

RegisterServerEvent('lg-drugprocessing:cutsmallbrick', function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)

	if Player.Functions.RemoveItem('coke_small_brick', 1) then
		if Player.Functions.RemoveItem('empty_weed_bag', 10) then
			if Player.Functions.AddItem('cokebaggy', 10) then
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['coke_small_brick'], "remove")
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['empty_weed_bag'], "remove")
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['cokebaggy'], "add")
				TriggerClientEvent('QBCore:Notify', src, Lang:t("success.baggy"), "success")
			else
				Player.Functions.AddItem('coke_small_brick', 1)
				Player.Functions.AddItem('empty_weed_bag', 10)
			end
		else
			Player.Functions.AddItem('coke_small_brick', 1)
		end
	else
		TriggerClientEvent('QBCore:Notify', src, Lang:t("error.no_bags"), "error")
	end
end)

RegisterServerEvent('lg-drugprocessing:cutlargebrick', function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)

	if Player.Functions.RemoveItem('coke_brick', 1) then
		if Player.Functions.RemoveItem('empty_weed_bag', 40) then
			if Player.Functions.AddItem('cokebaggy', 40) then
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['coke_large_brick'], "remove")
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['empty_weed_bag'], "remove")
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['cokebaggy'], "add")
				TriggerClientEvent('QBCore:Notify', src, Lang:t("success.baggy"), "success")
			else
				Player.Functions.AddItem('coke_large_brick', 1)
				Player.Functions.AddItem('empty_weed_bag', 40)
			end
		else
			Player.Functions.AddItem('coke_brick', 1)
		end
	else
		TriggerClientEvent('QBCore:Notify', src, Lang:t("error.no_bags"), "error")
	end
end)

QBCore.Functions.CreateUseableItem("coke", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent('lg-drugprocessing:client:bagcoke', source, 'empty_weed_bag', item)
end)

QBCore.Functions.CreateUseableItem("coke_small_brick", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent('lg-drugprocessing:client:cutsmallbrick', source, 'empty_weed_bag', item)
end)

QBCore.Functions.CreateUseableItem("coke_brick", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent('lg-drugprocessing:client:cutlargebrick', source, 'empty_weed_bag', item)
end)