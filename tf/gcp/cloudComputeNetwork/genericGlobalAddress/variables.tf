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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_address#argument-reference
variable "globalAddressAddress" {
  type    = string
  default = null
}

variable "globalAddressDescription" {
  type    = string
  default = null
}

variable "projectName" {
  type = string
}

variable "deployedDate" {
  type    = string
  default = null
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "additionalLabels" {
  type    = map(string)
  default = {}
}

variable "globalAddressIpVersion" {
  type = string
  validation {
    condition = var.globalAddressIpVersion == null || can(contains([
      "IPV4",
      "IPV6"
    ], var.globalAddressIpVersion))
    error_message = "Valid inputs for | variable: var.globalAddressIpVersion | are: IPV4, IPV6"
  }
  default = null
}

variable "globalAddressPrefixLength" {
  type    = number
  default = null
}

variable "globalAddressType" {
  type = string
  validation {
    condition = contains([
      "EXTERNAL",
      "INTERNAL"
    ], var.globalAddressType)
    error_message = "Valid inputs for | variable: var.globalAddressType | are: EXTERNAL, INTERNAL"
  }
  default = "EXTERNAL"
}

variable "globalAddressPurpose" {
  type = string
  validation {
    condition = var.globalAddressPurpose == null || can(contains([
      "VPC_PEERING",
      "PRIVATE_SERVICE_CONNECT"
    ], var.globalAddressPurpose))
    error_message = "Valid inputs for | variable: var.globalAddressPurpose | are: VPC_PEERING , PRIVATE_SERVICE_CONNECT "
  }
  default = null
}

variable "globalAddressNetwork" {
  type    = string
  default = null
}