resource "azurerm_resource_group" "prod-rg" {
    name = "${local.organization["name"]}-${local.resource_name_prefix}-rg"
    location = var.location
    tags = local.common_tags
}