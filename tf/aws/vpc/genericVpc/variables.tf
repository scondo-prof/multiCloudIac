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

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc#argument-reference

variable "vpcCidrBlock" {
  type    = string
  default = null
}

variable "vpcInstanceTenancy" {
  type = string
  validation {
    condition = var.vpcInstanceTenancy == null || can(contains([
      "default",
      "dedicated"
    ], var.vpcInstanceTenancy))
    error_message = "Valid inputs for | variable: var.vpcInstanceTenancy | are: default, and dedicated"
  }
  default = null
}

variable "vpcIpv4IpamPoolId" {
  type    = string
  default = null
}

variable "vpcIpv4NetmaskLength" {
  type    = number
  default = null
}

variable "vpcIpv6CidrBlock" {
  type    = string
  default = null
}

variable "vpcIpv6IpamPoolId" {
  type    = string
  default = null
}

variable "vpcIpv6NetmaskLength" {
  type    = number
  default = null
}

variable "vpcIpv6CidrBlockNetworkBorderGroup" {
  type    = string
  default = null
}

variable "vpcEnableDnsSupport" {
  type    = bool
  default = null
}

variable "vpcEnableNetworkAddressUsageMetrics" {
  type    = bool
  default = null
}

variable "vpcEnableDnsHostnames" {
  type    = bool
  default = null
}

variable "vpcAssignGeneratedIpv6CidrBlock" {
  type    = bool
  default = null
}