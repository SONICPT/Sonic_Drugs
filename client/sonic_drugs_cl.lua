local name = GetCurrentResourceName()


if Config.name == name then
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

local inUse = false
local location = nil
local blip
local isProcessing = false
local player


Citizen.CreateThread(function()
	local sleep
	while not pick do
		Citizen.Wait(0)
	end
	while true do
		sleep = 5
		local player = GetPlayerPed(-1)
		local playercoords = GetEntityCoords(player)
		local apanha = #(vector3(playercoords.x,playercoords.y,playercoords.z)-vector3(Config.ApanaharErva.x,Config.ApanaharErva.y,Config.ApanaharErva.z))
		if apanha <= 3 and not isPick then
			sleep = 5
			DrawText3Ds(Config.ApanaharErva.x,Config.ApanaharErva.y,Config.ApanaharErva.z, _U'pegar_erva')			
			if IsControlJustPressed(1, 51) then		
				isPick = true
				ESX.TriggerServerCallback('erva:pegar', function(success)
					if success then			
						pick()
					else
						isPick = false
					end
				end)
			end
		else
			sleep = 1500
		end
		Citizen.Wait(sleep)
	end
end)

function pick()
	pro = true
	local player = GetPlayerPed(-1)
	SetEntityCoords(player, Config.ApanaharErva.x,Config.ApanaharErva.y,Config.ApanaharErva.z-1, 0.0, 0.0, 0.0, false)
	SetEntityHeading(player, Config.ApanaharErva.w)
	FreezeEntityPosition(player, true)
	if Config.progBar then
		exports['progressBars']:startUI(6000, _U'pegando_erva')
	end
	playAnim("anim@amb@business@weed@weed_inspecting_lo_med_hi@", "weed_spraybottle_crouch_spraying_02_inspector", 6000)
	Citizen.Wait(6000)
	FreezeEntityPosition(player, false)
	TriggerServerEvent('erva:pegada')
	isPick= false
	pro = false
end


Citizen.CreateThread(function()
	local sleep
	while not process do
		Citizen.Wait(0)
	end
	while true do
		sleep = 5
		local player = GetPlayerPed(-1)
		local playercoords = GetEntityCoords(player)
		local dist = #(vector3(playercoords.x,playercoords.y,playercoords.z)-vector3(Config.ProcessoErva.x,Config.ProcessoErva.y,Config.ProcessoErva.z))
		if dist <= 3 and not isProcessing then
			sleep = 5
			DrawText3Ds(Config.ProcessoErva.x, Config.ProcessoErva.y, Config.ProcessoErva.z, _U'processa_erva')			
			if IsControlJustPressed(1, 51) then		
				isProcessing = true
				ESX.TriggerServerCallback('erva:processo', function(success)
					if success then
						processing()
					else
						isProcessing = false
					end
				end)
			end
		else
			sleep = 1500
		end
		Citizen.Wait(sleep)
	end
end)

function processing()
	pro = true
	local player = GetPlayerPed(-1)
	SetEntityCoords(player, Config.ProcessoErva.x,Config.ProcessoErva.y,Config.ProcessoErva.z-1, 0.0, 0.0, 0.0, false)
	SetEntityHeading(player, Config.ProcessoErva.w)
	FreezeEntityPosition(player, true)
	if Config.progBar then
		exports['progressBars']:startUI(8000, _U'processando_erva')
	end
	playAnim("anim@amb@business@weed@weed_sorting_seated@", "sorter_right_sort_v3_sorter02", 8000)
	Citizen.Wait(8000)
	FreezeEntityPosition(player, false)
	TriggerServerEvent('erva:processada')
	isProcessing = false
	pro = false
end

Citizen.CreateThread(function()
	local sleep
	while not pick do
		Citizen.Wait(0)
	end
	while true do
		sleep = 5
		local player = GetPlayerPed(-1)
		local playercoords = GetEntityCoords(player)
		local apanha = #(vector3(playercoords.x,playercoords.y,playercoords.z)-vector3(Config.ApanaharCoca.x,Config.ApanaharCoca.y,Config.ApanaharCoca.z))
		if apanha <= 3 and not isPick then
			sleep = 5
			DrawText3Ds(Config.ApanaharCoca.x,Config.ApanaharCoca.y,Config.ApanaharCoca.z, _U'pegar_coca')			
			if IsControlJustPressed(1, 51) then		
				isPick = true
				ESX.TriggerServerCallback('coca:pegar', function(success)
					if success then			
						pick2()
					else
						isPick = false
					end
				end)
			end
		else
			sleep = 1500
		end
		Citizen.Wait(sleep)
	end
end)

