output "group_instance_profiles_id" {
  description = "Map of id values across all group_instance_profiles, keyed the same as var.group_instance_profiles except keys with no id are omitted"
  value       = { for k, v in databricks_group_instance_profile.group_instance_profiles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_instance_profiles_api" {
  description = "Map of api values across all group_instance_profiles, keyed the same as var.group_instance_profiles except keys with no api are omitted"
  value       = { for k, v in databricks_group_instance_profile.group_instance_profiles : k => v.api if v.api != null && length(v.api) > 0 }
}
output "group_instance_profiles_group_id" {
  description = "Map of group_id values across all group_instance_profiles, keyed the same as var.group_instance_profiles except keys with no group_id are omitted"
  value       = { for k, v in databricks_group_instance_profile.group_instance_profiles : k => v.group_id if v.group_id != null && length(v.group_id) > 0 }
}
output "group_instance_profiles_instance_profile_id" {
  description = "Map of instance_profile_id values across all group_instance_profiles, keyed the same as var.group_instance_profiles except keys with no instance_profile_id are omitted"
  value       = { for k, v in databricks_group_instance_profile.group_instance_profiles : k => v.instance_profile_id if v.instance_profile_id != null && length(v.instance_profile_id) > 0 }
}
output "group_instance_profiles_provider_config" {
  description = "Map of provider_config values across all group_instance_profiles, keyed the same as var.group_instance_profiles except keys with no provider_config are omitted"
  value       = { for k, v in databricks_group_instance_profile.group_instance_profiles : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}

