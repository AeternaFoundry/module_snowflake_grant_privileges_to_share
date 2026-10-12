variable "grant_privileges_to_shares" {
  description = <<EOT
Map of grant_privileges_to_shares, attributes below
Required:
    - privileges
    - to_share
Optional:
    - on_all_tables_in_schema
    - on_database
    - on_function
    - on_schema
    - on_table
    - on_tag
    - on_view
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    privileges              = set(string)
    to_share                = string
    on_all_tables_in_schema = optional(string)
    on_database             = optional(string)
    on_function             = optional(string)
    on_schema               = optional(string)
    on_table                = optional(string)
    on_tag                  = optional(string)
    on_view                 = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