function pick2()
	pro = true
	local player = GetPlayerPed(-1)
	SetEntityCoords(player, Config.ApanaharCoca.x,Config.ApanaharCoca.y,Config.ApanaharCoca.z-1, 0.0, 0.0, 0.0, false)
	SetEntityHeading(player, Config.ApanaharCoca.w)
	FreezeEntityPosition(player, true)
	if Config.progBar then
		exports['progressBars']:startUI(6000, _U'pegando_coca')
	end
	playAnim("anim@amb@business@weed@weed_inspecting_lo_med_hi@", "weed_spraybottle_crouch_spraying_02_inspector", 6000)
	Citizen.Wait(6000)
	FreezeEntityPosition(player, false)
	TriggerServerEvent('coca:pegada')
	isPick= false
	pro = false
end


Citizen.CreateThread(function()
	local sleep
	while not process do
		Citizen.Wait(0)
	end
	while true do
		sleep = 5
		local player = GetPlayerPed(-1)
		local playercoords = GetEntityCoords(player)
		local dist = #(vector3(playercoords.x,playercoords.y,playercoords.z)-vector3(Config.ProcessoCoca.x,Config.ProcessoCoca.y,Config.ProcessoCoca.z))
		if dist <= 3 and not isProcessing then
			sleep = 5
			DrawText3Ds(Config.ProcessoCoca.x, Config.ProcessoCoca.y, Config.ProcessoCoca.z, _U'processa_coca')			
			if IsControlJustPressed(1, 51) then		
				isProcessing = true
				ESX.TriggerServerCallback('coca:processo', function(success)
					if success then
						processing2()
					else
						isProcessing = false
					end
				end)
			end
		else
			sleep = 1500
		end
		Citizen.Wait(sleep)
	end
end)

function processing2()
	pro = true
	local player = GetPlayerPed(-1)
	SetEntityCoords(player, Config.ProcessoCoca.x,Config.ProcessoCoca.y,Config.ProcessoCoca.z-1, 0.0, 0.0, 0.0, false)
	SetEntityHeading(player, Config.ProcessoCoca.w)
	FreezeEntityPosition(player, true)
	if Config.progBar then
		exports['progressBars']:startUI(16000, _U'processando_coca')
	end
	playAnim("anim@amb@business@coc@coc_packing_hi@", "full_cycle_v3_pressoperator", 16000)
	Citizen.Wait(16000)
	FreezeEntityPosition(player, false)
	TriggerServerEvent('coca:processada')
	isProcessing = false
	pro = false
end

Citizen.CreateThread(function()
	local sleep
	while not pick do
		Citizen.Wait(0)
	end
	while true do
		sleep = 5
		local player = GetPlayerPed(-1)
		local playercoords = GetEntityCoords(player)
		local apanha = #(vector3(playercoords.x,playercoords.y,playercoords.z)-vector3(Config.ApanaharMeta.x,Config.ApanaharMeta.y,Config.ApanaharMeta.z))
		if apanha <= 3 and not isPick then
			sleep = 5
			DrawText3Ds(Config.ApanaharMeta.x,Config.ApanaharMeta.y,Config.ApanaharMeta.z, _U'pegar_meta')			
			if IsControlJustPressed(1, 51) then		
				isPick = true
				ESX.TriggerServerCallback('meta:pegar', function(success)
					if success then			
						pick3()
					else
						isPick = false
					end
				end)
			end
		else
			sleep = 1500
		end
		Citizen.Wait(sleep)
	end
end)

function pick3()
	pro = true
	local player = GetPlayerPed(-1)
	SetEntityCoords(player, Config.ApanaharMeta.x,Config.ApanaharMeta.y,Config.ApanaharMeta.z-1, 0.0, 0.0, 0.0, false)
	SetEntityHeading(player, Config.ApanaharMeta.w)
	FreezeEntityPosition(player, true)
	if Config.progBar then
		exports['progressBars']:startUI(10000, _U'pegando_meta')
	end
	playAnim("anim@amb@business@meth@meth_monitoring_cooking@cooking@", "chemical_pour_short_cooker", 10000)
	Citizen.Wait(10000)
	FreezeEntityPosition(player, false)
	TriggerServerEvent('meta:pegada')
	isPick= false
	pro = false
end


