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

module "iamUser" {
  source = "../genericIamUser"

  awsRegion                 = var.awsRegion
  resourceName              = var.resourceName
  iamUserPath               = var.UWP_IamUserPath
  iamUserPermissionBoundary = var.UWP_IamUserPermissionBoundary
  iamUserForceDestroy       = var.UWP_IamUserForceDestroy
  projectName               = var.projectName
  creator                   = var.creator
  deployedDate              = var.deployedDate
  additionalTags            = var.additionalTags
}

module "iamPolicy" {
  source = "../genericIamPolicy"

  awsRegion                   = var.awsRegion
  iamPolicyDescription        = var.UWP_IamPolicyDescription
  iamPolicyNamePrefix         = var.UWP_IamPolicyNamePrefix
  resourceName                = var.resourceName
  iamPolicyPath               = var.UWP_IamPolicyPath
  iamPolicyVersion            = var.UWP_IamPolicyVersion
  iamPolicyDocumentStatements = var.UWP_IamPolicyDocumentStatements
  projectName                 = var.projectName
  creator                     = var.creator
  deployedDate                = var.deployedDate
  additionalTags              = var.additionalTags
}

module "policyAttatchment" {
  source = "../genericIamUserPolicyAttatchment"

  policyAttatchmentIamUserName = module.iamUser.iamUserName
  policyAttatchmentPolicyArn   = module.iamPolicy.iamPolicyArn
}