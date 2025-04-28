variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "projectName" {
  type = string
}

variable "deployedDate" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address#argument-reference

variable "networkAddressObject" {
  type = object({
    name = string
    address = optional(string, null)
    address_type = optional(string, null)
    description = optional(string, null)
    purpose = optional(string, null)
    network_tier = optional(string, null)
    subnetwork = optional(string, null)
  })
}


variable "networkAddressSubnetwork" {
  type    = string
  default = null
}

variable "networkAddressNetwork" {
  type    = string
  default = null
}

variable "networkAddressPrefixLength" {
  type    = number
  default = null
}

variable "networkAddressIpVersion" {
  type = string
  validation {
    condition = var.networkAddressIpVersion == null || can(contains([
      "IPV4",
      "IPV6"
    ], var.networkAddressIpVersion))
    error_message = "Valid inputs for | variable: networkAddressIpVersion | are: IPV4, IPV6"
  }
  default = null
}

variable "networkAddressIpv6EndpoingType" {
  type = string
  validation {
    condition = var.networkAddressIpv6EndpoingType == null || can(contains([
      "VM",
      "NETLB"
    ], var.networkAddressIpv6EndpoingType))
    error_message = "Valid inputs for | variable: networkAddressIpv6EndpoingType | are: VM, NETLB"
  }
  default = null
}