output "ebs_encryption_by_default_lookup_id" {
  description = "Map of id values across all ebs_encryption_by_default_lookup, keyed the same as var.ebs_encryption_by_default_lookup"
  value       = { for k, v in data.aws_ebs_encryption_by_default.ebs_encryption_by_default_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ebs_encryption_by_default_lookup_enabled" {
  description = "Map of enabled values across all ebs_encryption_by_default_lookup, keyed the same as var.ebs_encryption_by_default_lookup"
  value       = { for k, v in data.aws_ebs_encryption_by_default.ebs_encryption_by_default_lookup : k => v.enabled if v.enabled != null }
}
output "ebs_encryption_by_default_lookup_region" {
  description = "Map of region values across all ebs_encryption_by_default_lookup, keyed the same as var.ebs_encryption_by_default_lookup"
  value       = { for k, v in data.aws_ebs_encryption_by_default.ebs_encryption_by_default_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

