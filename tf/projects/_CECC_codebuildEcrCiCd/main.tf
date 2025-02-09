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

module "ecrRepository" {
  source = "../../aws/ecr/genericEcrRepository"

  awsRegion                               = var.awsRegion
  resourceName                            = var.resourceName
  ecrRepositoryEncryptionConfiguration    = var.CECC_EcrRepositoryEncryptionConfiguration
  ecrRepositoryForceDelete                = var.CECC_EcrRepositoryForceDelete
  ecrRepositoryImageTagMutability         = var.CECC_EcrRepositoryImageTagMutability
  ecrRepositoryImageScanningConfiguration = var.CECC_EcrRepositoryImageScanningConfiguration
  projectName                             = var.projectName
  creator                                 = var.creator
  deployedDate                            = var.deployedDate
  additionalTags                          = var.additionalTags
}

module "codebuildProject" {
  source = "../../aws/codebuild/genericCodebuildProject"

  awsRegion                                     = var.awsRegion
  codebuildProjectArtifactsIdentifier           = var.CECC_CodebuildProjectArtifactsIdentifier
  codebuildProjectArtifactsBucketOwnerAccess    = var.CECC_CodebuildProjectArtifactsBucketOwnerAccess
  codebuildProjectArtifactsEncryptionDisabled   = var.CECC_CodebuildProjectArtifactsEncryptionDisabled
  codebuildProjectArtifactsLocation             = var.CECC_CodebuildProjectArtifactsLocation
  codebuildProjectArtifactsName                 = var.CECC_CodebuildProjectArtifactsName
  codebuildProjectArtifactsNamespaceType        = var.CECC_CodebuildProjectArtifactsNamespaceType
  codebuildProjectArtifactsOverrideArtifactName = var.CECC_CodebuildProjectArtifactsOverrideArtifactName
  codebuildProjectArtifactsPackaging            = var.CECC_CodebuildProjectArtifactsPackaging
  codebuildProjectArtifactsPath                 = var.CECC_CodebuildProjectArtifactsPath
  codebuildProjectArtifactsType                 = var.CECC_CodebuildProjectArtifactsType
  codebuildProjectEnvironmentCertificate        = var.CECC_CodebuildProjectEnvironmentCertificate
  codebuildProjectEnvironmentComputeType        = var.CECC_CodebuildProjectEnvironmentComputeType
  # codebuildProjectEnvironmentFleet              = var.CECC_CodebuildProjectEnvironmentFleet
  codebuildProjectEnvironmentEnvironmentVariable = merge({
    AWS_DEFAULT_REGION = {
      name  = "AWS_DEFAULT_REGION"
      value = var.awsRegion
    }
    AWS_ACCOUNT_ID = {
      name  = "AWS_ACCOUNT_ID"
      value = var.awsAccountId
    }
    IMAGE_REPO_NAME = {
      name  = "IMAGE_REPO_NAME"
      value = module.ecrRepository.ecrRepositoryName
    }
    IMAGE_TAG = {
      name  = "IMAGE_TAG"
      value = var.codebuildProjectEcrRepoImageTag
    }
  }, var.CECC_CodebuildProjectEnvironmentEnvironmentVariables)
  codebuildProjectEnvironmentImagePullCredentialsType = var.CECC_CodebuildProjectEnvironmentImagePullCredentialsType
  codebuildProjectEnvironmentImage                    = var.CECC_CodebuildProjectEnvironmentImage
  codebuildProjectEnvironmentPrivilegedMode           = var.CECC_CodebuildProjectEnvironmentPrivilegedMode
  codebuildProjectEnvironmentRegistryCredential       = var.CECC_CodebuildProjectEnvironmentRegistryCredential
  codebuildProjectEnvironmentType                     = var.CECC_CodebuildProjectEnvironmentType
  resourceName                                        = var.resourceName
  codebuildProjectServiceRole                         = module.codebuildRole.iamRoleArn
  codebuildProjectSourceBuildspec                     = var.CECC_CodebuildProjectSourceBuildspec
  codebuildProjectSourceGitCloneDepth                 = var.CECC_CodebuildProjectSourceGitCloneDepth
  codebuildProjectSourceGitSubmodulesConfig           = var.CECC_CodebuildProjectSourceGitSubmodulesConfig
  codebuildProjectSourceInsecureSsl                   = var.CECC_CodebuildProjectSourceInsecureSsl
  codebuildProjectSourceLocation                      = var.CECC_CodebuildProjectSourceLocation
  codebuildProjectSourceReportBuildStatus             = var.CECC_CodebuildProjectSourceReportBuildStatus
  codebuildProjectSourceBuildStatusConfig             = var.CECC_CodebuildProjectSourceBuildStatusConfig
  codebuildProjectSourceType                          = var.CECC_CodebuildProjectSourceType
  codebuildProjectBadgeEnabled                        = var.CECC_CodebuildProjectBadgeEnabled
  codebuildProjectBuildBatchConfig                    = var.CECC_CodebuildProjectBuildBatchConfig
  codebuildProjectBuildTimeout                        = var.CECC_CodebuildProjectBuildTimeout
  codebuildProjectCache                               = var.CECC_CodebuildProjectCache
  codebuildProjectConcurrentBuildLimit                = var.CECC_CodebuildProjectConcurrentBuildLimit
  codebuildProjectDescription                         = var.CECC_CodebuildProjectDescription
  codebuildProjectFileSystemLocations                 = var.CECC_CodebuildProjectFileSystemLocations
  codebuildProjectEncryptionKey                       = var.CECC_CodebuildProjectEncryptionKey
  codebuildProjectLogsConfig = {
    cloudwatch_logs = {
      group_name  = module.logGroup.logGroupName
      status      = var.CECC_CodebuildProjectCloudwatchLogsConfigStatus
      stream_name = var.CECC_CodebuildProjectCloudwatchLogsConfigStreamName
    }
    s3_logs = var.CECC_CodebuildProjectS3LogsConfig
  }
  codebuildProjectVisibility             = var.CECC_CodebuildProjectVisibility
  codebuildProjectResourceAccessRole     = var.CECC_CodebuildProjectResourceAccessRole
  codebuildProjectQueuedTimeout          = var.CECC_CodebuildProjectQueuedTimeout
  codebuildProjectSecondaryArtifacts     = var.CECC_CodebuildProjectSecondaryArtifacts
  codebuildProjectSecondarySources       = var.CECC_CodebuildProjectSecondarySources
  codebuildProjectSecondarySourceVersion = var.CECC_CodebuildProjectSecondarySourceVersion
  codebuildProjectSourceVersion          = var.CECC_CodebuildProjectSourceVersion
  projectName                            = var.projectName
  creator                                = var.creator
  deployedDate                           = var.deployedDate
  additionalTags                         = var.additionalTags
  codebuildProjectVpcConfig              = var.CECC_CodebuildProjectVpcConfig
}

