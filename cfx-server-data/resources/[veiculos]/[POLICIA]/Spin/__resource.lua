resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

data_file 'HANDLING_FILE' 'Spin/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'Spin/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'Spin/carvariations.meta'


files {
  'Spin/handling.meta',
  'Spin/vehicles.meta',
  'Spin/carvariations.meta',

}

client_script 'vehicle_names.lua'
