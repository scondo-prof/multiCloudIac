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

resource "aws_vpc_security_group_egress_rule" "egressRule" {
  cidr_ipv4                    = var.egressRuleCidrIpv4
  cidr_ipv6                    = var.egressRuleCidrIpv6
  description                  = var.egressRuleDescription
  from_port                    = var.egressRuleFromPort
  ip_protocol                  = var.egressRuleIpProtocol
  prefix_list_id               = var.egressRulePrefixListId
  referenced_security_group_id = var.egressRuleReferencedSecurityGroupId
  security_group_id            = var.egressRuleSecurityGroupId
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.creator
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)
  to_port = var.egressRuleToPort
}