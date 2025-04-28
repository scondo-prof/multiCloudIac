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
  })
}

variable "networkAddressAddress" {
  type    = string
  default = null
}

variable "networkAddressType" {
  type = string
  validation {
    condition     = contains(["INTERNAL", "EXTERNAL"], var.networkAddressType)
    error_message = "Variable networkAddressType must be one of the following values: INTERNAL, EXTERNAL"
  }
  default = "EXTERNAL"
}

variable "networkAddressDescription" {
  type    = string
  default = null
}

variable "networkAddressPurpose" {
  type = string
  validation {
    condition = var.networkAddressPurpose == null || can(contains([
      "GCE_ENDPOINT",
      "SHARED_LOADBALANCER_VIP",
      "VPC_PEERING",
      "IPSEC_INTERCONNECT",
      "PRIVATE_SERVICE_CONNECT"
    ], var.networkAddressPurpose))
    error_message = "Valid inputs for | variable: networkAddressPurpose | are: GCE_ENDPOINT, SHARED_LOADBALANCER_VIP, VPC_PEERING, IPSEC_INTERCONNECT, PRIVATE_SERVICE_CONNECT"
  }
  default = null
}

variable "networkAddressNetworkTier" {
  type = string
  validation {
    condition = var.networkAddressNetworkTier == null || can(contains([
      "PREMIUM",
      "STANDARD"
    ], var.networkAddressNetworkTier))
    error_message = "Valid inputs for | variable: networkAddressNetworkTier | are: PREMIUM, STANDARD"
  }
  default = null
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