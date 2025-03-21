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

variable "CECC_EcrRepositoryEncryptionConfiguration" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository#encryption_configuration
  type = object({
    encryption_type = optional(string, null)
    kms_key         = optional(string, null)
  })
  default = null
}

variable "CECC_EcrRepositoryForceDelete" {
  type    = bool
  default = null
}

variable "CECC_EcrRepositoryImageTagMutability" {
  type = string
  validation {
    condition = var.CECC_EcrRepositoryImageTagMutability == null || can(contains([
      "MUTABLE  IMMUTABLE"
    ], var.CECC_EcrRepositoryImageTagMutability))
    error_message = "Valid inputs for | variable: var.CECC_EcrRepositoryImageTagMutability | are: MUTABLE or IMMUTABLE"
  }
  default = null
}

variable "CECC_EcrRepositoryImageScanningConfiguration" {
  type = object({
    scan_on_push = bool
  })
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#argument-reference

##https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#artifacts
variable "CECC_CodebuildProjectArtifactsIdentifier" {
  type    = string
  default = null
}

variable "CECC_CodebuildProjectArtifactsBucketOwnerAccess" {
  type = string
  validation {
    condition = var.CECC_CodebuildProjectArtifactsBucketOwnerAccess == null || can(contains([
      "NONE",
      "READ_ONLY",
      "FULL"
    ], var.CECC_CodebuildProjectArtifactsBucketOwnerAccess))
    error_message = "Valid inputs for | variable: var.CECC_CodebuildProjectArtifactsBucketOwnerAccess | are: NONE, READ_ONLY, and FULL"
  }
  default = null
}

variable "CECC_CodebuildProjectArtifactsEncryptionDisabled" {
  type    = bool
  default = null
}

variable "CECC_CodebuildProjectArtifactsLocation" {
  type    = string
  default = null
}

variable "CECC_CodebuildProjectArtifactsName" {
  type    = string
  default = null
}

variable "CECC_CodebuildProjectArtifactsNamespaceType" {
  type = string
  validation {
    condition = var.CECC_CodebuildProjectArtifactsNamespaceType == null || can(contains([
      "BUILD_ID",
      "NONE"
    ], var.CECC_CodebuildProjectArtifactsNamespaceType))
    error_message = "Valid inputs for | variable: var.CECC_CodebuildProjectArtifactsNamespaceType | are: BUILD_ID, NONE"
  }
  default = null
}

variable "CECC_CodebuildProjectArtifactsOverrideArtifactName" {
  type    = bool
  default = null
}

variable "CECC_CodebuildProjectArtifactsPackaging" {
  type = string
  validation {
    condition = var.CECC_CodebuildProjectArtifactsPackaging == null || can(contains([
      "NONE",
      "ZIP"
    ], var.CECC_CodebuildProjectArtifactsPackaging))
    error_message = "Valid inputs for | variable: var.CECC_CodebuildProjectArtifactsPackaging | are: NONE, ZIP"
  }
  default = null
}

variable "CECC_CodebuildProjectArtifactsPath" {
  type    = string
  default = null
}

variable "CECC_CodebuildProjectArtifactsType" {
  type = string
  validation {
    condition = contains([
      "CODEPIPELINE",
      "NO_ARTIFACTS",
      "S3"
    ], var.CECC_CodebuildProjectArtifactsType)
    error_message = "Valid inputs for | variable: var.CECC_CodebuildProjectArtifactsType | are: CODEPIPELINE, NO_ARTIFACTS, S3"
  }
}


#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#environment

variable "CECC_CodebuildProjectEnvironmentCertificate" {
  type    = string
  default = null
}

variable "CECC_CodebuildProjectEnvironmentComputeType" {
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
    ], var.CECC_CodebuildProjectEnvironmentComputeType)
    error_message = "Valid inputs for | variable: var.CECC_CodebuildProjectEnvironmentComputeType | are: BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_2XLARGE, BUILD_LAMBDA_1GB, BUILD_LAMBDA_2GB, BUILD_LAMBDA_4GB, BUILD_LAMBDA_8GB, BUILD_LAMBDA_10GB"
  }
}

