# backend references


variable "subscription_id" {
  description = "The Azure subscription ID used by the AzureRM provider."
  type        = string
}

# tf-app variables
variable "region" {
  description = "region for all resources"
  type        = string
  default     = "canadacentral"
}