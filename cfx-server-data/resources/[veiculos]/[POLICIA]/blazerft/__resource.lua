resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

data_file 'HANDLING_FILE' 'blazerft/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'blazerft/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'blazerft/carvariations.meta'


files {
  'blazerft/handling.meta',
  'blazerft/vehicles.meta',
  'blazerft/carvariations.meta',

}

client_script 'vehicle_names.lua'
