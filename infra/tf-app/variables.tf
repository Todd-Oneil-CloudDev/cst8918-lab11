# backend references


variable "subscription_id" {
  description = "The Azure subscription ID used by the AzureRM provider."
  type        = string
}


/*
Since these values are comming from prod.backend.hcl we dont need to define them here.

variable "state_resource_group" {
  description = "resource group"
  type        = string
  default     = "onei-sar-githubactions-rg"
}

variable "state_storage" {
  description = "state location"
  type        = string
  default     = "oneisargithubactions"
}

variable "state_cont" {
  description = "state container"
  type        = string
  default     = "tfstate"
}

*/

# tf-app variables
variable "region" {
  description = "region for all resources"
  type        = string
  default     = "canadacentral"
}

/* variable is not being used

variable "resource_group" {
  description = "resource group"
  type        = string
  default     = "onei-sar-a12-rg"
}
*/