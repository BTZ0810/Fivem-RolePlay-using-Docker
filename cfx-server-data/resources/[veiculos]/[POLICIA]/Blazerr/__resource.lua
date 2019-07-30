resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

data_file 'HANDLING_FILE' 'Blazerr/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'Blazerr/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'Blazerr/carvariations.meta'


files {
  'Blazerr/handling.meta',
  'Blazerr/vehicles.meta',
  'Blazerr/carvariations.meta',

}

client_script 'vehicle_names.lua'