# variable "CECC_CodebuildProjectEnvironmentFleet" {
#   type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#fleet_arn-1
#     fleet_arn = optional(string, null)
#   })
#   default = null
# }

variable "codebuildProjectEcrRepoImageTag" {
  type    = string
  default = "latest"
}

variable "CECC_CodebuildProjectEnvironmentEnvironmentVariable" {
  type = map(object({
    name  = string
    type  = optional(string, null)
    value = string
  }))
  default = {}
}

variable "CECC_CodebuildProjectEnvironmentImagePullCredentialsType" {
  type = string
  validation {
    condition = var.CECC_CodebuildProjectEnvironmentImagePullCredentialsType == null || can(contains([
      "CODEBUILD",
      "SERVICE_ROLE"
    ], var.CECC_CodebuildProjectEnvironmentImagePullCredentialsType))
    error_message = "Valid inputs for | variable: var.CECC_CodebuildProjectEnvironmentImagePullCredentialsType | are: CODEBUILD, SERVICE_ROLE"
  }
  default = null
}

variable "CECC_CodebuildProjectEnvironmentImage" { #https://docs.aws.amazon.com/pdfs/codebuild/latest/userguide/codebuild-user.pdf#build-env-ref-available
  type = string
}

variable "CECC_CodebuildProjectEnvironmentPrivilegedMode" {
  type    = bool
  default = null
}

variable "CECC_CodebuildProjectEnvironmentRegistryCredential" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#credential-1
    credential          = string
    credential_provider = string
  })
  default = null
}

variable "CECC_CodebuildProjectEnvironmentType" {
  type = string
  validation {
    condition = contains([
      "LINUX_CONTAINER",
      "LINUX_GPU_CONTAINER",
      "WINDOWS_SERVER_2019_CONTAINER",
      "ARM_CONTAINER",
      "LINUX_LAMBDA_CONTAINER"
    ], var.CECC_CodebuildProjectEnvironmentType)
    error_message = "Valid inputs for | variable: var.CECC_CodebuildProjectEnvironmentType | are: LINUX_CONTAINER, LINUX_GPU_CONTAINER, WINDOWS_SERVER_2019_CONTAINER, ARM_CONTAINER, LINUX_LAMBDA_CONTAINER"
  }
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#source
variable "CECC_CodebuildProjectSourceBuildspec" {
  type    = string
  default = null
}

variable "CECC_CodebuildProjectSourceGitCloneDepth" {
  type    = number
  default = null
}

variable "CECC_CodebuildProjectSourceGitSubmodulesConfig" {
  type = object({
    fetch_submodules = bool
  })
  default = null
}

variable "CECC_CodebuildProjectSourceInsecureSsl" {
  type    = bool
  default = null
}

variable "CECC_CodebuildProjectSourceLocation" {
  type    = string
  default = null
}

variable "CECC_CodebuildProjectSourceReportBuildStatus" {
  type    = bool
  default = null
}

variable "CECC_CodebuildProjectSourceBuildStatusConfig" {
  type = object({
    context    = optional(string, null)
    target_url = optional(string, null)
  })
  default = null
}

variable "CECC_CodebuildProjectSourceType" {
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
    ], var.CECC_CodebuildProjectSourceType)
    error_message = "Valid inputs for | variable: var.CECC_CodebuildProjectSourceType | are: BITBUCKET, CODECOMMIT, CODEPIPELINE, GITHUB, GITHUB_ENTERPRISE, GITLAB, GITLAB_SELF_MANAGED, NO_SOURCE, S3"
  }
}

variable "CECC_CodebuildProjectBadgeEnabled" {
  type    = bool
  default = null
}

variable "CECC_CodebuildProjectBuildBatchConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#build_batch_config
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

variable "CECC_CodebuildProjectBuildTimeout" {
  type = number
  validation {
    condition     = var.CECC_CodebuildProjectBuildTimeout == null || can(var.CECC_CodebuildProjectBuildTimeout >= 5 && var.CECC_CodebuildProjectBuildTimeout <= 2160)
    error_message = "var.CECC_CodebuildProjectBuildTimeout must be Greater than or Equal to 5 AND Less Than or Equal to 2160"
  }
  default = null
}

