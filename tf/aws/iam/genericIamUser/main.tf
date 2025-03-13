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
resource "aws_iam_user" "iamUser" {
  name                 = "${var.resourceName}-user"
  path                 = var.iamUserPath
  permissions_boundary = var.iamUserPermissionBoundary
  force_destroy        = var.iamUserForceDestroy
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.creator
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)
}