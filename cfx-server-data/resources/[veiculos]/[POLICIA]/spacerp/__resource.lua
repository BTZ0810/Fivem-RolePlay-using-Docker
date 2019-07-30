resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

data_file 'HANDLING_FILE' 'spacerp/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'spacerp/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'spacerp/carvariations.meta'


files {
  'spacerp/handling.meta',
  'spacerp/vehicles.meta',
  'spacerp/carvariations.meta',

}

client_script 'vehicle_names.lua'
