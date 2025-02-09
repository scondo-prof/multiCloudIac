variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule#argument-reference

variable "securityGroupRuleFromPort" {
  type = number
}

variable "securityGroupRuleProtocol" {
  type = string
}

variable "securityGroupRuleSecurityGroupId" {
  type = string
}

variable "securityGroupRuleToPort" {
  type = number
}

variable "securityGroupRuleType" {
  type = string
  validation {
    condition = contains([
      "ingress",
      "egress"
    ], var.securityGroupRuleType)
    error_message = "Valid inputs for | variable: var.securityGroupRuleType | are: ingress,egress"
  }
}

variable "securityGroupRuleCidrBlocks" {
  type    = list(string)
  default = null
}

variable "securityGroupRuleDescription" {
  type    = string
  default = null
}

variable "securityGroupRuleIpv6CidrBlocks" {
  type    = list(string)
  default = null
}

variable "securityGroupRulePrefixListIds" {
  type    = list(string)
  default = null
}

variable "securityGroupRuleSelf" {
  type    = bool
  default = null
}

variable "securityGroupRuleSourceSecurityGroupId" {
  type    = string
  default = null
}