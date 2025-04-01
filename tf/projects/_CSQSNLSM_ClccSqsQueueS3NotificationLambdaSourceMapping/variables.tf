variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

variable "projectName" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

variable "awsAccountId" {
  type    = string
  default = "us-east1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository#argument-reference

variable "CSQSNLSM_CLCC_CECC_EcrRepositoryEncryptionConfiguration" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository#encryption_configuration
  type = object({
    encryption_type = optional(string, null)
    kms_key         = optional(string, null)
  })
  default = null
}

variable "CSQSNLSM_CLCC_CECC_EcrRepositoryForceDelete" {
  type    = bool
  default = null
}

variable "CSQSNLSM_CLCC_CECC_EcrRepositoryImageTagMutability" {
  type = string
  validation {
    condition = var.CSQSNLSM_CLCC_CECC_EcrRepositoryImageTagMutability == null || can(contains([
      "MUTABLE  IMMUTABLE"
    ], var.CSQSNLSM_CLCC_CECC_EcrRepositoryImageTagMutability))
    error_message = "Valid inputs for | variable: var.CSQSNLSM_CLCC_CECC_EcrRepositoryImageTagMutability | are: MUTABLE or IMMUTABLE"
  }
  default = null
}

variable "CSQSNLSM_CLCC_CECC_EcrRepositoryImageScanningConfiguration" {
  type = object({
    scan_on_push = bool
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#argument-reference

##https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#artifacts
variable "CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsIdentifier" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsBucketOwnerAccess" {
  type = string
  validation {
    condition = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsBucketOwnerAccess == null || can(contains([
      "NONE",
      "READ_ONLY",
      "FULL"
    ], var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsBucketOwnerAccess))
    error_message = "Valid inputs for | variable: var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsBucketOwnerAccess | are: NONE, READ_ONLY, and FULL"
  }
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsEncryptionDisabled" {
  type    = bool
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsLocation" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsName" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsNamespaceType" {
  type = string
  validation {
    condition = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsNamespaceType == null || can(contains([
      "BUILD_ID",
      "NONE"
    ], var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsNamespaceType))
    error_message = "Valid inputs for | variable: var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsNamespaceType | are: BUILD_ID, NONE"
  }
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsOverrideArtifactName" {
  type    = bool
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsPackaging" {
  type = string
  validation {
    condition = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsPackaging == null || can(contains([
      "NONE",
      "ZIP"
    ], var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsPackaging))
    error_message = "Valid inputs for | variable: var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsPackaging | are: NONE, ZIP"
  }
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsPath" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsType" {
  type = string
  validation {
    condition = contains([
      "CODEPIPELINE",
      "NO_ARTIFACTS",
      "S3"
    ], var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsType)
    error_message = "Valid inputs for | variable: var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsType | are: CODEPIPELINE, NO_ARTIFACTS, S3"
  }
}


#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#environment

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentCertificate" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentComputeType" {
  type = string
  validation {
    condition = contains([
      "BUILD_GENERAL1_SMALL",
      "BUILD_GENERAL1_MEDIUM",
      "BUILD_GENERAL1_LARGE",
      "BUILD_GENERAL1_2XLARGE",
      "BUILD_LAMBDA_1GB",
      "BUILD_LAMBDA_2GB",
      "BUILD_LAMBDA_4GB",
      "BUILD_LAMBDA_8GB",
      "BUILD_LAMBDA_10GB"
    ], var.CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentComputeType)
    error_message = "Valid inputs for | variable: var.CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentComputeType | are: BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_2XLARGE, BUILD_LAMBDA_1GB, BUILD_LAMBDA_2GB, BUILD_LAMBDA_4GB, BUILD_LAMBDA_8GB, BUILD_LAMBDA_10GB"
  }
}

# variable "CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentFleet" {
#   type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#fleet_arn-1
#     fleet_arn = optional(string, null)
#   })
#   default = null
# }

variable "codebuildProjectEcrRepoImageTag" {
  type    = string
  default = "latest"
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentEnvironmentVariable" {
  type = map(object({
    name  = string
    type  = optional(string, null)
    value = string
  }))
  default = {}
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentImagePullCredentialsType" {
  type = string
  validation {
    condition = var.CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentImagePullCredentialsType == null || can(contains([
      "CODEBUILD",
      "SERVICE_ROLE"
    ], var.CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentImagePullCredentialsType))
    error_message = "Valid inputs for | variable: var.CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentImagePullCredentialsType | are: CODEBUILD, SERVICE_ROLE"
  }
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentImage" { #https://docs.aws.amazon.com/pdfs/codebuild/latest/userguide/codebuild-user.pdf#build-env-ref-available
  type = string
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentPrivilegedMode" {
  type    = bool
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentRegistryCredential" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#credential-1
    credential          = string
    credential_provider = string
  })
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentType" {
  type = string
  validation {
    condition = contains([
      "LINUX_CONTAINER",
      "LINUX_GPU_CONTAINER",
      "WINDOWS_SERVER_2019_CONTAINER",
      "ARM_CONTAINER",
      "LINUX_LAMBDA_CONTAINER"
    ], var.CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentType)
    error_message = "Valid inputs for | variable: var.CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentType | are: LINUX_CONTAINER, LINUX_GPU_CONTAINER, WINDOWS_SERVER_2019_CONTAINER, ARM_CONTAINER, LINUX_LAMBDA_CONTAINER"
  }
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#source
variable "CSQSNLSM_CLCC_CECC_CodebuildProjectSourceBuildspec" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectSourceGitCloneDepth" {
  type    = number
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectSourceGitSubmodulesConfig" {
  type = object({
    fetch_submodules = bool
  })
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectSourceInsecureSsl" {
  type    = bool
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectSourceLocation" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectSourceReportBuildStatus" {
  type    = bool
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectSourceBuildStatusConfig" {
  type = object({
    context    = optional(string, null)
    target_url = optional(string, null)
  })
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectSourceType" {
  type = string
  validation {
    condition = contains([
      "BITBUCKET",
      "CODECOMMIT",
      "CODEPIPELINE",
      "GITHUB",
      "GITHUB_ENTERPRISE",
      "GITLAB",
      "GITLAB_SELF_MANAGED",
      "NO_SOURCE",
      "S3"
    ], var.CSQSNLSM_CLCC_CECC_CodebuildProjectSourceType)
    error_message = "Valid inputs for | variable: var.CSQSNLSM_CLCC_CECC_CodebuildProjectSourceType | are: BITBUCKET, CODECOMMIT, CODEPIPELINE, GITHUB, GITHUB_ENTERPRISE, GITLAB, GITLAB_SELF_MANAGED, NO_SOURCE, S3"
  }
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectBadgeEnabled" {
  type    = bool
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectBuildBatchConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#build_batch_config
  type = object({
    combine_artifacts = optional(bool, null)

    restrictions = optional(object({
      compute_types_allowed  = optional(list(string), null)
      maximum_builds_allowed = optional(number, null)
    }), null)

    service_role    = string
    timeout_in_mins = optional(number, null)
  })
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectBuildTimeout" {
  type = number
  validation {
    condition     = var.CSQSNLSM_CLCC_CECC_CodebuildProjectBuildTimeout == null || can(var.CSQSNLSM_CLCC_CECC_CodebuildProjectBuildTimeout >= 5 && var.CSQSNLSM_CLCC_CECC_CodebuildProjectBuildTimeout <= 2160)
    error_message = "var.CSQSNLSM_CLCC_CECC_CodebuildProjectBuildTimeout must be Greater than or Equal to 5 AND Less Than or Equal to 2160"
  }
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectCache" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#cache
  type = object({
    location = optional(string, null)
    modes    = optional(string, null)
    type     = optional(string, null)
  })
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectConcurrentBuildLimit" {
  type = number
  validation {
    condition     = var.CSQSNLSM_CLCC_CECC_CodebuildProjectConcurrentBuildLimit == null || can(var.CSQSNLSM_CLCC_CECC_CodebuildProjectConcurrentBuildLimit >= 0 && var.CSQSNLSM_CLCC_CECC_CodebuildProjectConcurrentBuildLimit <= 20)
    error_message = "var.CSQSNLSM_CLCC_CECC_CodebuildProjectConcurrentBuildLimit must be Greater than or Equal to 0 AND Less Than or Equal to 20"
  }
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectDescription" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectFileSystemLocations" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#file_system_locations
  type = object({
    identifier    = optional(string, null)
    location      = optional(string, null)
    mount_options = optional(string, null)
    mount_point   = optional(string, null)
    type          = optional(string, null)
  })
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectEncryptionKey" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectCloudwatchLogsStatus" {
  type = string
  validation {
    condition = var.CSQSNLSM_CLCC_CECC_CodebuildProjectCloudwatchLogsStatus == null || can(contains([
      "ENABLED",
      "DISABLED"
    ], var.CSQSNLSM_CLCC_CECC_CodebuildProjectCloudwatchLogsStatus))
    error_message = "Valid inputs for | variable: var.CSQSNLSM_CLCC_CECC_CodebuildProjectCloudwatchLogsStatus | are: ENABLED, DISABLED"
  }
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectVisibility" {
  type = string
  validation {
    condition = var.CSQSNLSM_CLCC_CECC_CodebuildProjectVisibility == null || can(contains([
      "PUBLIC_READ",
      "PRIVATE"
    ], var.CSQSNLSM_CLCC_CECC_CodebuildProjectVisibility))
    error_message = "Valid inputs for | variable: var.CSQSNLSM_CLCC_CECC_CodebuildProjectVisibility | are: PUBLIC_READ, and PRIVATE"
  }
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectResourceAccessRole" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectQueuedTimeout" {
  type = number
  validation {
    condition     = var.CSQSNLSM_CLCC_CECC_CodebuildProjectQueuedTimeout == null || can(var.CSQSNLSM_CLCC_CECC_CodebuildProjectQueuedTimeout >= 5 && var.CSQSNLSM_CLCC_CECC_CodebuildProjectQueuedTimeout <= 480)
    error_message = "var.CSQSNLSM_CLCC_CECC_CodebuildProjectQueuedTimeout must be Greater than or Equal to 5 AND Less Than or Equal to 480"
  }
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectSecondaryArtifacts" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#secondary_artifacts
  type = object({
    artifact_identifier    = string
    bucket_owner_access    = optional(string, null)
    encryption_disabled    = optional(bool, null)
    location               = optional(string, null)
    name                   = optional(string, null)
    namespace_type         = optional(string, null)
    override_artifact_name = optional(bool, null)
    packaging              = optional(string, null)
    path                   = optional(string, null)
    type                   = string
  })
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectSecondarySources" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#secondary_sources
  type = object({
    buildspec       = optional(string, null)
    git_clone_depth = optional(number, null)

    git_submodules_config = optional(object({
      fetch_submodules = bool
    }), null)

    insecure_ssl        = optional(bool, null)
    location            = optional(string, null)
    report_build_status = optional(bool, null)

    build_status_config = optional(object({
      context    = optional(string, null)
      target_url = optional(string, null)
    }), null)

    source_identifier = string
    type              = string
  })
  default = null
}


variable "CSQSNLSM_CLCC_CECC_CodebuildProjectSecondarySourceVersion" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#secondary_source_version
  type = object({
    source_identifier = string
    source_version    = string
  })
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildProjectSourceVersion" {
  type    = string
  default = null
}


variable "CSQSNLSM_CLCC_CECC_CodebuildProjectVpcConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#vpc_config
  type = object({
    security_group_ids = list(string)
    subnets            = list(string)
    vpc_id             = string
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_source_credential#argument-reference
variable "CSQSNLSM_CLCC_CECC_CodebuildCredentialsAuthType" {
  type = string
  validation {
    condition = contains([
      "OAUTH",
      "BASIC_AUTH",
      "PERSONAL_ACCESS_TOKEN",
      "CODECONNECTIONS",
      "SECRETS_MANAGER"
    ], var.CSQSNLSM_CLCC_CECC_CodebuildCredentialsAuthType)
    error_message = "Valid inputs for | variable: var.CSQSNLSM_CLCC_CECC_CodebuildCredentialsAuthType | are: OAUTH, BASIC_AUTH, PERSONAL_ACCESS_TOKEN, CODECONNECTIONS, SECRETS_MANAGER"
  }
}

variable "CSQSNLSM_CLCC_CECC_CodebuildCredentialsServerType" {
  type = string
}

variable "CSQSNLSM_CLCC_CECC_CodebuildCredentialsToken" {
  type = string
}

variable "CSQSNLSM_CLCC_CECC_CodebuildCredentialsUserName" {
  type    = string
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_CSQSNLSM_CLCC_CECC_CodebuildWebhook#argument-reference

variable "CSQSNLSM_CLCC_CECC_CodebuildWebhookBuildType" {
  type = string
  validation {
    condition = var.CSQSNLSM_CLCC_CECC_CodebuildWebhookBuildType == null || can(contains([
      "BUILD",
      "BUILD_BATCH"
    ], var.CSQSNLSM_CLCC_CECC_CodebuildWebhookBuildType))
    error_message = "Valid inputs for | variable: var.CSQSNLSM_CLCC_CECC_CodebuildWebhookBuildType | are: BUILD, BUILD_BATCH"
  }
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildWebhookBranchFilter" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildWebhookFilterGroup" {
  type = object({
    filter = map(object({
      type                    = string
      pattern                 = string
      exclude_matched_pattern = optional(bool, null)
    }))
  })
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildWebhookScopeConfiguration" {
  type = object({
    name   = string
    scope  = string
    domain = optional(string, null)
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role#argument-reference
variable "CSQSNLSM_CLCC_CECC_CodebuildRoleAssumeRolePolicyVersion" {
  type    = string
  default = "2012-10-17"
}

variable "CSQSNLSM_CLCC_CECC_CodebuildRoleAssumeRolePolicy" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
}

variable "CSQSNLSM_CLCC_CECC_CodebuildRoleDescription" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildRoleForceDetatchPolicies" {
  type    = bool
  default = false
}

variable "CSQSNLSM_CLCC_CECC_CodebuildRoleMaxSessionDuration" {
  type = number
  validation {
    condition     = var.CSQSNLSM_CLCC_CECC_CodebuildRoleMaxSessionDuration >= 3600 && var.CSQSNLSM_CLCC_CECC_CodebuildRoleMaxSessionDuration <= 43200
    error_message = "Variable CSQSNLSM_CLCC_CECC_CodebuildRoleMaxSessionDuration must be greater than or equal to 3600 and less than or equal to 43200"
  }
  default = 3600
}

variable "CSQSNLSM_CLCC_CECC_CodebuildRoleNamePrefix" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildRolePath" {
  type    = string
  default = "/"
}

variable "CSQSNLSM_CLCC_CECC_CodebuildRolePermissionsBoundary" {
  type    = string
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "CSQSNLSM_CLCC_CECC_CodebuildRolePolicyDescription" {
  type    = string
  default = null
}
variable "CSQSNLSM_CLCC_CECC_CodebuildRolePolicyNamePrefix" {
  type    = string
  default = null
}
variable "CSQSNLSM_CLCC_CECC_CodebuildRolePolicyPath" {
  type    = string
  default = "/"
}
variable "CSQSNLSM_CLCC_CECC_CodebuildRolePolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "CSQSNLSM_CLCC_CECC_CodebuildRolePolicyDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
  default = []
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group#argument-reference


variable "CSQSNLSM_CLCC_CECC_CodebuildLogGroupNamePrefix" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildLogGroupSkipDestroy" {
  type    = bool
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildLogGroupClass" {
  type = string
  validation {
    condition = var.CSQSNLSM_CLCC_CECC_CodebuildLogGroupClass == null || can(contains([
      "STANDARD",
      "INFREQUENT_ACCESS"
    ], var.CSQSNLSM_CLCC_CECC_CodebuildLogGroupClass))
    error_message = "Valid inputs for | variable: var.CSQSNLSM_CLCC_CECC_CodebuildLogGroupClass | are: STANDARD, or INFREQUENT_ACCESS"
  }
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildLogGroupRetentionInDays" {
  type = number
  validation {
    condition = var.CSQSNLSM_CLCC_CECC_CodebuildLogGroupRetentionInDays == null || can(contains([
      1,
      3,
      5,
      7,
      14,
      30,
      60,
      90,
      120,
      150,
      180,
      365,
      400,
      545,
      731,
      1096,
      1827,
      2192,
      2557,
      2922,
      3288,
      3653,
      0
    ], var.CSQSNLSM_CLCC_CECC_CodebuildLogGroupRetentionInDays))
    error_message = "Valid inputs for | variable: var.CSQSNLSM_CLCC_CECC_CodebuildLogGroupRetentionInDays | are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, 3653, and 0"
  }
  default = null
}

variable "CSQSNLSM_CLCC_CECC_CodebuildLogGroupKmsKeyId" {
  type    = string
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment#argument-reference



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "CSQSNLSM_CLCC_CECC_CodebuildRoleEcrPolicyDescription" {
  type    = string
  default = null
}
variable "CSQSNLSM_CLCC_CECC_CodebuildRoleEcrPolicyNamePrefix" {
  type    = string
  default = null
}
variable "CSQSNLSM_CLCC_CECC_CodebuildRoleEcrPolicyPath" {
  type    = string
  default = "/"
}
variable "CSQSNLSM_CLCC_CECC_CodebuildRoleEcrPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "CSQSNLSM_CLCC_CECC_CodebuildRoleEcrPolicyDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
  default = []
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment#argument-reference





#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#argument-reference

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionArchitectures" {
  type    = list(string)
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionCodeSigningConfigArn" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionDeadLetterConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#dead_letter_config
  type = object({
    target_arn = string
  })
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionDescription" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionEnvironmentVariables" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#environment
  type    = map(string)
  default = {}
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionEphemeralStorage" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#ephemeral_storage
  type = object({
    size = number
  })
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionFileSystemConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#file_system_config
  type = object({
    arn              = string
    local_mount_path = string
  })
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionFilename" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionHandler" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionImageConfig" {
  type = object({
    command           = optional(string, null)
    entry_point       = optional(string, null)
    working_directory = optional(string, null)
  })
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionImageUri" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionKmsKeyArn" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionLayers" {
  type    = list(string)
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionLoggingConfig" {
  type = object({
    application_log_level = optional(string, null)
    system_log_level      = optional(string, null)
  })
  default = {}
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionMemorySize" {
  type = number
  validation {
    condition     = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionMemorySize == null || can(var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionMemorySize >= 128 && var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionMemorySize <= 10240)
    error_message = "var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionMemorySize must be Greater than or Equal to 128 AND Less Than or Equal to 10240"
  }
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionPackageType" {
  type = string
  validation {
    condition = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionPackageType == null || can(contains([
      "Zip",
      "Image"
    ], var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionPackageType))
    error_message = "Valid inputs for | variable: var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionPackageType | are: Zip, Image"
  }
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionPublish" {
  type    = bool
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionReservedConcurrentExecutions" {
  type    = number
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionReplaceSecurityGroupsOnDestroy" {
  type    = bool
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionReplacementSecurityGroupIds" {
  type    = list(string)
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRuntime" {
  type = string
  validation {
    condition = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRuntime == null || can(contains([
      "nodejs",
      "nodejs4.3",
      "nodejs6.10",
      "nodejs8.10",
      "nodejs10.x",
      "nodejs12.x",
      "nodejs14.x",
      "nodejs16.x",
      "java8",
      "java8.al2",
      "java11",
      "python2.7",
      "python3.6",
      "python3.7",
      "python3.8",
      "python3.9",
      "dotnetce1.0",
      "dotnetce2.0",
      "dotnetce2.1",
      "dotnetce3.1",
      "dotnet6",
      "dotnet8",
      "nodejs4.3-edge",
      "go1.x",
      "ruby2.5",
      "ruby2.7",
      "provided",
      "provided.al2",
      "nodejs18.x",
      "python3.10",
      "java17",
      "ruby3.2",
      "ruby3.3",
      "python3.11",
      "nodejs20.x",
      "provided.al2023",
      "python3.12",
      "java21",
      "python3.13",
      "nodejs22.x"
    ], var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRuntime))
    error_message = "Valid inputs for | variable: var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRuntime | are: nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, nodejs16.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, python3.9, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, dotnet6, dotnet8, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2, nodejs18.x, python3.10, java17, ruby3.2, ruby3.3, python3.11, nodejs20.x, provided.al2023, python3.12, java21, python3.13, nodejs22.x"
  }
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionS3Bucket" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionS3Key" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionS3ObjectVersion" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionSkipDestroy" {
  type    = bool
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionSourceCodeHash" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionSnapStart" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#snap_start
  type = object({
    apply_on = string
  })
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionTimeout" {
  type = number
  validation {
    condition     = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionTimeout == null || can(var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionTimeout >= 3 && var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionTimeout <= 900)
    error_message = "var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionTimeout must be Greater than or Equal to 3 AND Less Than or Equal to 900"
  }
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionTracingConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#tracing_config
  type = object({
    mode = string
  })
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionVpcConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#vpc_config
  type = object({
    ipv6_allowed_for_dual_stack = optional(bool, null)
    security_group_ids          = list(string)
    subnet_ids                  = list(string)
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role#argument-reference
variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRoleAssumeRolePolicyVersion" {
  type    = string
  default = "2012-10-17"
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRoleAssumeRolePolicy" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
  default = []
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRoleDescription" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRoleForceDetatchPolicies" {
  type    = bool
  default = false
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRoleMaxSessionDuration" {
  type = number
  validation {
    condition     = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRoleMaxSessionDuration >= 3600 && var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRoleMaxSessionDuration <= 43200
    error_message = "Variable CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRoleMaxSessionDuration must be greater than or equal to 3600 and less than or equal to 43200"
  }
  default = 3600
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRoleNamePrefix" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRolePath" {
  type    = string
  default = "/"
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRolePermissionsBoundary" {
  type    = string
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaGenericPolicyDescription" {
  type    = string
  default = null
}
variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaGenericPolicyNamePrefix" {
  type    = string
  default = null
}
variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaGenericPolicyPath" {
  type    = string
  default = "/"
}
variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaGenericPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaGenericPolicyDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
  default = []
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment#argument-reference



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretsmanager_CSQSNLSM_CLCC_LFWLGSAR_LambdaSecret#argument-reference

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretDescription" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretKmsKeyId" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretNamePrefix" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretPolicy" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretForceSecretOverwrite" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretVersionSecretString" {
  type    = map(string)
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretVersionStages" {
  type    = list(string)
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretPolicyDescription" {
  type    = string
  default = null
}
variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretPolicyNamePrefix" {
  type    = string
  default = null
}
variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretPolicyPath" {
  type    = string
  default = "/"
}
variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretPolicyDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
  default = []
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment#argument-reference



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group#argument-reference


variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaLogGroupNamePrefix" {
  type    = string
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaLogGroupSkipDestroy" {
  type    = bool
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaLogGroupClass" {
  type = string
  validation {
    condition = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaLogGroupClass == null || can(contains([
      "STANDARD",
      "INFREQUENT_ACCESS"
    ], var.CSQSNLSM_CLCC_LFWLGSAR_LambdaLogGroupClass))
    error_message = "Valid inputs for | variable: var.CSQSNLSM_CLCC_LFWLGSAR_LambdaLogGroupClass | are: STANDARD, or INFREQUENT_ACCESS"
  }
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaLogGroupRetentionInDays" {
  type = number
  validation {
    condition = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaLogGroupRetentionInDays == null || can(contains([
      1,
      3,
      5,
      7,
      14,
      30,
      60,
      90,
      120,
      150,
      180,
      365,
      400,
      545,
      731,
      1096,
      1827,
      2192,
      2557,
      2922,
      3288,
      3653,
      0
    ], var.CSQSNLSM_CLCC_LFWLGSAR_LambdaLogGroupRetentionInDays))
    error_message = "Valid inputs for | variable: var.CSQSNLSM_CLCC_LFWLGSAR_LambdaLogGroupRetentionInDays | are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, 3653, and 0"
  }
  default = null
}

variable "CSQSNLSM_CLCC_LFWLGSAR_LambdaLogGroupKmsKeyId" {
  type    = string
  default = null
}





#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "CSQSNLSM_CLCC_IamPolicyUpdateLambdaDescription" {
  type    = string
  default = null
}
variable "CSQSNLSM_CLCC_IamPolicyUpdateLambdaNamePrefix" {
  type    = string
  default = null
}
variable "CSQSNLSM_CLCC_IamPolicyUpdateLambdaPath" {
  type    = string
  default = "/"
}
variable "CSQSNLSM_CLCC_IamPolicyUpdateLambdaVersion" {
  type    = string
  default = "2012-10-17"
}
variable "CSQSNLSM_CLCC_IamPolicyUpdateLambdaDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
  default = []
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment#argument-reference



#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_CSQSNLSM_QueueS3#argument-reference

variable "CSQSNLSM_QueueS3ContentBasedDeduplication" {
  type    = bool
  default = null
}

variable "CSQSNLSM_QueueS3DeduplicationScope" {
  type = string
  validation {
    condition = var.CSQSNLSM_QueueS3DeduplicationScope == null || can(contains([
      "messageGroup",
      "CSQSNLSM_QueueS3"
    ], var.CSQSNLSM_QueueS3DeduplicationScope))
    error_message = "Valid inputs for | variable: var.CSQSNLSM_QueueS3DeduplicationScope | are: messageGroup , CSQSNLSM_QueueS3"
  }
  default = null
}

variable "CSQSNLSM_QueueS3DelaySeconds" {
  type = number
  validation {
    condition     = var.CSQSNLSM_QueueS3DelaySeconds == null || can(var.CSQSNLSM_QueueS3DelaySeconds >= 0 && var.CSQSNLSM_QueueS3DelaySeconds <= 900)
    error_message = "var.CSQSNLSM_QueueS3DelaySeconds must be Greater than or Equal to 0 AND Less Than or Equal to 900"
  }
  default = null
}

variable "CSQSNLSM_QueueS3FifoQueue" {
  type    = bool
  default = null
}

variable "CSQSNLSM_QueueS3FifoThroughputLimit" {
  type = string
  validation {
    condition = var.CSQSNLSM_QueueS3FifoThroughputLimit == null || can(contains([
      "perQueue",
      "perMessageGroupId"
    ], var.CSQSNLSM_QueueS3FifoThroughputLimit))
    error_message = "Valid inputs for | variable: var.CSQSNLSM_QueueS3FifoThroughputLimit | are: perQueue , perMessageGroupId"
  }
  default = null
}

variable "CSQSNLSM_QueueS3KmsDataKeyReusePeriodSeconds" {
  type = number
  validation {
    condition     = var.CSQSNLSM_QueueS3KmsDataKeyReusePeriodSeconds == null || can(var.CSQSNLSM_QueueS3KmsDataKeyReusePeriodSeconds >= 60 && var.CSQSNLSM_QueueS3KmsDataKeyReusePeriodSeconds <= 86400)
    error_message = "var.CSQSNLSM_QueueS3KmsDataKeyReusePeriodSeconds must be Greater than or Equal to 60 AND Less Than or Equal to 86400"
  }
  default = null
}

variable "CSQSNLSM_QueueS3KmsMasterKeyId" {
  type    = string
  default = null
}

variable "CSQSNLSM_QueueS3MaxMessageSize" {
  type = number
  validation {
    condition     = var.CSQSNLSM_QueueS3MaxMessageSize == null || can(var.CSQSNLSM_QueueS3MaxMessageSize >= 1024 && var.CSQSNLSM_QueueS3MaxMessageSize <= 262144)
    error_message = "var.CSQSNLSM_QueueS3MaxMessageSize must be Greater than or Equal to 1024 AND Less Than or Equal to 262144"
  }
  default = null
}

variable "CSQSNLSM_QueueS3MessageRetentionSeconds" {
  type = number
  validation {
    condition     = var.CSQSNLSM_QueueS3MessageRetentionSeconds == null || can(var.CSQSNLSM_QueueS3MessageRetentionSeconds >= 60 && var.CSQSNLSM_QueueS3MessageRetentionSeconds <= 1209600)
    error_message = "var.CSQSNLSM_QueueS3MessageRetentionSeconds must be Greater than or Equal to 60 AND Less Than or Equal to 1209600"
  }
  default = null
}

variable "CSQSNLSM_QueueS3Name" {
  type    = string
  default = null
}

variable "CSQSNLSM_QueueS3PolicyDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = map(list(string))
  }))
  default = []
}

variable "CSQSNLSM_QueueS3RecieveWaitTimeSeconds" {
  type = number
  validation {
    condition     = var.CSQSNLSM_QueueS3RecieveWaitTimeSeconds == null || can(var.CSQSNLSM_QueueS3RecieveWaitTimeSeconds >= 0 && var.CSQSNLSM_QueueS3RecieveWaitTimeSeconds <= 20)
    error_message = "var.CSQSNLSM_QueueS3RecieveWaitTimeSeconds must be Greater than or Equal to 0 AND Less Than or Equal to 20"
  }
  default = null
}

variable "CSQSNLSM_QueueS3RedriveAllowPolicy" {
  type    = string
  default = null
}

variable "CSQSNLSM_QueueS3RedrivePolicy" {
  type    = string
  default = null
}

variable "CSQSNLSM_QueueS3SqsManagedSseEnabled" {
  type    = bool
  default = null
}

variable "CSQSNLSM_QueueS3VisibilityTimeoutSeconds" {
  type = number
  validation {
    condition     = var.CSQSNLSM_QueueS3VisibilityTimeoutSeconds == null || can(var.CSQSNLSM_QueueS3VisibilityTimeoutSeconds >= 0 && var.CSQSNLSM_QueueS3VisibilityTimeoutSeconds <= 43200)
    error_message = "var.CSQSNLSM_QueueS3VisibilityTimeoutSeconds must be Greater than or Equal to 0 AND Less Than or Equal to 43200"
  }
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue_policy#argument-reference

variable "CSQSNLSM_QueuePolicyS3AccessBucket" {
  type = string
}
variable "CSQSNLSM_QueuePolicyS3AccessDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = map(list(string))
  }))
  default = []
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_notification#argument-reference

