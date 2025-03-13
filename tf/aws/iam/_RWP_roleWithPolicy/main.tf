
module "iamRole" {
  source                         = "../genericIamRole"
  awsRegion                      = var.awsRegion
  iamRoleAssumeRolePolicyVersion = var.RWP_IamRoleAssumeRolePolicyVersion
  iamRoleAssumeRolePolicy        = var.RWP_IamRoleAssumeRolePolicy
  iamRoleDescription             = var.RWP_IamRoleDescription
  iamRoleForceDetatchPolicies    = var.RWP_IamRoleForceDetatchPolicies
  iamRoleMaxSessionDuration      = var.RWP_IamRoleMaxSessionDuration
  resourceName                   = var.resourceName
  iamRoleNamePrefix              = var.RWP_IamRoleNamePrefix
  iamRolePath                    = var.RWP_IamRolePath
  iamRolePermissionsBoundary     = var.RWP_IamRolePermissionsBoundary
  projectName                    = var.projectName
  creator                        = var.creator
  deployedDate                   = var.deployedDate
  tfModule                       = var.tfModule
  additionalTags                 = var.additionalTags
}

#---

module "iamPolicy" {
  source                      = "../genericIamPolicy"
  awsRegion                   = var.awsRegion
  iamPolicyDescription        = var.RWP_IamPolicyDescription
  iamPolicyNamePrefix         = var.RWP_IamPolicyNamePrefix
  resourceName                = var.resourceName
  iamPolicyPath               = var.RWP_IamPolicyPath
  iamPolicyVersion            = var.RWP_IamPolicyVersion
  iamPolicyDocumentStatements = var.RWP_IamPolicyDocumentStatements
  projectName                 = var.projectName
  creator                     = var.creator
  deployedDate                = var.deployedDate
  tfModule                    = var.tfModule
  additionalTags              = var.additionalTags
}

#---

module "policyAttachment" {
  source                    = "../genericIamRolePolicyAttachment"
  awsRegion                 = var.awsRegion
  policyAttachmentRoleName  = module.iamRole.iamRoleName
  policyAttachmentPolicyArn = module.iamPolicy.iamPolicyArn
}

#---
