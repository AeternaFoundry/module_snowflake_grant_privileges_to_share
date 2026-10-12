resource "snowflake_grant_privileges_to_share" "grant_privileges_to_shares" {
  for_each = var.grant_privileges_to_shares

  privileges              = each.value.privileges
  to_share                = each.value.to_share
  on_all_tables_in_schema = each.value.on_all_tables_in_schema
  on_database             = each.value.on_database
  on_function             = each.value.on_function
  on_schema               = each.value.on_schema
  on_table                = each.value.on_table
  on_tag                  = each.value.on_tag
  on_view                 = each.value.on_view

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

