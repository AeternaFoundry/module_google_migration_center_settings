output "migration_center_settings_id" {
  description = "Map of id values across all migration_center_settings, keyed the same as var.migration_center_settings except keys with no id are omitted"
  value       = { for k, v in google_migration_center_settings.migration_center_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "migration_center_settings_deletion_policy" {
  description = "Map of deletion_policy values across all migration_center_settings, keyed the same as var.migration_center_settings except keys with no deletion_policy are omitted"
  value       = { for k, v in google_migration_center_settings.migration_center_settings : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "migration_center_settings_disable_cloud_logging" {
  description = "Map of disable_cloud_logging values across all migration_center_settings, keyed the same as var.migration_center_settings except keys with no disable_cloud_logging are omitted"
  value       = { for k, v in google_migration_center_settings.migration_center_settings : k => v.disable_cloud_logging if v.disable_cloud_logging != null }
}
output "migration_center_settings_location" {
  description = "Map of location values across all migration_center_settings, keyed the same as var.migration_center_settings except keys with no location are omitted"
  value       = { for k, v in google_migration_center_settings.migration_center_settings : k => v.location if v.location != null && length(v.location) > 0 }
}
output "migration_center_settings_name" {
  description = "Map of name values across all migration_center_settings, keyed the same as var.migration_center_settings except keys with no name are omitted"
  value       = { for k, v in google_migration_center_settings.migration_center_settings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "migration_center_settings_preference_set" {
  description = "Map of preference_set values across all migration_center_settings, keyed the same as var.migration_center_settings except keys with no preference_set are omitted"
  value       = { for k, v in google_migration_center_settings.migration_center_settings : k => v.preference_set if v.preference_set != null && length(v.preference_set) > 0 }
}
output "migration_center_settings_project" {
  description = "Map of project values across all migration_center_settings, keyed the same as var.migration_center_settings except keys with no project are omitted"
  value       = { for k, v in google_migration_center_settings.migration_center_settings : k => v.project if v.project != null && length(v.project) > 0 }
}

