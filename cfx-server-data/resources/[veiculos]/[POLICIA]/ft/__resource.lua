resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

data_file 'HANDLING_FILE' 'ft/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'ft/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'ft/carvariations.meta'


files {
  'ft/handling.meta',
  'ft/vehicles.meta',
  'ft/carvariations.meta',

}

client_script 'vehicle_nftes.lua'
