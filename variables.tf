variable "migration_center_settings" {
  description = <<EOT
Map of migration_center_settings, attributes below
Required:
    - location
Optional:
    - deletion_policy
    - disable_cloud_logging
    - preference_set
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location              = string
    deletion_policy       = optional(string)
    disable_cloud_logging = optional(bool)
    preference_set        = optional(string)
    project               = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