Citizen.CreateThread(function()
	local sleep
	while not process do
		Citizen.Wait(0)
	end
	while true do
		sleep = 5
		local player = GetPlayerPed(-1)
		local playercoords = GetEntityCoords(player)
		local dist = #(vector3(playercoords.x,playercoords.y,playercoords.z)-vector3(Config.ProcessoMeta.x,Config.ProcessoMeta.y,Config.ProcessoMeta.z))
		if dist <= 3 and not isProcessing then
			sleep = 5
			DrawText3Ds(Config.ProcessoMeta.x, Config.ProcessoMeta.y, Config.ProcessoMeta.z, _U'processa_meta')			
			if IsControlJustPressed(1, 51) then		
				isProcessing = true
				ESX.TriggerServerCallback('meta:processo', function(success)
					if success then
						processing3()
					else
						isProcessing = false
					end
				end)
			end
		else
			sleep = 1500
		end
		Citizen.Wait(sleep)
	end
end)

function processing3()
	pro = true
	local player = GetPlayerPed(-1)
	SetEntityCoords(player, Config.ProcessoMeta.x,Config.ProcessoMeta.y,Config.ProcessoMeta.z-1, 0.0, 0.0, 0.0, false)
	SetEntityHeading(player, Config.ProcessoMeta.w)
	FreezeEntityPosition(player, true)
	if Config.progBar then
		exports['progressBars']:startUI(12000, _U'processando_meta')
	end
	playAnim("anim@amb@business@meth@meth_smash_weight_check@", "break_weigh_v3_char01", 12000)
	Citizen.Wait(12000)
	FreezeEntityPosition(player, false)
	TriggerServerEvent('meta:processada')
	isProcessing = false
	pro = false
end

Citizen.CreateThread(function()
	local sleep
	while not pick do
		Citizen.Wait(0)
	end
	while true do
		sleep = 5
		local player = GetPlayerPed(-1)
		local playercoords = GetEntityCoords(player)
		local apanha = #(vector3(playercoords.x,playercoords.y,playercoords.z)-vector3(Config.ApanaharPet.x,Config.ApanaharPet.y,Config.ApanaharPet.z))
		if apanha <= 3 and not isPick then
			sleep = 5
			DrawText3Ds(Config.ApanaharPet.x,Config.ApanaharPet.y,Config.ApanaharPet.z, _U'pegar_pet')			
			if IsControlJustPressed(1, 51) then		
				isPick = true
				ESX.TriggerServerCallback('pet:pegar', function(success)
					if success then			
						pick4()
					else
						isPick = false
					end
				end)
			end
		else
			sleep = 1500
		end
		Citizen.Wait(sleep)
	end
end)

function pick4()
	pro = true
	local player = GetPlayerPed(-1)
	SetEntityCoords(player, Config.ApanaharPet.x,Config.ApanaharPet.y,Config.ApanaharPet.z-1, 0.0, 0.0, 0.0, false)
	SetEntityHeading(player, Config.ApanaharPet.w)
	FreezeEntityPosition(player, true)
	if Config.progBar then
		exports['progressBars']:startUI(10000, _U'pegando_pet')
	end
	playAnim("anim@amb@business@meth@meth_monitoring_cooking@cooking@", "chemical_pour_short_cooker", 10000)
	Citizen.Wait(10000)
	FreezeEntityPosition(player, false)
	TriggerServerEvent('pet:pegada')
	isPick= false
	pro = false
end


Citizen.CreateThread(function()
	local sleep
	while not process do
		Citizen.Wait(0)
	end
	while true do
		sleep = 5
		local player = GetPlayerPed(-1)
		local playercoords = GetEntityCoords(player)
		local dist = #(vector3(playercoords.x,playercoords.y,playercoords.z)-vector3(Config.ProcessoPet.x,Config.ProcessoPet.y,Config.ProcessoPet.z))
		if dist <= 3 and not isProcessing then
			sleep = 5
			DrawText3Ds(Config.ProcessoPet.x, Config.ProcessoPet.y, Config.ProcessoPet.z, _U'processa_pet')			
			if IsControlJustPressed(1, 51) then		
				isProcessing = true
				ESX.TriggerServerCallback('pet:processo', function(success)
					if success then
						processing4()
					else
						isProcessing = false
					end
				end)
			end
		else
			sleep = 1500
		end
		Citizen.Wait(sleep)
	end
end)

