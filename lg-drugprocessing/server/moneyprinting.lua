local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('lg-drugprocessing:printSheet', function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)

	if Player.Functions.RemoveItem('ink', Config.MoneyProcessing.Ink) then
		if Player.Functions.RemoveItem('cottonpaper', Config.MoneyProcessing.CottonPaper) then
			if Player.Functions.AddItem('sheetofprintedbills', Config.MoneyProcessing.PrintSheetOfPrintedBills) then
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['ink'], "remove", Config.MoneyProcessing.Ink)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['cottonpaper'], "remove", Config.MoneyProcessing.CottonPaper)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['sheetofprintedbills'], "add", Config.MoneyProcessing.PrintSheetOfPrintedBills)
				TriggerClientEvent('QBCore:Notify', src, Lang:t("printedbills"), "success")
			else
				Player.Functions.AddItem('ink', Config.MoneyProcessing.Ink)
				Player.Functions.AddItem('cottonpaper', Config.MoneyProcessing.CottonPaper)
			end
		else
			Player.Functions.AddItem('ink', Config.MoneyProcessing.Ink)
			TriggerClientEvent('QBCore:Notify', src, Lang:t("error.nopaper"), "error")
		end
	else
		TriggerClientEvent('QBCore:Notify', src, Lang:t("error.noink"), "error")
	end
end)

RegisterServerEvent('lg-drugprocessing:cutSheet', function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)

	if Player.Functions.RemoveItem('sheetofprintedbills', Config.MoneyProcessing.SheetOfPrintedBills) then
			if Player.Functions.AddItem('cash', Config.MoneyProcessing.Cash) then
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['sheetofprintedbills'], "remove", Config.SheetOfPrintedBills.Ink)
				TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['cash'], "add", Config.MoneyProcessing.Cash)
				TriggerClientEvent('QBCore:Notify', src, Lang:t("cutsheet"), "success")
			else
				Player.Functions.AddItem('sheetofprintedbills', Config.MoneyProcessing.SheetOfPrintedBills)
			end
		else
			Player.Functions.AddItem('sheetofprintedbills', Config.MoneyProcessing.SheetOfPrintedBills)
			TriggerClientEvent('QBCore:Notify', src, Lang:t("error.nosheet"), "error")
		end
end)