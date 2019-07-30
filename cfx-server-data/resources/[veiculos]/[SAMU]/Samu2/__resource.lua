resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

data_file 'HANDLING_FILE' 'Samu2/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'Samu2/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'Samu2/carvariations.meta'


files {
  'Samu2/handling.meta',
  'Samu2/vehicles.meta',
  'Samu2/carvariations.meta',

}

client_script 'vehicle_names.lua'
