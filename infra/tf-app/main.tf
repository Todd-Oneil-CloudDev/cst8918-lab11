resource "azurerm_resource_group" "app" {
  name     = var.resource_group
  location = var.region
}