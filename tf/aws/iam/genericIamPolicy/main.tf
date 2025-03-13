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
resource "aws_iam_policy" "iamPolicy" {
  description = var.iamPolicyDescription
  name_prefix = var.iamPolicyNamePrefix
  name        = "${var.resourceName}-policy"
  path        = var.iamPolicyPath
  policy = jsonencode({
    Version   = var.iamPolicyVersion
    Statement = var.iamPolicyDocumentStatements
  })
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.creator
    DeployedDate = var.deployedDate
    tfModule     = var.tfModule
  }, var.additionalTags)
}