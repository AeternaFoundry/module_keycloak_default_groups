output "default_groups_id" {
  description = "Map of id values across all default_groups, keyed the same as var.default_groups"
  value       = { for k, v in keycloak_default_groups.default_groups : k => v.id }
}
output "default_groups_group_ids" {
  description = "Map of group_ids values across all default_groups, keyed the same as var.default_groups"
  value       = { for k, v in keycloak_default_groups.default_groups : k => v.group_ids }
}
output "default_groups_realm_id" {
  description = "Map of realm_id values across all default_groups, keyed the same as var.default_groups"
  value       = { for k, v in keycloak_default_groups.default_groups : k => v.realm_id }
}

