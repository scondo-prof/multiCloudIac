variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "projectName" {
  type = string
}

variable "creator" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway#argument-reference

variable "natAllocationId" {
  type    = string
  default = null
}

variable "natConnectivityType" {
  type    = string
  default = null
  validation {
    condition = var.natConnectivityType == null || can(contains([
      "private",
      "public"
    ], var.natConnectivityType))
    error_message = "Valid inputs for | variable: var.natConnectivityType | are: private, and public"
  }
}

variable "natPrivateIp" {
  type    = string
  default = null
}

variable "natSubnetId" {
  type = string
}

variable "natSecondaryAllocationIds" {
  type    = list(string)
  default = null
}

variable "natSecondaryPrivateIpAddressCount" {
  type    = string
  default = null
}

variable "natSecondaryPrivateIpAddresses" {
  type    = list(string)
  default = null
}