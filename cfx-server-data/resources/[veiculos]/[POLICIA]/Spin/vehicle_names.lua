function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
  AddTextEntry('0xC593CAF5', 'Spin')
  AddTextEntry('0xC990C46A', 'Spin')
end)
