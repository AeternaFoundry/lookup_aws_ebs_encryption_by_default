variable "ebs_encryption_by_default_lookup" {
  description = <<EOT
Map of ebs_encryption_by_default_lookup, attributes below
Optional:
    - region
EOT

  type = map(object({
    region = optional(string)
  }))
}

