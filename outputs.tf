output "database_db_home_patches_lookup_id" {
  description = "Map of id values across all database_db_home_patches_lookup, keyed the same as var.database_db_home_patches_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_database_db_home_patches.database_db_home_patches_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_db_home_patches_lookup_db_home_id" {
  description = "Map of db_home_id values across all database_db_home_patches_lookup, keyed the same as var.database_db_home_patches_lookup except keys with no db_home_id are omitted"
  value       = { for k, v in data.oci_database_db_home_patches.database_db_home_patches_lookup : k => v.db_home_id if v.db_home_id != null && length(v.db_home_id) > 0 }
}
output "database_db_home_patches_lookup_filter" {
  description = "Map of filter values across all database_db_home_patches_lookup, keyed the same as var.database_db_home_patches_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_database_db_home_patches.database_db_home_patches_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "database_db_home_patches_lookup_patches" {
  description = "Map of patches values across all database_db_home_patches_lookup, keyed the same as var.database_db_home_patches_lookup except keys with no patches are omitted"
  value       = { for k, v in data.oci_database_db_home_patches.database_db_home_patches_lookup : k => v.patches if v.patches != null && length(v.patches) > 0 }
}

