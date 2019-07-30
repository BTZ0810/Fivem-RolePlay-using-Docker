-- JUST EDIT THE CONFIG.LUA! -- JUST EDIT THE CONFIG.LUA! -- JUST EDIT THE CONFIG.LUA! -- JUST EDIT THE CONFIG.LUA!
-- JUST EDIT THE CONFIG.LUA! -- JUST EDIT THE CONFIG.LUA! -- JUST EDIT THE CONFIG.LUA! -- JUST EDIT THE CONFIG.LUA!
-- JUST EDIT THE CONFIG.LUA! -- JUST EDIT THE CONFIG.LUA! -- JUST EDIT THE CONFIG.LUA! -- JUST EDIT THE CONFIG.LUA!

-- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE!
-- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE!
-- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE!
-- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE!
-- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE!
-- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE! -- DO NOT EDIT THESE!

-- Error Check
if DiscordWebhookSystemInfos == nil and DiscordWebhookKillinglogs == nil and DiscordWebhookChat == nil then
	local Content = LoadResourceFile(GetCurrentResourceName(), 'config.lua')
	Content = load(Content)
	Content()
end
if DiscordWebhookSystemInfos == 'https://discordapp.com/api/webhooks/431486444641452052/Mn7Hp9g4VJQfCUEgU4eBZjG95ymjoSbMhNvzvYMiqMwuSXYDq4Rbn_slM3DtRDPYCGv7' then
	print('\n\nERROR\n' .. GetCurrentResourceName() .. ': Please add your "System Infos" webhook\n\n')
else
	PerformHttpRequest(DiscordWebhookSystemInfos, function(Error, Content, Head)
		if Content == '{"code": 50027, "message": "Invalid Webhook Token"}' then
			print('\n\nERROR\n' .. GetCurrentResourceName() .. ': "System Infos" webhook non-existing!\n\n')
		end
	end)
end
if DiscordWebhookKillinglogs == 'https://discordapp.com/api/webhooks/431486444641452052/Mn7Hp9g4VJQfCUEgU4eBZjG95ymjoSbMhNvzvYMiqMwuSXYDq4Rbn_slM3DtRDPYCGv7' then
	print('\n\nERROR\n' .. GetCurrentResourceName() .. ': Please add your "Killing Log" webhook\n\n')
else
	PerformHttpRequest(DiscordWebhookKillinglogs, function(Error, Content, Head)
		if Content == '{"code": 50027, "message": "Invalid Webhook Token"}' then
			print('\n\nERROR\n' .. GetCurrentResourceName() .. ': "Killing Log" webhook non-existing!\n\n')
		end
	end)
end
if DiscordWebhookChat == 'https://discordapp.com/api/webhooks/431496639354503168/0nXyqWMh5k0yMM0DPaQoHMiB-4Cfu2YsMTd4oe8rqTCUt6RrOJqpejppauG8NN_ubodQ' then
	print('\n\nERROR\n' .. GetCurrentResourceName() .. ': Please add your "Chat" webhook\n\n')
else
	PerformHttpRequest(DiscordWebhookChat, function(Error, Content, Head)
		if Content == '{"code": 50027, "message": "Invalid Webhook Token"}' then
			print('\n\nERROR\n' .. GetCurrentResourceName() .. ': "Chat" webhook non-existing!\n\n')
		end
	end)
end
	
-- System Infos
PerformHttpRequest(DiscordWebhookSystemInfos, function(Error, Content, Head) end, 'POST', json.encode({username = SystemName, content = '**FiveM server webhook started**'}), { ['Content-Type'] = 'application/json' })

AddEventHandler('playerConnecting', function()
	TriggerEvent('DiscordBot:ToDiscord', DiscordWebhookSystemInfos, SystemName, '```css\n' .. GetPlayerName(source) .. ' connecting\n```', SystemAvatar, false)
end)

AddEventHandler('playerDropped', function(Reason)
	TriggerEvent('DiscordBot:ToDiscord', DiscordWebhookSystemInfos, SystemName, '```fix\n' .. GetPlayerName(source) .. ' left (' .. Reason .. ')\n```', SystemAvatar, false)
end)

