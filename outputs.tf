output "grant_privileges_to_shares_id" {
  description = "Map of id values across all grant_privileges_to_shares, keyed the same as var.grant_privileges_to_shares except keys with no id are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_share.grant_privileges_to_shares : k => v.id if v.id != null && length(v.id) > 0 }
}
output "grant_privileges_to_shares_on_all_tables_in_schema" {
  description = "Map of on_all_tables_in_schema values across all grant_privileges_to_shares, keyed the same as var.grant_privileges_to_shares except keys with no on_all_tables_in_schema are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_share.grant_privileges_to_shares : k => v.on_all_tables_in_schema if v.on_all_tables_in_schema != null && length(v.on_all_tables_in_schema) > 0 }
}
output "grant_privileges_to_shares_on_database" {
  description = "Map of on_database values across all grant_privileges_to_shares, keyed the same as var.grant_privileges_to_shares except keys with no on_database are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_share.grant_privileges_to_shares : k => v.on_database if v.on_database != null && length(v.on_database) > 0 }
}
output "grant_privileges_to_shares_on_function" {
  description = "Map of on_function values across all grant_privileges_to_shares, keyed the same as var.grant_privileges_to_shares except keys with no on_function are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_share.grant_privileges_to_shares : k => v.on_function if v.on_function != null && length(v.on_function) > 0 }
}
output "grant_privileges_to_shares_on_schema" {
  description = "Map of on_schema values across all grant_privileges_to_shares, keyed the same as var.grant_privileges_to_shares except keys with no on_schema are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_share.grant_privileges_to_shares : k => v.on_schema if v.on_schema != null && length(v.on_schema) > 0 }
}
output "grant_privileges_to_shares_on_table" {
  description = "Map of on_table values across all grant_privileges_to_shares, keyed the same as var.grant_privileges_to_shares except keys with no on_table are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_share.grant_privileges_to_shares : k => v.on_table if v.on_table != null && length(v.on_table) > 0 }
}
output "grant_privileges_to_shares_on_tag" {
  description = "Map of on_tag values across all grant_privileges_to_shares, keyed the same as var.grant_privileges_to_shares except keys with no on_tag are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_share.grant_privileges_to_shares : k => v.on_tag if v.on_tag != null && length(v.on_tag) > 0 }
}
output "grant_privileges_to_shares_on_view" {
  description = "Map of on_view values across all grant_privileges_to_shares, keyed the same as var.grant_privileges_to_shares except keys with no on_view are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_share.grant_privileges_to_shares : k => v.on_view if v.on_view != null && length(v.on_view) > 0 }
}
output "grant_privileges_to_shares_privileges" {
  description = "Map of privileges values across all grant_privileges_to_shares, keyed the same as var.grant_privileges_to_shares except keys with no privileges are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_share.grant_privileges_to_shares : k => v.privileges if v.privileges != null && length(v.privileges) > 0 }
}
output "grant_privileges_to_shares_to_share" {
  description = "Map of to_share values across all grant_privileges_to_shares, keyed the same as var.grant_privileges_to_shares except keys with no to_share are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_share.grant_privileges_to_shares : k => v.to_share if v.to_share != null && length(v.to_share) > 0 }
}