function processing4()
	pro = true
	local player = GetPlayerPed(-1)
	SetEntityCoords(player, Config.ProcessoPet.x,Config.ProcessoPet.y,Config.ProcessoPet.z-1, 0.0, 0.0, 0.0, false)
	SetEntityHeading(player, Config.ProcessoPet.w)
	FreezeEntityPosition(player, true)
	if Config.progBar then
		exports['progressBars']:startUI(12000, _U'processando_pet')
	end
	playAnim("anim@amb@business@meth@meth_smash_weight_check@", "break_weigh_v3_char01", 12000)
	Citizen.Wait(12000)
	FreezeEntityPosition(player, false)
	TriggerServerEvent('pet:processada')
	isProcessing = false
	pro = false
end

Citizen.CreateThread(function()
	local sleep
	while not process do
		Citizen.Wait(0)
	end
	while true do
		sleep = 5
		local player = GetPlayerPed(-1)
		local playercoords = GetEntityCoords(player)
		local dist = #(vector3(playercoords.x,playercoords.y,playercoords.z)-vector3(Config.VenderErva.x,Config.VenderErva.y,Config.VenderErva.z))
		if dist <= 3 and not isProcessing then
			sleep = 5
			DrawText3Ds(Config.VenderErva.x, Config.VenderErva.y, Config.VenderErva.z, _U'vender_erva')			
			if IsControlJustPressed(1, 51) then		
				isProcessing = true
				ESX.TriggerServerCallback('erva:vender', function(success)
					if success then
						Vender()
					else
						isProcessing = false
					end
				end)
			end
		else
			sleep = 1500
		end
		Citizen.Wait(sleep)
	end
end)

function Vender()
	pro = true
	local player = GetPlayerPed(-1)
	SetEntityCoords(player, Config.VenderErva.x,Config.VenderErva.y,Config.VenderErva.z-1, 0.0, 0.0, 0.0, false)
	SetEntityHeading(player, Config.VenderErva.w)
	FreezeEntityPosition(player, true)
	if Config.progBar then
		exports['progressBars']:startUI(12000, _U'vendendo_erva')
	end
	playAnim("anim@amb@business@meth@meth_smash_weight_check@", "break_weigh_v3_char01", 12000)
	Citizen.Wait(12000)
	FreezeEntityPosition(player, false)
	TriggerServerEvent('erva:vendida')
	isProcessing = false
	pro = false
end

Citizen.CreateThread(function()
	local sleep
	while not process do
		Citizen.Wait(0)
	end
	while true do
		sleep = 5
		local player = GetPlayerPed(-1)
		local playercoords = GetEntityCoords(player)
		local dist = #(vector3(playercoords.x,playercoords.y,playercoords.z)-vector3(Config.VenderCoca.x,Config.VenderCoca.y,Config.VenderCoca.z))
		if dist <= 3 and not isProcessing then
			sleep = 5
			DrawText3Ds(Config.VenderCoca.x, Config.VenderCoca.y, Config.VenderCoca.z, _U'vender_coca')			
			if IsControlJustPressed(1, 51) then		
				isProcessing = true
				ESX.TriggerServerCallback('coca:vender', function(success)
					if success then
						Vender2()
					else
						isProcessing = false
					end
				end)
			end
		else
			sleep = 1500
		end
		Citizen.Wait(sleep)
	end
end)

function Vender2()
	pro = true
	local player = GetPlayerPed(-1)
	SetEntityCoords(player, Config.VenderCoca.x,Config.VenderCoca.y,Config.VenderCoca.z-1, 0.0, 0.0, 0.0, false)
	SetEntityHeading(player, Config.VenderCoca.w)
	FreezeEntityPosition(player, true)
	if Config.progBar then
		exports['progressBars']:startUI(12000, _U'vendendo_coca')
	end
	playAnim("anim@amb@business@meth@meth_smash_weight_check@", "break_weigh_v3_char01", 12000)
	Citizen.Wait(12000)
	FreezeEntityPosition(player, false)
	TriggerServerEvent('coca:vendida')
	isProcessing = false
	pro = false
end

Citizen.CreateThread(function()
	local sleep
	while not process do
		Citizen.Wait(0)
	end
	while true do
		sleep = 5
		local player = GetPlayerPed(-1)
		local playercoords = GetEntityCoords(player)
		local dist = #(vector3(playercoords.x,playercoords.y,playercoords.z)-vector3(Config.VenderMeta.x,Config.VenderMeta.y,Config.VenderMeta.z))
		if dist <= 3 and not isProcessing  then
			sleep = 5
			DrawText3Ds(Config.VenderMeta.x, Config.VenderMeta.y, Config.VenderMeta.z, _U'vender_meta')			
			if IsControlJustPressed(1, 51) then		
				isProcessing = true
				ESX.TriggerServerCallback('meta:vender', function(success)
					if success then
						Vender3()
					else
						isProcessing = false
					end
				end)
			end
		else
			sleep = 1500
		end
		Citizen.Wait(sleep)
	end
end)

