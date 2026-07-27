
terraform {
  required_version = "~> 1.5"

  backend "azurerm" {}

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
  use_oidc        = true // S.M Needed to add this to makes the provider authentication method explicit instead of allowing it to fall back to Azure CL
}