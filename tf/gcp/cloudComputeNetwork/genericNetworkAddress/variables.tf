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
    name               = string
    address            = optional(string, null)
    address_type       = optional(string, null)
    description        = optional(string, null)
    purpose            = optional(string, null)
    network_tier       = optional(string, null)
    subnetwork         = optional(string, null)
    network            = optional(string, null)
    prefix_length      = optional(number, null)
    ip_version         = optional(string, null)
    ipv6_endpoint_type = optional(string, null)
  })
}