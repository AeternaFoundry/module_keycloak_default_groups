variable "default_groups" {
  description = <<EOT
Map of default_groups, attributes below
Required:
    - group_ids
    - realm_id
EOT

  type = map(object({
    group_ids = set(string)
    realm_id  = string
  }))
}

