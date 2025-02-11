resource "azurerm_virtual_network" "pord-vnet" {
  name = "${local.resource_name_prefix}-vnet"
  address_space = ["10.${var.net["prod"]}.0.0/16"]
  location = var.location
  resource_group_name = azurerm_resource_group.prod-rg.name
  tags = {
    "Application"= "app"
    "Subscription" = "Prod"
  }
}

resource "azurerm_public_ip" "pubib-1" {
    name = "mypublicip-1"
    resource_group_name = azurerm_resource_group.prod-rg.name
    location = azurerm_resource_group.prod-rg.location
    allocation_method = "Static"
}

resource "azurerm_network_interface" "nic-1" {
    name = "nic-1"
    location = azurerm_resource_group.prod-rg.location
    resource_group_name = azurerm_resource_group.prod-rg.name
    ip_configuration {
      name = "internal"
      subnet_id = azurerm_subnet.subnet-1.id
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id = azurerm_public_ip.pubib-1.id
    }
  
}