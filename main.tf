resource "google_migration_center_settings" "migration_center_settings" {
  for_each = var.migration_center_settings

  location              = each.value.location
  deletion_policy       = each.value.deletion_policy
  disable_cloud_logging = each.value.disable_cloud_logging
  preference_set        = each.value.preference_set
  project               = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

