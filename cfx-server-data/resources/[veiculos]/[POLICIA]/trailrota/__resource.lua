resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

data_file 'HANDLING_FILE' 'trailrota/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'trailrota/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'trailrota/carvariations.meta'


files {
  'trailrota/handling.meta',
  'trailrota/vehicles.meta',
  'trailrota/carvariations.meta',

}

client_script 'vehicle_names.lua'
