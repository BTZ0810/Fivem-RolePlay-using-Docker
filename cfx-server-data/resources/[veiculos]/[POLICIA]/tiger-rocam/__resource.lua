resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

data_file 'VEHICLE_METADATA_FILE' 'data/tigerrocam/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/tigerrocam/carvariations.meta'
data_file 'HANDLING_FILE' 'data/tigerrocam/handling.meta'

files {
'data/tigerrocam/vehicles.meta',
'data/tigerrocam/handling.meta',
'data/tigerrocam/carvariations.meta',
}
---------------------------------------------------------------------


client_script 'vehicle_names.lua'