-- Killing Log
RegisterServerEvent('DiscordBot:playerDied')
AddEventHandler('DiscordBot:playerDied', function(Message, Weapon)
	local date = os.date('*t')
	
	if date.day < 10 then date.day = '0' .. tostring(date.day) end
	if date.month < 10 then date.month = '0' .. tostring(date.month) end
	if date.hour < 10 then date.hour = '0' .. tostring(date.hour) end
	if date.min < 10 then date.min = '0' .. tostring(date.min) end
	if date.sec < 10 then date.sec = '0' .. tostring(date.sec) end
	if Weapon then
		Message = Message .. ' [' .. Weapon .. ']'
	end
	TriggerEvent('DiscordBot:ToDiscord', DiscordWebhookKillinglogs, SystemName, Message .. ' `' .. date.day .. '.' .. date.month .. '.' .. date.year .. ' - ' .. date.hour .. ':' .. date.min .. ':' .. date.sec .. '`', SystemAvatar, false)
end)

-- Chat
AddEventHandler('chatMessage', function(Source, Name, Message)
	local Webhook = DiscordWebhookChat
	--Removing Color Codes (^0, ^1, ^2 etc.) from the name and the message
	for i = 0, 9 do
		Message = Message:gsub('%^' .. i, '')
		Name = Name:gsub('%^' .. i, '')
	end
	
	--Checking if the message contains a command which has his own webhook
	if IsCommand(Message, 'HavingOwnWebhook') then
		Webhook = GetOwnWebhook(Message)
	end
	
	--Checking if the message contains a special command
	if IsCommand(Message, 'Special') then
		Message = ReplaceSpecialCommand(Message, Source)
	end
	
	-- Shortens the Name, if needed
	if Name:len() > 23 then
		Name = Name:sub(1, 23)
	end

	--Checking if the message contains a blacklisted command
	if not IsCommand(Message, 'Blacklisted') then
		--Getting the steam avatar
		local AvatarURL = UserAvatar
		if GetIDFromSource('steam', Source) then
			local SteamIDHex = GetIDFromSource('steam', Source)
			local SteamIDInt = tonumber(SteamIDHex, 16)
			PerformHttpRequest('http://steamcommunity.com/profiles/' .. SteamIDInt .. '/?xml=1', function(Error, Content, Head)
				local SteamProfileSplitted = stringsplit(Content, '\n')
				for i, Line in ipairs(SteamProfileSplitted) do
					if Line:find('<avatarFull>') then
						local AvatarURL = Line:gsub('	<avatarFull><!%[CDATA%[', ''):gsub(']]></avatarFull>', '')
						TriggerEvent('DiscordBot:ToDiscord', Webhook, Name .. ' [ID: ' .. Source .. ']', Message, AvatarURL, false) --Sending the message to discord
						break
					end
				end
			end)
		else
			TriggerEvent('DiscordBot:ToDiscord', Webhook, Name .. ' [ID: ' .. Source .. ']', Message, AvatarURL, false) --Sending the message to discord
		end
	end
end)

--Event to actually send Messages to Discord
RegisterServerEvent('DiscordBot:ToDiscord')
AddEventHandler('DiscordBot:ToDiscord', function(WebHook, Name, Message, Image, External)
	if Message == nil or Message == '' then
		return nil
	end
	if External then
		Image = SystemAvatar
		if WebHook:lower() == 'chat' then
			WebHook = DiscordWebhookChat
		elseif WebHook:lower() == 'system' then
			WebHook = DiscordWebhookSystemInfos
		elseif WebHook:lower() == 'kill' then
			WebHook = DiscordWebhookKillinglogs
		else
			return nil
		end
	end
	PerformHttpRequest(WebHook, function(Error, Content, Head) end, 'POST', json.encode({username = Name, content = Message, avatar_url = Image}), { ['Content-Type'] = 'application/json' })
end)

-- Functions
function IsCommand(String, Type)
	local StringSplitted = stringsplit(String, ' ')
	if Type == 'Blacklisted' then
		for i, BlacklistedCommand in ipairs(BlacklistedCommands) do
			if StringSplitted[1]:lower() == BlacklistedCommand:lower() then
				return true
			end
		end
	elseif Type == 'Special' then
		for i, SpecialCommand in ipairs(SpecialCommands) do
			if StringSplitted[1]:lower() == SpecialCommand[1]:lower() then
				return true
			end
		end
	elseif Type == 'HavingOwnWebhook' then
		for i, OwnWebhookCommand in ipairs(OwnWebhookCommands) do
			if StringSplitted[1]:lower() == OwnWebhookCommand[1]:lower() then
				return true
			end
		end
	end
	return false
end

function ReplaceSpecialCommand(String, Source)
	local StringSplitted = stringsplit(String, ' ')
	for i, SpecialCommand in ipairs(SpecialCommands) do
		if StringSplitted[1]:lower() == SpecialCommand[1]:lower() then
			StringSplitted[1] = SpecialCommand[2]
			local newString = ''
			for k, StringPart in ipairs(StringSplitted) do
				if newString == '' then
					newString = StringPart
				else
					newString = newString .. ' ' .. StringPart
				end
			end
			newString = newString:gsub('USERNAME_NEEDED_HERE', GetPlayerName(Source))
			newString = newString:gsub('USERID_NEEDED_HERE', Source)
			return newString
		end
	end
