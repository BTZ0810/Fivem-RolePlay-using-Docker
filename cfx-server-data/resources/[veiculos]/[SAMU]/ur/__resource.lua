resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

data_file 'HANDLING_FILE' 'ur/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'ur/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'ur/carvariations.meta'


files {
  'ur/handling.meta',
  'ur/vehicles.meta',
  'ur/carvariations.meta',

}

client_script 'vehicle_names.lua'
