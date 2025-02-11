locals {
  owners = var.business_division
  environment = var.environment
  resource_name_prefix="${var.azlocation_id["eastus"]}-${var.business_division}-${var.environment}"
  organization=var.organization
  common_tags= {
    owners=local.owners,
    environment=local.environment
  }
}

