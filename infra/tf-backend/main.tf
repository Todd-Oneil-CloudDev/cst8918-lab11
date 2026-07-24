# required for terraform version 4.0 or greater
variable "subscription_id" {
  type = string
}

terraform {
  required_version = "~> 1.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "actions" {
  name     = "onei-sar-githubactions-rg"
  location = "canadacentral"
}

resource "azurerm_storage_account" "actions" {
  name                     = "oneisargithubactions"
  location                 = azurerm_resource_group.actions.location
  resource_group_name      = azurerm_resource_group.actions.name
  account_tier             = "Standard"
  account_replication_type = "LRS"
  min_tls_version          = "TLS1_2"
}

resource "azurerm_storage_container" "statecon" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.actions.name
  container_access_type = "private"
}


output "rg" {
  description = "resource group name"
  value       = azurerm_resource_group.actions.name
}

output "sa-name" {
  description = "storage account name"
  value       = azurerm_storage_account.actions.name
}

output "sa-cont-state" {
  description = "storage containenamer"
  value       = azurerm_storage_container.statecon.name
}