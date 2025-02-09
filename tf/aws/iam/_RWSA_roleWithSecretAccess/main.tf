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

module "iamRole" {
  source = "../genericRole"

  awsRegion                        = var.awsRegion
  policyDocumentServiceIdentifiers = var.RWSA_IamRoletServiceIdentifiers
  resourceName                     = var.resourceName
  projectName                      = var.projectName
  creator                          = var.creator
  deployedDate                     = var.deployedDate
  iamRoleAdditionalTags            = var.additionalTags
}

module "secretObtainPolicy" {
  source = "../secretObtainPolicy"

  awsRegion                                 = var.awsRegion
  policyDocumentAdditionalSecretPermissions = var.RWSA_SecretObtainPolicyAdditionalSecretPermissions
  policyDocumentSecretResources             = var.RWSA_SecretObtainPolicySecretResources
  resourceName                              = module.iamRole.iamRoleName
  projectName                               = var.projectName
  creator                                   = var.creator
  deployedDate                              = var.deployedDate
  iamPolicyAdditionalTags                   = var.additionalTags
}

module "secretObtainPolicyAttatchment" {
  source = "../genericIamRolePolicyAttachment"

  policyAttachmentRoleName  = module.iamRole.iamRoleName
  policyAttachmentPolicyArn = module.secretObtainPolicy.iamPolicyArn
}