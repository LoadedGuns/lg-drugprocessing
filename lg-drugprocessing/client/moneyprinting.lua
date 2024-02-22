local QBCore = exports['qb-core']:GetCoreObject()
local isProcessing = false

local function PrintSheet()
	isProcessing = true
	local playerPed = PlayerPedId()

	TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_PARKING_METER", 0, true)
	QBCore.Functions.Progressbar("search_register", Lang:t("progressbar.processing"), 15000, false, true, {
		disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
	}, {}, {}, {}, function()
		TriggerServerEvent('lg-drugprocessing:printSheet')

		local timeLeft = Config.Delays.MoneyPrinting / 1000
		while timeLeft > 0 do
			Wait(1000)
			timeLeft -= 1

			if #(GetEntityCoords(playerPed)-Config.CircleZones.moneysheet.coords) > 4 then
				TriggerServerEvent('lg-drugprocessing:cancelProcessing')
				break
			end
		end
		ClearPedTasks(playerPed)
		isProcessing = false
	end, function()
		ClearPedTasks(playerPed)
		isProcessing = false
	end)
end

local function CutSheet()
	isProcessing = true
	local playerPed = PlayerPedId()

	TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_PARKING_METER", 0, true)
	QBCore.Functions.Progressbar("search_register", Lang:t("progressbar.processing"), 15000, false, true, {
		disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
	}, {}, {}, {}, function()
		TriggerServerEvent('lg-drugprocessing:cutSheet')

		local timeLeft = Config.Delays.MoneyPrinting / 1000
		while timeLeft > 0 do
			Wait(1000)
			timeLeft -= 1

			if #(GetEntityCoords(playerPed)-Config.CircleZones.cutsheet.coords) > 4 then
				TriggerServerEvent('lg-drugprocessing:cancelProcessing')
				break
			end
		end
		ClearPedTasks(playerPed)
		isProcessing = false
	end, function()
		ClearPedTasks(playerPed)
		isProcessing = false
	end)
end

RegisterNetEvent('lg-drugprocessing:printSheet', function()
	local coords = GetEntityCoords(PlayerPedId())
	local amount = 1
	local amount2 = 1
	
	if #(coords-Config.CircleZones.moneysheet.coords) < 5 then
		if not isProcessing then
			local check = {
				ink = Config.MoneyProcessing.Ink,
				cottonpaper = Config.MoneyProcessing.CottonPaper,
			}
			QBCore.Functions.TriggerCallback('lg-drugprocessing:validate_items', function(result)
				if result.ret then
					PrintSheet()
				else
					QBCore.Functions.Notify(Lang:t("error.no_item", {item = result.item}))
				end
			end, check)
		else
			QBCore.Functions.Notify(Lang:t("error.already_processing"), 'error')
		end
	end
end)

RegisterNetEvent('lg-drugprocessing:cutSheet', function()
	local coords = GetEntityCoords(PlayerPedId())
	local amount = 1
	
	if #(coords-Config.CircleZones.cutsheet.coords) < 5 then
		if not isProcessing then
			local check = {
				sheetofprintedbills = Config.MoneyProcessing.SheetOfPrintedBills,
			}
			QBCore.Functions.TriggerCallback('lg-drugprocessing:validate_items', function(result)
				if result.ret then
					CutSheet()
				else
					QBCore.Functions.Notify(Lang:t("error.no_item", {item = result.item}))
				end
			end, check)
		else
			QBCore.Functions.Notify(Lang:t("error.already_processing"), 'error')
		end
	end
end)