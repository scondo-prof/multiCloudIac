variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "resourceName" {
  type = string
}

variable "deployedDate" {
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

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#Only necessary if you want a specific address for internal use
variable "NWEA_NetworkAddressAddress" {
  type    = string
  default = null
}

variable "NWEA_NetworkAddressType" {
  type = string
  validation {
    condition     = contains(["INTERNAL", "EXTERNAL"], var.NWEA_NetworkAddressType)
    error_message = "Variable NWEA_NetworkAddressType must be one of the following values: INTERNAL, EXTERNAL"
  }
  default = "EXTERNAL"
}

#Possible Values are either PREMIUM or STANDARD, if left Null it will default to PREMIUM
variable "NWEA_NetworkAddressNetworkTier" {
  type    = string
  default = null
}

variable "NWEA_NetworkRouterNetworkName" {
  type = string
}

variable "NWEA_NatSourceSubnetworkIpRangesToNat" {
  type = string
  validation {
    condition     = contains(["ALL_SUBNETWORKS_ALL_IP_RANGES", "ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES", "LIST_OF_SUBNETWORKS"], var.NWEA_NatSourceSubnetworkIpRangesToNat)
    error_message = "Variable NWEA_NatSourceSubnetworkIpRangesToNat must be one of the following values: ALL_SUBNETWORKS_ALL_IP_RANGES, ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, LIST_OF_SUBNETWORKS"
  }
  default = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}

variable "NWEA_NatMinPortsPerVm" {
  type    = number
  default = 64
}