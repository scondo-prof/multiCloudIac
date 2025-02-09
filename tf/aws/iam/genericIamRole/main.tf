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

resource "aws_iam_role" "iamRole" {

  assume_role_policy = jsonencode({
    Version   = var.iamRoleAssumeRolePolicyVersion
    Statement = var.iamRoleAssumeRolePolicy
  })
  description           = var.iamRoleDescription
  force_detach_policies = var.iamRoleForceDetatchPolicies
  max_session_duration  = var.iamRoleMaxSessionDuration
  name                  = "${var.resourceName}-role"
  name_prefix           = var.iamRoleNamePrefix
  path                  = var.iamRolePath
  permissions_boundary  = var.iamRolePermissionsBoundary
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.creator
    DeployedDate = var.deployedDate
  }, var.additionalTags)
}
