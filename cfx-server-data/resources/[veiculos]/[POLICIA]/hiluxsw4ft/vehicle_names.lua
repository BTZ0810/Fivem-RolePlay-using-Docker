function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
  AddTextEntry('0xC593CAF5', 'SW4 FT49M')
  AddTextEntry('0xC990C46A', 'SW4 FT49M')
end)
