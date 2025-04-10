variable "azurermSubscriptionId" {
  type    = string
  default = "dad93de7-5388-43ff-86d8-5a1b9b2e87ce"
}

variable "azurermRegion" { #https://gist.github.com/ausfestivus/04e55c7d80229069bf3bc75870630ec8
  type    = string
  default = "eastus"
}

variable "resourceName" {
  type = string
}

variable "projectName" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "tfModule" {
  type = string
}

variable "deployedDate" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group#arguments-reference

variable "resourceGroupManagedBy" {
  type    = string
  default = null
}