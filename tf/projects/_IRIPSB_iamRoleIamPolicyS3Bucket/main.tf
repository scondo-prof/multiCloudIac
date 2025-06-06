
module "BWV" {
  source                                       = "../../aws/s3/_BWV_bucketWithVersioning"
  awsRegion                                    = var.awsRegion
  resourceName                                 = var.resourceName
  BWV_S3BucketPrefix                           = var.IRIPSB_BWV_S3BucketPrefix
  BWV_S3BucketForceDestroy                     = var.IRIPSB_BWV_S3BucketForceDestroy
  BWV_S3BucketObjectLockEnabled                = var.IRIPSB_BWV_S3BucketObjectLockEnabled
  projectName                                  = var.projectName
  createdBy                                    = var.createdBy
  tfModule                                     = var.tfModule
  deployedDate                                 = var.deployedDate
  additionalTags                               = var.additionalTags
  BWV_S3BucketVersioningConfigurationStatus    = var.IRIPSB_BWV_S3BucketVersioningConfigurationStatus
  BWV_S3BucketVersioningConfigurationMfaDelete = var.IRIPSB_BWV_S3BucketVersioningConfigurationMfaDelete
  BWV_S3BucketVersioningExpectedBucketOwner    = var.IRIPSB_BWV_S3BucketVersioningExpectedBucketOwner
  BWV_S3BucketVersioningMfa                    = var.IRIPSB_BWV_S3BucketVersioningMfa
}

#---

module "iamRole" {
  source                         = "../../aws/iam/genericIamRole"
  awsRegion                      = var.awsRegion
  iamRoleAssumeRolePolicyVersion = var.IRIPSB_IamRoleAssumeRolePolicyVersion
  iamRoleAssumeRolePolicy = concat([{
    Action = ["sts:AssumeRole"]
    Effect = "Allow"
    Principal = {
      "Service" = ["s3.amazonaws.com"]
    }
    Sid = "s3ServiceAssumeRole"
  }], var.IRIPSB_IamRoleAssumeRolePolicy)
  iamRoleDescription          = var.IRIPSB_IamRoleDescription
  iamRoleForceDetatchPolicies = var.IRIPSB_IamRoleForceDetatchPolicies
  iamRoleMaxSessionDuration   = var.IRIPSB_IamRoleMaxSessionDuration
  resourceName                = var.resourceName
  iamRoleNamePrefix           = var.IRIPSB_IamRoleNamePrefix
  iamRolePath                 = var.IRIPSB_IamRolePath
  iamRolePermissionsBoundary  = var.IRIPSB_IamRolePermissionsBoundary
  projectName                 = var.projectName
  createdBy                   = var.createdBy
  deployedDate                = var.deployedDate
  tfModule                    = var.tfModule
  additionalTags              = var.additionalTags
}

#---

module "iamPolicy" {
  source               = "../../aws/iam/genericIamPolicy"
  awsRegion            = var.awsRegion
  iamPolicyDescription = var.IRIPSB_IamPolicyDescription
  iamPolicyNamePrefix  = var.IRIPSB_IamPolicyNamePrefix
  resourceName         = var.resourceName
  iamPolicyPath        = var.IRIPSB_IamPolicyPath
  iamPolicyVersion     = var.IRIPSB_IamPolicyVersion
  iamPolicyDocumentStatements = concat([{
    Action = [
      "s3:ListBucket",
      "s3:GetBucketLocation"
    ]
    Effect   = "Allow"
    Resource = [module.BWV.BWV_S3BucketArn]
    Sid      = "s3Bucket"
    },
    {
      Action = [
        "s3:PutObject",
        "s3:DeleteObject",
        "s3:GetObject",
        "s3:GetObjectVersion"
      ]
      Effect   = "Allow"
      Resource = ["${module.BWV.BWV_S3BucketArn}/*"]
      Sid      = "s3BucketObjects"
    }
  ], var.IRIPSB_IamPolicyDocumentStatements)
  projectName    = var.projectName
  createdBy      = var.createdBy
  deployedDate   = var.deployedDate
  tfModule       = var.tfModule
  additionalTags = var.additionalTags
}

#---

module "PolicyAttachmentIamPolicy" {
  source                    = "../../aws/iam/genericIamRolePolicyAttachment"
  awsRegion                 = var.awsRegion
  policyAttachmentRoleName  = module.iamRole.iamRoleName    #var.IRIPSB_PolicyAttachmentIamPolicyRoleName
  policyAttachmentPolicyArn = module.iamPolicy.iamPolicyArn #var.IRIPSB_PolicyAttachmentIamPolicyPolicyArn
}