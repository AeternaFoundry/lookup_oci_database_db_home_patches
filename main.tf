data "oci_database_db_home_patches" "database_db_home_patches_lookup" {
  for_each = var.database_db_home_patches_lookup

  db_home_id = each.value.db_home_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

