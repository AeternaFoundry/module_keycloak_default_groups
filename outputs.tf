output "default_groups_id" {
  description = "Map of id values across all default_groups, keyed the same as var.default_groups except keys with no id are omitted"
  value       = { for k, v in keycloak_default_groups.default_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "default_groups_group_ids" {
  description = "Map of group_ids values across all default_groups, keyed the same as var.default_groups except keys with no group_ids are omitted"
  value       = { for k, v in keycloak_default_groups.default_groups : k => v.group_ids if v.group_ids != null && length(v.group_ids) > 0 }
}
output "default_groups_realm_id" {
  description = "Map of realm_id values across all default_groups, keyed the same as var.default_groups except keys with no realm_id are omitted"
  value       = { for k, v in keycloak_default_groups.default_groups : k => v.realm_id if v.realm_id != null && length(v.realm_id) > 0 }
}

