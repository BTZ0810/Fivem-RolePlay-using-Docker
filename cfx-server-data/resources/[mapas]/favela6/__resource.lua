local function object_entry(data)
	dependency 'object-loader'

	file(data)
	object_file(data)
end

object_entry 'brasilandia.xml'


