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

resource "aws_vpc_security_group_ingress_rule" "ingressRule" {
  cidr_ipv4                    = var.ingressRuleCidrIpv4
  cidr_ipv6                    = var.ingressRuleCidrIpv6
  description                  = var.ingressRuleDescription
  from_port                    = var.ingressRuleFromPort
  ip_protocol                  = var.ingressRuleIpProtocol
  prefix_list_id               = var.ingressRulePrefixListId
  referenced_security_group_id = var.ingressRuleReferencedSecurityGroupId
  security_group_id            = var.ingressRuleSecurityGroupId
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.creator
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)
  to_port = var.ingressRuleToPort
}