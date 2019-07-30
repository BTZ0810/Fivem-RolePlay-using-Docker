resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

data_file 'HANDLING_FILE' 's10/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 's10/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 's10/carvariations.meta'


files {
  's10/handling.meta',
  's10/vehicles.meta',
  's10/carvariations.meta',

}

client_script 'vehicle_names.lua'
