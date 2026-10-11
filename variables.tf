variable "database_db_home_patches_lookup" {
  description = <<EOT
Map of database_db_home_patches_lookup, attributes below
Required:
    - db_home_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    db_home_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

