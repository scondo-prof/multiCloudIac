
module "UWP" {
  source                          = "../../aws/iam/_UWP_userWithPolicyModule"
  awsRegion                       = var.awsRegion
  resourceName                    = var.resourceName
  UWP_IamUserPath                 = var.IUWPAKSMS_UWP_IamUserPath
  UWP_IamUserPermissionBoundary   = var.IUWPAKSMS_UWP_IamUserPermissionBoundary
  UWP_IamUserForceDestroy         = var.IUWPAKSMS_UWP_IamUserForceDestroy
  projectName                     = var.projectName
  createdBy                       = var.createdBy
  deployedDate                    = var.deployedDate
  tfModule                        = var.tfModule
  additionalTags                  = var.additionalTags
  UWP_IamPolicyDescription        = var.IUWPAKSMS_UWP_IamPolicyDescription
  UWP_IamPolicyNamePrefix         = var.IUWPAKSMS_UWP_IamPolicyNamePrefix
  UWP_IamPolicyPath               = var.IUWPAKSMS_UWP_IamPolicyPath
  UWP_IamPolicyVersion            = var.IUWPAKSMS_UWP_IamPolicyVersion
  UWP_IamPolicyDocumentStatements = var.IUWPAKSMS_UWP_IamPolicyDocumentStatements
}

#---

module "iamAccessKey" {
  source             = "../../aws/iam/genericIamAccessKey"
  awsRegion          = var.awsRegion
  iamAccessKeyPgpKey = var.IUWPAKSMS_IamAccessKeyPgpKey
  iamAccessKeyStatus = var.IUWPAKSMS_IamAccessKeyStatus
  iamAccessKeyUser   = var.IUWPAKSMS_IamAccessKeyUser
}

#---

module "SWV" {
  source                         = "../../aws/secretsmanager/_SWV_secretWithVersion"
  awsRegion                      = var.awsRegion
  SWV_SecretDescription          = var.IUWPAKSMS_SWV_SecretDescription
  SWV_SecretKmsKeyId             = var.IUWPAKSMS_SWV_SecretKmsKeyId
  SWV_SecretNamePrefix           = var.IUWPAKSMS_SWV_SecretNamePrefix
  resourceName                   = var.resourceName
  SWV_SecretPolicy               = var.IUWPAKSMS_SWV_SecretPolicy
  SWV_SecretRecoveryWindowInDays = var.IUWPAKSMS_SWV_SecretRecoveryWindowInDays
  SWV_SecretReplica              = var.IUWPAKSMS_SWV_SecretReplica
  SWV_SecretForceSecretOverwrite = var.IUWPAKSMS_SWV_SecretForceSecretOverwrite
  projectName                    = var.projectName
  createdBy                      = var.createdBy
  deployedDate                   = var.deployedDate
  tfModule                       = var.tfModule
  additionalTags                 = var.additionalTags
  SWV_SecretVersionSecretString  = var.IUWPAKSMS_SWV_SecretVersionSecretString
  SWV_SecretVersionSecretBinary  = var.IUWPAKSMS_SWV_SecretVersionSecretBinary
  SWV_SecretVersionStages        = var.IUWPAKSMS_SWV_SecretVersionStages
}

#---
