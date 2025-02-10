resource "azurerm_subnet" "subnet-1" {
    name = "my-subnet"
    resource_group_name = azurerm_resource_group.prod-rg.name
    virtual_network_name = azurerm_virtual_network.pord-vnet.name
    address_prefixes = ["10.${var.net["prod"]}.1.0/24"]
}