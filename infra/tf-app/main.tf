resource "azurerm_resource_group" "app" {
  name     = var.resource_group
  location = var.region
}

resource "azurerm_virtual_network" "app_network" {
  name = "onei-sar-a12-network"
  resource_group_name = azurerm_resource_group.app.name
  location = azurerm_resource_group.app.location
  address_space = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "app-subnet" {
  name = "onei-sar-a12-subnet"
  resource_group_name = azurerm_resource_group.app.name
  virtual_network_name = azurerm_virtual_network.app_network.name
  address_prefixes = [ "10.0.0.1/24" ]
}