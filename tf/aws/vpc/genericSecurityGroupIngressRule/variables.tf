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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_security_group_ingress_rule#argument-reference

variable "ingressRuleCidrIpv4" {
  type    = string
  default = null
}

variable "ingressRuleCidrIpv6" {
  type    = string
  default = null
}

variable "ingressRuleDescription" {
  type    = string
  default = null
}

variable "ingressRuleFromPort" {
  type    = number
  default = null
}

variable "ingressRuleIpProtocol" {
  type    = string
  default = null
}

variable "ingressRulePrefixListId" {
  type    = string
  default = null
}

variable "ingressRuleReferencedSecurityGroupId" {
  type    = string
  default = null
}

variable "ingressRuleSecurityGroupId" {
  type = string
}

variable "ingressRuleToPort" {
  type    = number
  default = null
}