end

function GetOwnWebhook(String)
	local StringSplitted = stringsplit(String, ' ')
	for i, OwnWebhookCommand in ipairs(OwnWebhookCommands) do
		if StringSplitted[1]:lower() == OwnWebhookCommand[1]:lower() then
			if OwnWebhookCommand[2] == 'WEBHOOK_LINK_HERE' then
				print('Please enter a webhook link for the command: ' .. StringSplitted[1])
				return DiscordWebhookChat
			else
				return OwnWebhookCommand[2]
			end
		end
	end
end

function stringsplit(input, seperator)
	if seperator == nil then
		seperator = '%s'
	end
	
	local t={} ; i=1
	
	for str in string.gmatch(input, '([^'..seperator..']+)') do
		t[i] = str
		i = i + 1
	end
	
	return t
end

function GetIDFromSource(Type, ID) --(Thanks To WolfKnight [forum.FiveM.net])
    local IDs = GetPlayerIdentifiers(ID)
    for k, CurrentID in pairs(IDs) do
        local ID = stringsplit(CurrentID, ':')
        if (ID[1]:lower() == string.lower(Type)) then
            return ID[2]:lower()
        end
    end
    return nil
end

-- Version Checking down here, better don't touch this
local CurrentVersion = '1.5.0'
local UpdateAvailable = false
local GithubResourceName = 'DiscordBot'

PerformHttpRequest('https://raw.githubusercontent.com/Flatracer/FiveM_Resources/master/' .. GithubResourceName .. '/VERSION', function(Error, NewestVersion, Header)
	PerformHttpRequest('https://raw.githubusercontent.com/Flatracer/FiveM_Resources/master/' .. GithubResourceName .. '/CHANGES', function(Error, Changes, Header)
		PerformHttpRequest('https://raw.githubusercontent.com/Flatracer/FiveM_Resources/master/' .. GithubResourceName .. '/PREVIOUSVERSION', function(Error, PreviousVersion, Header)
			print('\n')
			print('##############')
			print('## ' .. GetCurrentResourceName())
			print('##')
			print('## Current Version: ' .. CurrentVersion)
			print('## Newest Version: ' .. NewestVersion)
			print('##')
			if CurrentVersion ~= NewestVersion then
				if CurrentVersion == PreviousVersion then
					UpdateAvailable = true
				end
				print('## Outdated')
				print('## Check the Topic')
				if UpdateAvailable then
					print('## Or type "update ' .. GetCurrentResourceName() .. '"')
				end
				print('## For the newest Version!')
				print('##############')
				print('CHANGES: ' .. Changes)
			else
				UpdateAvailable = false
				print('## Up to date!')
				print('##############')
			end
			print('\n')
		end)
	end)
end)

-- Instant Update down here, better don't touch this as well
AddEventHandler('rconCommand', function(CMDName, Arguments)
    if CMDName:lower() == 'update' then
		if #Arguments == 1 then
			if Arguments[1]:lower() == GetCurrentResourceName():lower() then
				TriggerEvent('DiscordBot:StartUpdate')
			end
		else
			print('Argument count mismatch (Passed: ' .. #Arguments .. ', Wanted: 1)')
		end
		CancelEvent()
	end
end)

RegisterServerEvent('DiscordBot:StartUpdate')
AddEventHandler('DiscordBot:StartUpdate', function()
	if UpdateAvailable then
		PerformHttpRequest('https://raw.githubusercontent.com/Flatracer/' .. GithubResourceName .. '_Resources/master/CHANGEDFILES', function(Error, Content, Header)
			ContentSplitted = stringsplit(Content, '\n')
			for k, Line in ipairs(ContentSplitted) do
				local PreviousContent = ''
				if Line:find('-add') then
					Line = Line:gsub('-add')
					PreviousContent = LoadResourceFile(GetCurrentResourceName(), Line) .. '\n'
				end
				PerformHttpRequest('https://raw.githubusercontent.com/Flatracer/' .. GithubResourceName .. '/master/' .. Line, function(Error, NewContent, Header)
					SaveResourceFile(GetCurrentResourceName(), Line, PreviousContent .. NewContent, -1)
				end)
			end
		end)
		print('Update finished! Enter "restart ' .. GetCurrentResourceName() .. '" now!')
	else
		print('This is already the newest version! [' .. CurrentVersion .. ']')
	end
end)

