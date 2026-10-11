resource "databricks_group_instance_profile" "group_instance_profiles" {
  for_each = var.group_instance_profiles

  group_id            = each.value.group_id
  instance_profile_id = each.value.instance_profile_id
  api                 = each.value.api

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

