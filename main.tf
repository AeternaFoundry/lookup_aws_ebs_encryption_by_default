data "aws_ebs_encryption_by_default" "ebs_encryption_by_default_lookup" {
  for_each = var.ebs_encryption_by_default_lookup

  region = each.value.region
}

