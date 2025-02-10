resource "azurerm_resource_group" "prod-rg" {
    name = "prod-rg"
    location = var.region
}