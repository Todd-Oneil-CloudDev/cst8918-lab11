resource "azurerm_resource_group" "actions" {
  name     = "onei-sar-a12-rg"
  location = var.region
}