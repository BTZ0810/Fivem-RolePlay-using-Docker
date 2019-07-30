resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

data_file 'HANDLING_FILE' 'gate/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'gate/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'gate/carvariations.meta'


files {
  'gate/handling.meta',
  'gate/vehicles.meta',
  'gate/carvariations.meta',

}

client_script 'vehicle_names.lua'
