terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = var.awsRegion
}

resource "aws_security_group_rule" "securityGroupRule" {
  from_port                = var.securityGroupRuleFromPort
  protocol                 = var.securityGroupRuleProtocol
  security_group_id        = var.securityGroupRuleSecurityGroupId
  to_port                  = var.securityGroupRuleToPort
  type                     = var.securityGroupRuleType
  cidr_blocks              = var.securityGroupRuleCidrBlocks
  description              = var.securityGroupRuleDescription
  ipv6_cidr_blocks         = var.securityGroupRuleIpv6CidrBlocks
  prefix_list_ids          = var.securityGroupRulePrefixListIds
  self                     = var.securityGroupRuleSelf
  source_security_group_id = var.securityGroupRuleSourceSecurityGroupId
}