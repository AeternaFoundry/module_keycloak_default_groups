resource "keycloak_default_groups" "default_groups" {
  for_each = var.default_groups

  group_ids = each.value.group_ids
  realm_id  = each.value.realm_id
}

