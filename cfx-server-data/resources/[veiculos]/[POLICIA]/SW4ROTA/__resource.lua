resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

data_file 'HANDLING_FILE' 'sw4rota/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'sw4rota/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'sw4rota/carvariations.meta'


files {
  'sw4rota/handling.meta',
  'sw4rota/vehicles.meta',
  'sw4rota/carvariations.meta',

}

client_script 'vehicle_names.lua'
