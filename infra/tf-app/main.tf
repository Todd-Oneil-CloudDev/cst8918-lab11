resource "azurerm_resource_group" "app" {
  name     = "onei-sar-a12-rg"
  location = var.region
}