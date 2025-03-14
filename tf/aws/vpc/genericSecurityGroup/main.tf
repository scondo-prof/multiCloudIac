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

resource "aws_security_group" "awsSecurityGroup" {
  description            = var.awsSecurityGroupDescription
  ingress                = var.awsSecurityGroupIngress
  egress                 = var.awsSecurityGroupEgress
  name_prefix            = var.awsSecurityGroupNamePrefix
  name                   = var.awsSecurityGroupName
  revoke_rules_on_delete = var.awsSecurityGroupRevokeRulesOnDelete
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.creator
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)
  vpc_id = var.awsSecurityGroupVpcId
}