module "credentials" {
  source = "../../aws/codebuild/genericCodebuildSourceCredential"

  awsRegion             = var.awsRegion
  credentialsAuthType   = var.CECC_CredentialsAuthType
  credentialsServerType = var.CECC_CredentialsServerType
  credentialsToken      = var.CECC_CredentialsToken
  credentialsUserName   = var.CECC_CredentialsUserName
}

module "webhook" {
  source = "../../aws/codebuild/genericCodebuildWebhook"

  webhookProjectName  = module.codebuildProject.codebuildProjectName
  webhookBuildType    = var.CECC_WebhookBuildType
  webhookBranchFilter = var.CECC_WebhookBranchFilter
  webhookFilterGroup  = var.CECC_WebhookFilterGroup
  # webhookScopeConfiguration = var.CECC_WebhookScopeConfiguration
}

module "codebuildRole" {
  source = "../../aws/iam/genericIamRole"

  awsRegion                      = var.awsRegion
  iamRoleAssumeRolePolicyVersion = var.CECC_CodebuildRoleAssumeRolePolicyVersion
  iamRoleAssumeRolePolicy        = var.CECC_CodebuildRoleAssumeRolePolicy
  iamRoleDescription             = var.CECC_CodebuildRoleDescription
  iamRoleForceDetatchPolicies    = var.CECC_CodebuildRoleForceDetatchPolicies
  iamRoleMaxSessionDuration      = var.CECC_CodebuildRoleMaxSessionDuration
  resourceName                   = "${var.resourceName}-codebuild"
  iamRoleNamePrefix              = var.CECC_CodebuildRoleNamePrefix
  iamRolePath                    = var.CECC_CodebuildRolePath
  iamRolePermissionsBoundary     = var.CECC_CodebuildRolePermissionsBoundary
  projectName                    = var.projectName
  creator                        = var.creator
  deployedDate                   = var.deployedDate
}