function Vender3()
	pro = true
	local player = GetPlayerPed(-1)
	SetEntityCoords(player, Config.VenderMeta.x,Config.VenderMeta.y,Config.VenderMeta.z-1, 0.0, 0.0, 0.0, false)
	SetEntityHeading(player, Config.VenderMeta.w)
	FreezeEntityPosition(player, true)
	if Config.progBar then
		exports['progressBars']:startUI(12000, _U'vendendo_meta')
	end
	playAnim("anim@amb@business@meth@meth_smash_weight_check@", "break_weigh_v3_char01", 12000)
	Citizen.Wait(12000)
	FreezeEntityPosition(player, false)
	TriggerServerEvent('meta:vendida')
	isProcessing = false
	pro = false
end

Citizen.CreateThread(function()
	local sleep
	while not process do
		Citizen.Wait(0)
	end
	while true do
		sleep = 5
		local player = GetPlayerPed(-1)
		local playercoords = GetEntityCoords(player)
		local dist = #(vector3(playercoords.x,playercoords.y,playercoords.z)-vector3(Config.VenderPet.x,Config.VenderPet.y,Config.VenderPet.z))
		if dist <= 3 and not isProcessing then
			sleep = 5
			DrawText3Ds(Config.VenderPet.x, Config.VenderPet.y, Config.VenderPet.z, _U'vender_pet')			
			if IsControlJustPressed(1, 51) then		
				isProcessing = true
				ESX.TriggerServerCallback('pet:vender', function(success)
					if success then
						Vender4()
					else
						isProcessing = false
					end
				end)
			end
		else
			sleep = 1500
		end
		Citizen.Wait(sleep)
	end
end)

function Vender4()
	pro = true
	local player = GetPlayerPed(-1)
	SetEntityCoords(player, Config.VenderPet.x,Config.VenderPet.y,Config.VenderPet.z-1, 0.0, 0.0, 0.0, false)
	SetEntityHeading(player, Config.VenderPet.w)
	FreezeEntityPosition(player, true)
	if Config.progBar then
		exports['progressBars']:startUI(12000, _U'vendendo_pet')
	end
	playAnim("anim@amb@business@meth@meth_smash_weight_check@", "break_weigh_v3_char01", 12000)
	Citizen.Wait(12000)
	FreezeEntityPosition(player, false)
	TriggerServerEvent('pet:vendida')
	isProcessing = false
	pro = false
end

function playAnim(animDict, animName, duration)
    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do 
      Citizen.Wait(0) 
    end
    TaskPlayAnim(GetPlayerPed(-1), animDict, animName, 1.0, -1.0, duration, 49, 1, false, false, false)
    RemoveAnimDict(animDict)
end

function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end

Citizen.CreateThread(function()
	while true do
	  Citizen.Wait(10)
	  if pro then
		playerPed = PlayerPedId()
		DisablePlayerFiring(playerPed, true)
  
		DisableControlAction(0, 24, true) -- Attack
		DisableControlAction(0, 257, true) -- Attack 2
		DisableControlAction(0, 25, true) -- Aim
		DisableControlAction(0, 263, true) -- Melee Attack 1
		DisableControlAction(0, 56, true) -- F9
  
		DisableControlAction(0, 45, true) -- Reload
		DisableControlAction(0, 140, true) -- Mele attack
		DisableControlAction(0, 22, true) -- Jump
		DisableControlAction(0, 44, true) -- Cover
		DisableControlAction(0, 37, true) -- Select Weapon

		DisableControlAction(0, 288, true) -- F1
		DisableControlAction(0, 289, true) -- F2
		DisableControlAction(0, 170, true) -- F3
		DisableControlAction(0, 167, true) -- F6
  
		DisableControlAction(0, 0, true) -- Disable changing view
		DisableControlAction(0, 26, true) -- Disable looking behind
		DisableControlAction(0, 73, true) -- Disable clearing animation
		DisableControlAction(2, 199, true) -- Disable pause screen
	  end
	end
  end)  
end