variable "CECC_CodebuildProjectCache" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#cache
  type = object({
    location = optional(string, null)
    modes    = optional(string, null)
    type     = optional(string, null)
  })
  default = null
}

variable "CECC_CodebuildProjectConcurrentBuildLimit" {
  type = number
  validation {
    condition     = var.CECC_CodebuildProjectConcurrentBuildLimit == null || can(var.CECC_CodebuildProjectConcurrentBuildLimit >= 0 && var.CECC_CodebuildProjectConcurrentBuildLimit <= 20)
    error_message = "var.CECC_CodebuildProjectConcurrentBuildLimit must be Greater than or Equal to 0 AND Less Than or Equal to 20"
  }
  default = null
}

variable "CECC_CodebuildProjectDescription" {
  type    = string
  default = null
}

variable "CECC_CodebuildProjectFileSystemLocations" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#file_system_locations
  type = object({
    identifier    = optional(string, null)
    location      = optional(string, null)
    mount_options = optional(string, null)
    mount_point   = optional(string, null)
    type          = optional(string, null)
  })
  default = null
}

variable "CECC_CodebuildProjectEncryptionKey" {
  type    = string
  default = null
}

variable "CECC_CodebuildProjectCloudwatchLogsStatus" {
  type = string
  validation {
    condition = var.CECC_CodebuildProjectCloudwatchLogsStatus == null || can(contains([
    "ENABLED",
    "DISABLED"
], var.CECC_CodebuildProjectCloudwatchLogsStatus))
    error_message = "Valid inputs for | variable: var.CECC_CodebuildProjectCloudwatchLogsStatus | are: ENABLED, DISABLED"
  }
  default = null
}

variable "CECC_CodebuildProjectVisibility" {
  type = string
  validation {
    condition = var.CECC_CodebuildProjectVisibility == null || can(contains([
      "PUBLIC_READ",
      "PRIVATE"
    ], var.CECC_CodebuildProjectVisibility))
    error_message = "Valid inputs for | variable: var.CECC_CodebuildProjectVisibility | are: PUBLIC_READ, and PRIVATE"
  }
  default = null
}

variable "CECC_CodebuildProjectResourceAccessRole" {
  type    = string
  default = null
}

variable "CECC_CodebuildProjectQueuedTimeout" {
  type = number
  validation {
    condition     = var.CECC_CodebuildProjectQueuedTimeout == null || can(var.CECC_CodebuildProjectQueuedTimeout >= 5 && var.CECC_CodebuildProjectQueuedTimeout <= 480)
    error_message = "var.CECC_CodebuildProjectQueuedTimeout must be Greater than or Equal to 5 AND Less Than or Equal to 480"
  }
  default = null
}

variable "CECC_CodebuildProjectSecondaryArtifacts" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#secondary_artifacts
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

variable "CECC_CodebuildProjectSecondarySources" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#secondary_sources
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


variable "CECC_CodebuildProjectSecondarySourceVersion" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#secondary_source_version
  type = object({
    source_identifier = string
    source_version    = string
  })
  default = null
}

variable "CECC_CodebuildProjectSourceVersion" {
  type    = string
  default = null
}


variable "CECC_CodebuildProjectVpcConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#vpc_config
  type = object({
    security_group_ids = list(string)
    subnets            = list(string)
    vpc_id             = string
  })
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_source_credential#argument-reference
variable "CECC_CodebuildCredentialsAuthType" {
  type = string
  validation {
    condition = contains([
      "OAUTH",
      "BASIC_AUTH",
      "PERSONAL_ACCESS_TOKEN",
      "CODECONNECTIONS",
      "SECRETS_MANAGER"
    ], var.CECC_CodebuildCredentialsAuthType)
    error_message = "Valid inputs for | variable: var.CECC_CodebuildCredentialsAuthType | are: OAUTH, BASIC_AUTH, PERSONAL_ACCESS_TOKEN, CODECONNECTIONS, SECRETS_MANAGER"
  }
}

variable "CECC_CodebuildCredentialsServerType" {
  type = string
}

variable "CECC_CodebuildCredentialsToken" {
  type = string
}

