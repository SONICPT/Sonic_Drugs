ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("erva:pegada")
AddEventHandler("erva:pegada", function(x,y,z)
  	local _source = source
  	local xPlayer = ESX.GetPlayerFromId(_source)
  	local pick = Config.PegarDroga
	xPlayer.addInventoryItem('weed', pick)
	if Config.useMythic then
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Apanhas-te ' .. Config.PegarDroga .. 'x erva!'})
    end
end)

ESX.RegisterServerCallback('erva:pegar', function(source, cb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local check = xPlayer.getInventoryItem('weed').count
	if check <= Config.LimiteErva then
    	cb(true)
    else
      if Config.useMythic then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Já tens muita erva!('..Config.LimiteErva..' erva)'})
      end
    	cb(false)
    end
end)

RegisterServerEvent("erva:processada")
AddEventHandler("erva:processada", function(x,y,z)
  	local _source = source
  	local xPlayer = ESX.GetPlayerFromId(_source)
	local pick = Config.ReceberProcessada
	   xPlayer.removeInventoryItem('weed', Config.check >= Config.ParaProcessar)
	   xPlayer.addInventoryItem('weed_pooch', pick)
	   if Config.useMythic then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Erva processada: -' ..Config.ParaProcessar.. ' ervas / + ' ..Config.ReceberProcessada.. ' saco de erva!'})
      end
end)

ESX.RegisterServerCallback('erva:processo', function(source, cb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local check = xPlayer.getInventoryItem('weed').count
	if check >= Config.ParaProcessar then
    	cb(true)
    else
      if Config.useMythic then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Precisas de pelos menos '..Config.ParaProcessar..' ervas!'})
      end
    	cb(false)
    end
end)

RegisterServerEvent("coca:pegada")
AddEventHandler("coca:pegada", function(x,y,z)
  	local _source = source
  	local xPlayer = ESX.GetPlayerFromId(_source)
  	local pick = Config.PegarDroga
	xPlayer.addInventoryItem('coke', pick)
	if Config.useMythic then
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Apanhas-te ' .. Config.PegarDroga ..  'x coca!'})
    end
end)

ESX.RegisterServerCallback('coca:pegar', function(source, cb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local check = xPlayer.getInventoryItem('coke').count
	if check <= Config.LimiteCoca then
    	cb(true)
    else
      if Config.useMythic then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Já tens muita coca!('..Config.LimiteCoca..' coca)'})
      end
    	cb(false)
    end
end)

RegisterServerEvent("coca:processada")
AddEventHandler("coca:processada", function(x,y,z)
  	local _source = source
  	local xPlayer = ESX.GetPlayerFromId(_source)
	local pick = Config.ReceberProcessada
	   xPlayer.removeInventoryItem('coke', Config.check >= Config.ParaProcessar)
	   xPlayer.addInventoryItem('coke_pooch', pick)
	   if Config.useMythic then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Coca processada: -' ..Config.ParaProcessar.. ' cocas / + ' ..Config.ReceberProcessada.. ' saco de coca!'})
      end
end)

ESX.RegisterServerCallback('coca:processo', function(source, cb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local check = xPlayer.getInventoryItem('coke').count
	if check >= Config.ParaProcessar then
    	cb(true)
    else
      if Config.useMythic then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Precisas de pelos menos '..Config.ParaProcessar..' cocas!'})
      end
    	cb(false)
    end
end)

RegisterServerEvent("meta:pegada")
AddEventHandler("meta:pegada", function(x,y,z)
  	local _source = source
  	local xPlayer = ESX.GetPlayerFromId(_source)
  	local pick = Config.PegarDroga
	xPlayer.addInventoryItem('meth', pick)
	if Config.useMythic then
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Apanhas-te ' .. Config.PegarDroga .. 'x meta!'})
    end
end)

ESX.RegisterServerCallback('meta:pegar', function(source, cb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local check = xPlayer.getInventoryItem('meth').count
	if check <= Config.LimiteMeta then
    	cb(true)
    else
      if Config.useMythic then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Já tens muita coca!('..Config.LimiteMeta..' meta)'})
      end
    	cb(false)
    end
end)

RegisterServerEvent("meta:processada")
AddEventHandler("meta:processada", function(x,y,z)
  	local _source = source
  	local xPlayer = ESX.GetPlayerFromId(_source)
	local pick = Config.ReceberProcessada
	   xPlayer.removeInventoryItem('meth', Config.check >= Config.ParaProcessar)
	   xPlayer.addInventoryItem('meth_pooch', pick)
	   if Config.useMythic then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Meta processada: -' ..Config.ParaProcessar.. ' metas / + ' ..Config.ReceberProcessada.. ' saco de meta!'})
      end
end)

ESX.RegisterServerCallback('meta:processo', function(source, cb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local check = xPlayer.getInventoryItem('meth').count
	if check >= Config.ParaProcessar then
    	cb(true)
    else
      if Config.useMythic then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Precisas de pelos menos '..Config.ParaProcessar..' metas!'})
      end
    	cb(false)
    end
end)

RegisterServerEvent("pet:pegada")
AddEventHandler("pet:pegada", function(x,y,z)
  	local _source = source
  	local xPlayer = ESX.GetPlayerFromId(_source)
  	local pick = Config.PegarDroga
	xPlayer.addInventoryItem('pet', pick)
	if Config.useMythic then
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Apanhas-te ' .. Config.PegarDroga .. 'x Petroleo!'})
    end
end)

ESX.RegisterServerCallback('pet:pegar', function(source, cb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local check = xPlayer.getInventoryItem('pet').count
	if check <= Config.LimitePetroleo then
    	cb(true)
    else
      if Config.useMythic then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Já tens muito petroleo!('..Config.LimitePetroleo..' Petroleo)'})
      end
    	cb(false)
    end
end)

RegisterServerEvent("pet:processada")
AddEventHandler("pet:processada", function(x,y,z)
  	local _source = source
  	local xPlayer = ESX.GetPlayerFromId(_source)
	local pick = Config.ReceberProcessada
	   xPlayer.removeInventoryItem('pet', Config.check >= Config.ParaProcessar)
	   xPlayer.addInventoryItem('pet_pooch', pick)
	   if Config.useMythic then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Petroleo processada: -' ..Config.ParaProcessar.. ' petroleo / + ' ..Config.ReceberProcessada.. ' baril de petroleo!'})
      end
end)

ESX.RegisterServerCallback('pet:processo', function(source, cb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local check = xPlayer.getInventoryItem('pet').count
	if check >= Config.ParaProcessar then
    	cb(true)
    else
      if Config.useMythic then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Precisas de pelos menos '..Config.ParaProcessar..' de Petroleo!'})
      end
    	cb(false)
    end
end)

--[VENDER]--

function CountCops()
	local xPlayers = ESX.GetPlayers()

	CopsConnected = 0

	for i = 1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		
		if xPlayer.job.name == 'police' then
			CopsConnected = CopsConnected + 1
		end
	end

	SetTimeout(60 * 1000, CountCops)
end

CountCops()

RegisterServerEvent("erva:vendida")
AddEventHandler("erva:vendida", function(x,y,z)
  	local _source = source
  	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('weed_pooch', Config.Venda)

		if CopsConnected == 0 then
			xPlayer.addAccountMoney('black_money', 70)
		elseif CopsConnected == 1 then
			xPlayer.addAccountMoney('black_money', 80)
		elseif CopsConnected == 2 then
			xPlayer.addAccountMoney('black_money', 90)
		elseif CopsConnected == 3 then
			xPlayer.addAccountMoney('black_money', 100)
		elseif CopsConnected == 4 then
			xPlayer.addAccountMoney('black_money', 110)
		elseif CopsConnected == 5 then
			xPlayer.addAccountMoney('black_money', 120)
		elseif CopsConnected == 6 then
			xPlayer.addAccountMoney('black_money', 130)
		elseif CopsConnected == 7 then
			xPlayer.addAccountMoney('black_money', 140)
		elseif CopsConnected == 8 then
			xPlayer.addAccountMoney('black_money', 150)
		elseif CopsConnected == 9 then
			xPlayer.addAccountMoney('black_money', 160)
		elseif CopsConnected >= 10 then
			xPlayer.addAccountMoney('black_money', 180)			
		end

	   if Config.useMythic then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Vendes-te '..Config.Venda..'x Saco de erva!'})
      end
end)

ESX.RegisterServerCallback('erva:vender', function(source, cb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local check = xPlayer.getInventoryItem('weed_pooch').count
	if xPlayer.job.name == "police" or xPlayer.job.name == "ambulance" then
		if Config.useMythic then
			TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Não sejas corrupto!'})
		end
    	cb(false)
    else if (check >= 1) then
		cb(true)
	else
      if Config.useMythic then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Precisas de pelos menos '..Config.Venda..' Saco de erva para vender!'})
      end
    	cb(false)
    end
  end
end)

RegisterServerEvent("coca:vendida")
AddEventHandler("coca:vendida", function(x,y,z)
  	local _source = source
  	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('coke_pooch', Config.Venda)

		if CopsConnected == 0 then
			xPlayer.addAccountMoney('black_money', 70)
		elseif CopsConnected == 1 then
			xPlayer.addAccountMoney('black_money', 80)
		elseif CopsConnected == 2 then
			xPlayer.addAccountMoney('black_money', 90)
		elseif CopsConnected == 3 then
			xPlayer.addAccountMoney('black_money', 100)
		elseif CopsConnected == 4 then
			xPlayer.addAccountMoney('black_money', 110)
		elseif CopsConnected == 5 then
			xPlayer.addAccountMoney('black_money', 120)
		elseif CopsConnected == 6 then
			xPlayer.addAccountMoney('black_money', 130)
		elseif CopsConnected == 7 then
			xPlayer.addAccountMoney('black_money', 140)
		elseif CopsConnected == 8 then
			xPlayer.addAccountMoney('black_money', 150)
		elseif CopsConnected == 9 then
			xPlayer.addAccountMoney('black_money', 160)
		elseif CopsConnected >= 10 then
			xPlayer.addAccountMoney('black_money', 180)			
		end

	   if Config.useMythic then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Vendes-te '..Config.Venda..'x Saco de coca!'})
      end
end)

ESX.RegisterServerCallback('coca:vender', function(source, cb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local check = xPlayer.getInventoryItem('coke_pooch').count
	if xPlayer.job.name == "police" or xPlayer.job.name == "ambulance" then
		if Config.useMythic then
			TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Não sejas corrupto!'})
		end
    	cb(false)
    else if (check >= 1) then
		cb(true)
	else
      if Config.useMythic then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Precisas de pelos menos '..Config.Venda..' Saco de coca para vender!'})
      end
    	cb(false)
    end
  end
end)

RegisterServerEvent("meta:vendida")
AddEventHandler("meta:vendida", function(x,y,z)
  	local _source = source
  	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('meth_pooch', Config.Venda)

		if CopsConnected == 0 then
			xPlayer.addAccountMoney('black_money', 70)
		elseif CopsConnected == 1 then
			xPlayer.addAccountMoney('black_money', 80)
		elseif CopsConnected == 2 then
			xPlayer.addAccountMoney('black_money', 90)
		elseif CopsConnected == 3 then
			xPlayer.addAccountMoney('black_money', 100)
		elseif CopsConnected == 4 then
			xPlayer.addAccountMoney('black_money', 110)
		elseif CopsConnected == 5 then
			xPlayer.addAccountMoney('black_money', 120)
		elseif CopsConnected == 6 then
			xPlayer.addAccountMoney('black_money', 130)
		elseif CopsConnected == 7 then
			xPlayer.addAccountMoney('black_money', 140)
		elseif CopsConnected == 8 then
			xPlayer.addAccountMoney('black_money', 150)
		elseif CopsConnected == 9 then
			xPlayer.addAccountMoney('black_money', 160)
		elseif CopsConnected >= 10 then
			xPlayer.addAccountMoney('black_money', 180)			
		end

	   if Config.useMythic then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Vendes-te '..Config.Venda..'x Saco de meta!'})
      end
end)

ESX.RegisterServerCallback('meta:vender', function(source, cb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local check = xPlayer.getInventoryItem('meth_pooch').count
	if xPlayer.job.name == "police" or xPlayer.job.name == "ambulance" then
		if Config.useMythic then
			TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Não sejas corrupto!'})
		end
    	cb(false)
    else if (check >= 1) then
		cb(true)
	else
      if Config.useMythic then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Precisas de pelos menos '..Config.Venda..'x Saco de meta para vender!'})
      end
    	cb(false)
    end
  end
end)

RegisterServerEvent("pet:vendida")
AddEventHandler("pet:vendida", function(x,y,z)
  	local _source = source
  	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('pet_pooch', Config.Venda)

		if CopsConnected == 0 then
			xPlayer.addAccountMoney('black_money', 70)
		elseif CopsConnected == 1 then
			xPlayer.addAccountMoney('black_money', 80)
		elseif CopsConnected == 2 then
			xPlayer.addAccountMoney('black_money', 90)
		elseif CopsConnected == 3 then
			xPlayer.addAccountMoney('black_money', 100)
		elseif CopsConnected == 4 then
			xPlayer.addAccountMoney('black_money', 110)
		elseif CopsConnected == 5 then
			xPlayer.addAccountMoney('black_money', 120)
		elseif CopsConnected == 6 then
			xPlayer.addAccountMoney('black_money', 130)
		elseif CopsConnected == 7 then
			xPlayer.addAccountMoney('black_money', 140)
		elseif CopsConnected == 8 then
			xPlayer.addAccountMoney('black_money', 150)
		elseif CopsConnected == 9 then
			xPlayer.addAccountMoney('black_money', 160)
		elseif CopsConnected >= 10 then
			xPlayer.addAccountMoney('black_money', 180)			
		end

	   if Config.useMythic then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Vendes-te '..Config.Venda..'x Barril de Petroleo!'})
      end
end)

ESX.RegisterServerCallback('pet:vender', function(source, cb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local check = xPlayer.getInventoryItem('pet_pooch').count
	if xPlayer.job.name == "police" or xPlayer.job.name == "ambulance" then
		if Config.useMythic then
			TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Não sejas corrupto!'})
		end
    	cb(false)
    else if (check >= 1) then
		cb(true)
	else
      if Config.useMythic then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Precisas de pelos menos '..Config.Venda..' de Barril de Petroelo para vender!'})
      end
    	cb(false)
    end
  end
end)