module "codebuildPolicy" {
  source = "../../aws/iam/genericIamPolicy"

  awsRegion            = var.awsRegion
  iamPolicyDescription = var.CECC_CodebuildPolicyDescription
  iamPolicyNamePrefix  = var.CECC_CodebuildPolicyNamePrefix
  resourceName         = "${module.codebuildRole.iamRoleName}-codebuild"
  iamPolicyPath        = var.CECC_CodebuildPolicyPath
  iamPolicyVersion     = var.CECC_CodebuildPolicyVersion
  iamPolicyDocumentStatements =  concat([
    {
      Action = [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ]
      Effect = "Allow"
      Resource = [
        "${module.logGroup.logGroupArn}*"
      ]
      Sid = "codebuildLogs"
    },
    {
      Action = [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation",
        "s3:PutBucketAcl"
      ]
      Effect = "Allow"
      Resource = [
        "arn:aws:s3:::codepipeline-us-east-1-*"
      ]
      Sid = "s3Access"
    },
    {
      Action = [
        "codebuild:CreateReportGroup",
        "codebuild:CreateReport",
        "codebuild:UpdateReport",
        "codebuild:BatchPutTestCases",
        "codebuild:BatchPutCodeCoverages"
      ]
      Effect = "Allow"
      Resource = [
        "arn:aws:codebuild:${var.awsRegion}:${var.awsAccountId}:report-group/${module.codebuildProject.codebuildProjectName}*"
      ]
      Sid = "codebuildReports"
    }
  ], var.CECC_CodebuildPolicyDocumentAdditionalStatements)
  projectName    = var.projectName
  creator        = var.creator
  deployedDate   = var.deployedDate
  additionalTags = var.additionalTags
}

module "logGroup" {
  source = "../../aws/cloudwatch/genericLogGroup"

  resourceName            = "${var.resourceName}-codebuild"
  logGroupNamePrefix      = var.CECC_LogGroupNamePrefix
  logGroupSkipDestroy     = var.CECC_LogGroupSkipDestroy
  logGroupClass           = var.CECC_LogGroupClass
  logGroupRetentionInDays = var.CECC_LogGroupRetentionInDays
  logGroupKmsKeyId        = var.CECC_LogGroupKmsKeyId
  projectName             = var.projectName
  creator                 = var.creator
  deployedDate            = var.deployedDate
  additionalTags          = var.additionalTags
}

module "codebuildPolicyAttatch" {
  source = "../../aws/iam/genericIamRolePolicyAttachment"

  awsRegion                 = var.awsRegion
  policyAttachmentRoleName  = module.codebuildRole.iamRoleName
  policyAttachmentPolicyArn = module.codebuildPolicy.iamPolicyArn
}

module "ecrAccessPolicy" {
  source = "../../aws/iam/genericIamPolicy"

  awsRegion            = var.awsRegion
  iamPolicyDescription = var.CECC_EcrAccessPolicyDescription
  iamPolicyNamePrefix  = var.CECC_EcrAccessPolicyNamePrefix
  resourceName         = "${module.codebuildRole.iamRoleName}-ecr-access"
  iamPolicyPath        = var.CECC_EcrAccessPolicyPath
  iamPolicyVersion     = var.CECC_EcrAccessPolicyVersion
  iamPolicyDocumentStatements = concat([
    {
      Action = [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability",
        "ecr:PutImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload"
      ]
      Effect   = "Allow"
      Resource = [module.ecrRepository.ecrRepositoryArn]
      Sid      = "ecrRepo"
    },
    {
      Action = [
        "ecr:DescribeRegistry",
        "ecr:DescribeImages",
        "ecr:ListImages",
        "ecr:GetAuthorizationToken"
      ]
      Effect   = "Allow"
      Resource = ["*"]
      Sid      = "EcrAuthToken"
    }
  ], var.CECC_EcrAccessPolicyDocumentAdditionalStatements)
  projectName    = var.projectName
  creator        = var.creator
  deployedDate   = var.deployedDate
  additionalTags = var.additionalTags
}

module "ecrAccessPolicyAttatch" {
  source = "../../aws/iam/genericIamRolePolicyAttachment"

  awsRegion                 = var.awsRegion
  policyAttachmentRoleName  = module.codebuildRole.iamRoleName
  policyAttachmentPolicyArn = module.ecrAccessPolicy.iamPolicyArn
}