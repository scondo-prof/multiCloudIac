variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "projectName" {
  type = string
}

variable "createdBy" {
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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_security_group_ingress_rule#argument-reference

variable "egressRuleCidrIpv4" {
  type    = string
  default = null
}

variable "egressRuleCidrIpv6" {
  type    = string
  default = null
}

variable "egressRuleDescription" {
  type    = string
  default = null
}

variable "egressRuleFromPort" {
  type    = number
  default = null
}

variable "egressRuleIpProtocol" {
  type    = string
  default = null
}

variable "egressRulePrefixListId" {
  type    = string
  default = null
}

variable "egressRuleReferencedSecurityGroupId" {
  type    = string
  default = null
}

variable "egressRuleSecurityGroupId" {
  type = string
}

variable "egressRuleToPort" {
  type    = number
  default = null
}