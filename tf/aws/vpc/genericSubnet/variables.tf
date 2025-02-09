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

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet#argument-reference

variable "subnetAssignIpv6AddressOnCreation" {
  type    = bool
  default = null
}

variable "subnetAvailabilityZone" {
  type    = string
  default = null
}

variable "subnetAvailabilityZoneId" {
  type    = string
  default = null
}

variable "subnetCidrBlock" {
  type    = string
  default = null
}

variable "subnetCustomerOwnedIpv4Pool" {
  type    = string
  default = null
}

variable "subnetEnableDns64" {
  type    = bool
  default = null
}

variable "subnetEnableLniAtDeviceIndex" {
  type    = number
  default = null
}

variable "subnetEnableResourceNameDnsAaaaRecordOnLaunch" {
  type    = bool
  default = null
}

variable "subnetEnableResourceNameDnsARecordOnLaunch" {
  type    = bool
  default = null
}

variable "subnetIpv6CidrBlock" {
  type    = string
  default = null
}

variable "subnetIpv6Native" {
  type    = bool
  default = null
}

variable "subnetMapCustomerOwnedIpOnLaunch" {
  type    = bool
  default = null
}

variable "subnetMapPublicIpOnLaunch" {
  type    = bool
  default = null
}

variable "subnetOutpustArn" {
  type    = string
  default = null
}

variable "subnetPrivateDnsHostnameTypeOnLaunch" {
  type    = string
  default = null
}

variable "subnetVpcId" {
  type = string
}