variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip_association#argument-reference

variable "eipAssociationAllocationId" {
  type    = string
  default = null
}

variable "eipAssociationAllowReassociation" {
  type    = bool
  default = null
}

variable "eipAssociationInstanceId" {
  type    = string
  default = null
}

variable "eipAssociationNetworkInterfaceId" {
  type    = string
  default = null
}

variable "eipAssociationPrivateIpAddress" {
  type    = string
  default = null
}