variable "CSQSNLSM_BucketNotificationToQueueBucket" {
  type = string
}

variable "CSQSNLSM_BucketNotificationToQueueEvents" {
  type    = list(string)
  default = []
}

variable "CSQSNLSM_BucketNotificationToQueueQueue" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_notification#queue
  type = object({
    filter_prefix = optional(string, null)
    filter_suffix = optional(string, null)
    id            = optional(string, null)
  })
  default = {}
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#argument-reference

variable "CSQSNLSM_EventSourceMappingToQueueAmazonManagedKafkaEventSourceConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#amazon_managed_kafka_event_source_config-configuration-block
  type = object({
    consumer_group_id = optional(string, null)
  })
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueBatchSize" {
  type    = number
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueBisectBatchOnFunctionError" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#amazon_managed_kafka_event_source_config-configuration-block
  type    = bool
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueDestinationConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#destination_config-configuration-block
  type = object({
    on_failure = optional(object({
      destination_arn = string
    }), null)
  })
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueDocumentDbEventSourceConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#document_db_event_source_config-configuration-block
  type = object({
    collection_name = optional(string, null)
    database_name   = string
    full_document   = optional(string, null)
  })
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueEnabled" {
  type    = bool
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueFilterCriteria" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#filter_criteria-configuration-block
  type = object({
    filter = optional(object({
      pattern = optional(string, null)
    }), null)
  })
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueFunctionResponseTypes" {
  type    = list(string)
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueKmsKeyArn" {
  type    = string
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueMaximumBatchingWindowInSeconds" {
  type = number
  validation {
    condition     = var.CSQSNLSM_EventSourceMappingToQueueMaximumBatchingWindowInSeconds == null || var.CSQSNLSM_EventSourceMappingToQueueMaximumBatchingWindowInSeconds == -1 || can(var.CSQSNLSM_EventSourceMappingToQueueMaximumBatchingWindowInSeconds >= 60 && var.CSQSNLSM_EventSourceMappingToQueueMaximumBatchingWindowInSeconds <= 604800)
    error_message = "var.CSQSNLSM_EventSourceMappingToQueueMaximumBatchingWindowInSeconds must be Greater than or Equal to 60 AND Less Than or Equal to 604800"
  }
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueMaximumRecordAgeInSeconds" {
  type = number
  validation {
    condition     = var.CSQSNLSM_EventSourceMappingToQueueMaximumRecordAgeInSeconds == null || var.CSQSNLSM_EventSourceMappingToQueueMaximumRecordAgeInSeconds == -1 || can(var.CSQSNLSM_EventSourceMappingToQueueMaximumRecordAgeInSeconds >= 60 && var.CSQSNLSM_EventSourceMappingToQueueMaximumRecordAgeInSeconds <= 604800)
    error_message = "var.CSQSNLSM_EventSourceMappingToQueueMaximumRecordAgeInSeconds must be Greater than or Equal to 60 AND Less Than or Equal to 604800"
  }
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueMaximumRetryAttempts" {
  type = number
  validation {
    condition     = var.CSQSNLSM_EventSourceMappingToQueueMaximumRetryAttempts == null || can(var.CSQSNLSM_EventSourceMappingToQueueMaximumRetryAttempts >= -1 && var.CSQSNLSM_EventSourceMappingToQueueMaximumRetryAttempts <= 10000)
    error_message = "var.CSQSNLSM_EventSourceMappingToQueueMaximumRetryAttempts must be Greater than or Equal to -1 AND Less Than or Equal to 10000"
  }
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueMetricsConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#metrics_config-configuration-block
  type = object({
    metrics = list(string)
  })
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueParallelizationFactor" {
  type = number
  validation {
    condition     = var.CSQSNLSM_EventSourceMappingToQueueParallelizationFactor == null || can(var.CSQSNLSM_EventSourceMappingToQueueParallelizationFactor >= 1 && var.CSQSNLSM_EventSourceMappingToQueueParallelizationFactor <= 10)
    error_message = "var.CSQSNLSM_EventSourceMappingToQueueParallelizationFactor must be Greater than or Equal to 1 AND Less Than or Equal to 10"
  }
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueProvisionedPollerConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#provisioned_poller_config-configuration-block
  type = object({
    maximum_pollers = optional(number, null)
    minimum_pollers = optional(number, null)
  })
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueQueues" {
  type    = list(string)
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueScalingConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#scaling_config-configuration-block
  type = object({
    maximum_concurrency = optional(number, null)
  })
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueSelfManagedEventSource" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#self_managed_event_source-configuration-block
  type = object({
    endpoints = map(string)
  })
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueSelfManagedKafkaEventSourceConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#self_managed_kafka_event_source_config-configuration-block
  type = object({
    consumer_group_id = optional(string, null)
  })
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueSourceAccessConfiguration" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#source_access_configuration-configuration-block
  type = object({
    type = string
    uri  = string
  })
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueStartingPosition" {
  type = string
  validation {
    condition = var.CSQSNLSM_EventSourceMappingToQueueStartingPosition == null || can(contains([
      "AT_TIMESTAMP",
      "LATEST",
      "TRIM_HORIZON"
    ], var.CSQSNLSM_EventSourceMappingToQueueStartingPosition))
    error_message = "Valid inputs for | variable: var.CSQSNLSM_EventSourceMappingToQueueStartingPosition | are: AT_TIMESTAMP , LATEST, TRIM_HORIZON"
  }
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueStartingPositionTimestamp" {
  type    = string
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueTopics" {
  type    = list(string)
  default = null
}

variable "CSQSNLSM_EventSourceMappingToQueueTumblingWindowInSeconds" {
  type = number
  validation {
    condition     = var.CSQSNLSM_EventSourceMappingToQueueTumblingWindowInSeconds == null || can(var.CSQSNLSM_EventSourceMappingToQueueTumblingWindowInSeconds >= 1 && var.CSQSNLSM_EventSourceMappingToQueueTumblingWindowInSeconds <= 900)
    error_message = "var.CSQSNLSM_EventSourceMappingToQueueTumblingWindowInSeconds must be Greater than or Equal to 1 AND Less Than or Equal to 900"
  }
  default = null
}

#---
