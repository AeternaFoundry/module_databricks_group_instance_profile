variable "group_instance_profiles" {
  description = <<EOT
Map of group_instance_profiles, attributes below
Required:
    - group_id
    - instance_profile_id
Optional:
    - api
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    group_id            = string
    instance_profile_id = string
    api                 = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

