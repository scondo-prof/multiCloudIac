variable "projectId" {
  type = string
}

variable "region" {
  type = string
  default = "us-east1"
}

variable "resourceName" {
  type = string
}

variable "natRouterName" {
  type = string
}

variable "natIpAllocateOption" {
  type = string
  validation {
    condition = contains(["AUTO_ONLY", "MANUAL_ONLY"], var.natIpAllocateOption)
    error_message = "Variable natIpAllocateOption must be one of the following values: MANUAL_ONLY, AUTO_ONLY"
  }
}

variable "natSourceSubnetworkIpRangesToNat" {
  type = string
  validation {
    condition = contains(["ALL_SUBNETWORKS_ALL_IP_RANGES", "ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES", "LIST_OF_SUBNETWORKS"], var.natSourceSubnetworkIpRangesToNat)
    error_message = "Variable natSourceSubnetworkIpRangesToNat must be one of the following values: ALL_SUBNETWORKS_ALL_IP_RANGES, ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, LIST_OF_SUBNETWORKS"
  }
}

variable "natIps" {
  type = list(string)
  default = null
}

variable "natMinPortsPerVm" {
  type = number
  default = 64
}

