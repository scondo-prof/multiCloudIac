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

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip#argument-reference

variable "eipAddress" {
  type    = string
  default = null
}

variable "eipAssociateWithPrivateIp" {
  type    = string
  default = null
}

variable "eipCustomerOwnedIpv4Pool" {
  type    = string
  default = null
}

variable "eipDomain" {
  type    = bool
  default = null
}

variable "eipInstance" {
  type    = string
  default = null
}

variable "eipIpamPoolId" {
  type    = string
  default = null
}

variable "eipNetworkBorderGroup" {
  type    = string
  default = null
}

variable "eipNetworkInterface" {
  type    = string
  default = null
}

variable "eipPublicIpv4Pool" {
  type    = string
  default = null
}