variable "CECC_CodebuildCredentialsUserName" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_CECC_CodebuildWebhook#argument-reference

variable "CECC_CodebuildWebhookBuildType" {
  type = string
  validation {
    condition = var.CECC_CodebuildWebhookBuildType == null || can(contains([
      "BUILD",
      "BUILD_BATCH"
    ], var.CECC_CodebuildWebhookBuildType))
    error_message = "Valid inputs for | variable: var.CECC_CodebuildWebhookBuildType | are: BUILD, BUILD_BATCH"
  }
  default = null
}

variable "CECC_CodebuildWebhookBranchFilter" {
  type    = string
  default = null
}

variable "CECC_CodebuildWebhookFilterGroup" {
  type = object({
    filter = map(object({
      type                    = string
      pattern                 = string
      exclude_matched_pattern = optional(bool, null)
    }))
  })
  default = null
}

variable "CECC_CodebuildWebhookScopeConfiguration" {
  type = object({
    name   = string
    scope  = string
    domain = optional(string, null)
  })
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role#argument-reference
variable "CECC_CodebuildRoleAssumeRolePolicyVersion" {
  type    = string
  default = "2012-10-17"
}

variable "CECC_CodebuildRoleAssumeRolePolicy" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
}

variable "CECC_CodebuildRoleDescription" {
  type    = string
  default = null
}

variable "CECC_CodebuildRoleForceDetatchPolicies" {
  type    = bool
  default = false
}

variable "CECC_CodebuildRoleMaxSessionDuration" {
  type = number
  validation {
    condition     = var.CECC_CodebuildRoleMaxSessionDuration >= 3600 && var.CECC_CodebuildRoleMaxSessionDuration <= 43200
    error_message = "Variable CECC_CodebuildRoleMaxSessionDuration must be greater than or equal to 3600 and less than or equal to 43200"
  }
  default = 3600
}

variable "CECC_CodebuildRoleNamePrefix" {
  type    = string
  default = null
}

variable "CECC_CodebuildRolePath" {
  type    = string
  default = "/"
}

variable "CECC_CodebuildRolePermissionsBoundary" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "CECC_CodebuildRolePolicyDescription" {
  type    = string
  default = null
}
variable "CECC_CodebuildRolePolicyNamePrefix" {
  type    = string
  default = null
}
variable "CECC_CodebuildRolePolicyPath" {
  type    = string
  default = "/"
}
variable "CECC_CodebuildRolePolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "CECC_CodebuildRolePolicyDocumentStatements" {
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

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group#argument-reference


variable "CECC_CodebuildLogGroupNamePrefix" {
  type    = string
  default = null
}

variable "CECC_CodebuildLogGroupSkipDestroy" {
  type    = bool
  default = null
}

variable "CECC_CodebuildLogGroupClass" {
  type = string
  validation {
    condition = var.CECC_CodebuildLogGroupClass == null || can(contains([
      "STANDARD",
      "INFREQUENT_ACCESS"
    ], var.CECC_CodebuildLogGroupClass))
    error_message = "Valid inputs for | variable: var.CECC_CodebuildLogGroupClass | are: STANDARD, or INFREQUENT_ACCESS"
  }
  default = null
}

variable "CECC_CodebuildLogGroupRetentionInDays" {
  type = number
  validation {
    condition = var.CECC_CodebuildLogGroupRetentionInDays == null || can(contains([
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
    ], var.CECC_CodebuildLogGroupRetentionInDays))
    error_message = "Valid inputs for | variable: var.CECC_CodebuildLogGroupRetentionInDays | are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, 3653, and 0"
  }
  default = null
}

variable "CECC_CodebuildLogGroupKmsKeyId" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment#argument-reference

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "CECC_CodebuildRoleEcrPolicyDescription" {
  type    = string
  default = null
}
variable "CECC_CodebuildRoleEcrPolicyNamePrefix" {
  type    = string
  default = null
}
variable "CECC_CodebuildRoleEcrPolicyPath" {
  type    = string
  default = "/"
}
variable "CECC_CodebuildRoleEcrPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "CECC_CodebuildRoleEcrPolicyDocumentStatements" {
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

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment#argument-reference

#---