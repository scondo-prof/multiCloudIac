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

variable "creator" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository#argument-reference

variable "CLCC_CECC_EcrRepositoryEncryptionConfiguration" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository#encryption_configuration
  type = object({
    encryption_type = optional(string, null)
    kms_key         = optional(string, null)
  })
  default = null
}

variable "CLCC_CECC_EcrRepositoryForceDelete" {
  type    = bool
  default = null
}

variable "CLCC_CECC_EcrRepositoryImageTagMutability" {
  type = string
  validation {
    condition = var.CLCC_CECC_EcrRepositoryImageTagMutability == null || can(contains([
      "MUTABLE  IMMUTABLE"
    ], var.CLCC_CECC_EcrRepositoryImageTagMutability))
    error_message = "Valid inputs for | variable: var.CLCC_CECC_EcrRepositoryImageTagMutability | are: MUTABLE or IMMUTABLE"
  }
  default = null
}

variable "CLCC_CECC_EcrRepositoryImageScanningConfiguration" {
  type = object({
    scan_on_push = bool
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#argument-reference
variable "CLCC_CECC_CodebuildProjectArtifactsIdentifier" {
  type    = string
  default = null
}

variable "CLCC_CECC_CodebuildProjectArtifactsBucketOwnerAccess" {
  type = string
  validation {
    condition = var.CLCC_CECC_CodebuildProjectArtifactsBucketOwnerAccess == null || can(contains([
      "NONE",
      "READ_ONLY",
      "FULL"
    ], var.CLCC_CECC_CodebuildProjectArtifactsBucketOwnerAccess))
    error_message = "Valid inputs for | variable: var.CLCC_CECC_CodebuildProjectArtifactsBucketOwnerAccess | are: NONE, READ_ONLY, and FULL"
  }
  default = null
}

variable "CLCC_CECC_CodebuildProjectArtifactsEncryptionDisabled" {
  type    = bool
  default = null
}

variable "CLCC_CECC_CodebuildProjectArtifactsLocation" {
  type    = string
  default = null
}

variable "CLCC_CECC_CodebuildProjectArtifactsName" {
  type    = string
  default = null
}

variable "CLCC_CECC_CodebuildProjectArtifactsNamespaceType" {
  type = string
  validation {
    condition = var.CLCC_CECC_CodebuildProjectArtifactsNamespaceType == null || can(contains([
      "BUILD_ID",
      "NONE"
    ], var.CLCC_CECC_CodebuildProjectArtifactsNamespaceType))
    error_message = "Valid inputs for | variable: var.CLCC_CECC_CodebuildProjectArtifactsNamespaceType | are: BUILD_ID, NONE"
  }
  default = null
}

variable "CLCC_CECC_CodebuildProjectArtifactsOverrideArtifactName" {
  type    = bool
  default = null
}

variable "CLCC_CECC_CodebuildProjectArtifactsPackaging" {
  type = string
  validation {
    condition = var.CLCC_CECC_CodebuildProjectArtifactsPackaging == null || can(contains([
      "NONE",
      "ZIP"
    ], var.CLCC_CECC_CodebuildProjectArtifactsPackaging))
    error_message = "Valid inputs for | variable: var.CLCC_CECC_CodebuildProjectArtifactsPackaging | are: NONE, ZIP"
  }
  default = null
}

variable "CLCC_CECC_CodebuildProjectArtifactsPath" {
  type    = string
  default = null
}

variable "CLCC_CECC_CodebuildProjectArtifactsType" {
  type = string
  validation {
    condition = contains([
      "CODEPIPELINE",
      "NO_ARTIFACTS",
      "S3"
    ], var.CLCC_CECC_CodebuildProjectArtifactsType)
    error_message = "Valid inputs for | variable: var.CLCC_CECC_CodebuildProjectArtifactsType | are: CODEPIPELINE, NO_ARTIFACTS, S3"
  }
}


#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#environment

variable "CLCC_CECC_CodebuildProjectEnvironmentCertificate" {
  type    = string
  default = null
}

variable "CLCC_CECC_CodebuildProjectEnvironmentComputeType" {
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
    ], var.CLCC_CECC_CodebuildProjectEnvironmentComputeType)
    error_message = "Valid inputs for | variable: var.CLCC_CECC_CodebuildProjectEnvironmentComputeType | are: BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_2XLARGE, BUILD_LAMBDA_1GB, BUILD_LAMBDA_2GB, BUILD_LAMBDA_4GB, BUILD_LAMBDA_8GB, BUILD_LAMBDA_10GB"
  }
}

variable "CLCC_CECC_CodebuildProjectEnvironmentFleet" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#fleet_arn-1
    fleet_arn = optional(string, null)
  })
  default = null
}

variable "awsAccountId" {
  type = string
}

variable "codebuildProjectEcrRepoImageTag" {
  type    = string
  default = "latest"
}

variable "CLCC_CECC_CodebuildProjectEnvironmentEnvironmentVariables" {
  type = map(object({
    name  = string
    type  = optional(string, null)
    value = string
  }))
  default = {}
}

variable "CLCC_CECC_CodebuildProjectEnvironmentImagePullCredentialsType" {
  type = string
  validation {
    condition = var.CLCC_CECC_CodebuildProjectEnvironmentImagePullCredentialsType == null || can(contains([
      "CODEBUILD",
      "SERVICE_ROLE"
    ], var.CLCC_CECC_CodebuildProjectEnvironmentImagePullCredentialsType))
    error_message = "Valid inputs for | variable: var.CLCC_CECC_CodebuildProjectEnvironmentImagePullCredentialsType | are: CODEBUILD, SERVICE_ROLE"
  }
  default = null
}

variable "CLCC_CECC_CodebuildProjectEnvironmentImage" { #https://docs.aws.amazon.com/pdfs/codebuild/latest/userguide/codebuild-user.pdf#build-env-ref-available
  type = string
}

variable "CLCC_CECC_CodebuildProjectEnvironmentPrivilegedMode" {
  type    = bool
  default = null
}

variable "CLCC_CECC_CodebuildProjectEnvironmentRegistryCredential" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#credential-1
    credential          = string
    credential_provider = string
  })
  default = null
}

variable "CLCC_CECC_CodebuildProjectEnvironmentType" {
  type = string
  validation {
    condition = contains([
      "LINUX_CONTAINER",
      "LINUX_GPU_CONTAINER",
      "WINDOWS_SERVER_2019_CONTAINER",
      "ARM_CONTAINER",
      "LINUX_LAMBDA_CONTAINER"
    ], var.CLCC_CECC_CodebuildProjectEnvironmentType)
    error_message = "Valid inputs for | variable: var.CLCC_CECC_CodebuildProjectEnvironmentType | are: LINUX_CONTAINER, LINUX_GPU_CONTAINER, WINDOWS_SERVER_2019_CONTAINER, ARM_CONTAINER, LINUX_LAMBDA_CONTAINER"
  }
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#source
variable "CLCC_CECC_CodebuildProjectSourceBuildspec" {
  type    = string
  default = null
}

variable "CLCC_CECC_CodebuildProjectSourceGitCloneDepth" {
  type    = number
  default = null
}

variable "CLCC_CECC_CodebuildProjectSourceGitSubmodulesConfig" {
  type = object({
    fetch_submodules = bool
  })
  default = null
}

variable "CLCC_CECC_CodebuildProjectSourceInsecureSsl" {
  type    = bool
  default = null
}

variable "CLCC_CECC_CodebuildProjectSourceLocation" {
  type    = string
  default = null
}

variable "CLCC_CECC_CodebuildProjectSourceReportBuildStatus" {
  type    = bool
  default = null
}

variable "CLCC_CECC_CodebuildProjectSourceBuildStatusConfig" {
  type = object({
    context    = optional(string, null)
    target_url = optional(string, null)
  })
  default = null
}

variable "CLCC_CECC_CodebuildProjectSourceType" {
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
    ], var.CLCC_CECC_CodebuildProjectSourceType)
    error_message = "Valid inputs for | variable: var.CLCC_CECC_CodebuildProjectSourceType | are: BITBUCKET, CODECOMMIT, CODEPIPELINE, GITHUB, GITHUB_ENTERPRISE, GITLAB, GITLAB_SELF_MANAGED, NO_SOURCE, S3"
  }
}

variable "CLCC_CECC_CodebuildProjectBadgeEnabled" {
  type    = bool
  default = null
}

variable "CLCC_CECC_CodebuildProjectBuildBatchConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#build_batch_config
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

variable "CLCC_CECC_CodebuildProjectBuildTimeout" {
  type = number
  validation {
    condition     = var.CLCC_CECC_CodebuildProjectBuildTimeout == null || can(var.CLCC_CECC_CodebuildProjectBuildTimeout >= 5 && var.CLCC_CECC_CodebuildProjectBuildTimeout <= 2160)
    error_message = "var.CLCC_CECC_CodebuildProjectBuildTimeout must be Greater than or Equal to 5 AND Less Than or Equal to 2160"
  }
  default = null
}

variable "CLCC_CECC_CodebuildProjectCache" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#cache
  type = object({
    location = optional(string, null)
    modes    = optional(string, null)
    type     = optional(string, null)
  })
  default = null
}

variable "CLCC_CECC_CodebuildProjectConcurrentBuildLimit" {
  type = number
  validation {
    condition     = var.CLCC_CECC_CodebuildProjectConcurrentBuildLimit == null || can(var.CLCC_CECC_CodebuildProjectConcurrentBuildLimit >= 0 && var.CLCC_CECC_CodebuildProjectConcurrentBuildLimit <= 20)
    error_message = "var.CLCC_CECC_CodebuildProjectConcurrentBuildLimit must be Greater than or Equal to 0 AND Less Than or Equal to 20"
  }
  default = null
}

variable "CLCC_CECC_CodebuildProjectDescription" {
  type    = string
  default = null
}

variable "CLCC_CECC_CodebuildProjectFileSystemLocations" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#file_system_locations
  type = object({
    identifier    = optional(string, null)
    location      = optional(string, null)
    mount_options = optional(string, null)
    mount_point   = optional(string, null)
    type          = optional(string, null)
  })
  default = null
}

variable "CLCC_CECC_CodebuildProjectEncryptionKey" {
  type    = string
  default = null
}

variable "CLCC_CECC_CodebuildProjectCloudwatchLogsConfigStatus" {
  type = string
  validation {
    condition = var.CLCC_CECC_CodebuildProjectCloudwatchLogsConfigStatus == null || can(contains([
      "ENABLED",
      "DISABLED"
    ], var.CLCC_CECC_CodebuildProjectCloudwatchLogsConfigStatus))
    error_message = "Valid inputs for | variable: var.CLCC_CECC_CodebuildProjectCloudwatchLogsConfigStatus | are: ENABLED, DISABLED"
  }
  default = null
}

variable "CLCC_CECC_CodebuildProjectCloudwatchLogsConfigStreamName" {
  type    = string
  default = null
}

variable "CLCC_CECC_CodebuildProjectS3LogsConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#logs_config 
  type = object({
    encryption_disabled = optional(bool, null)
    location            = optional(string, null)
    status              = optional(string, null)
    bucket_owner_access = optional(string, null)
  })
  default = null
}

variable "CLCC_CECC_CodebuildProjectVisibility" {
  type = string
  validation {
    condition = var.CLCC_CECC_CodebuildProjectVisibility == null || can(contains([
      "PUBLIC_READ",
      "PRIVATE"
    ], var.CLCC_CECC_CodebuildProjectVisibility))
    error_message = "Valid inputs for | variable: var.CLCC_CECC_CodebuildProjectVisibility | are: PUBLIC_READ, and PRIVATE"
  }
  default = null
}

variable "CLCC_CECC_CodebuildProjectResourceAccessRole" {
  type    = string
  default = null
}

variable "CLCC_CECC_CodebuildProjectQueuedTimeout" {
  type = number
  validation {
    condition     = var.CLCC_CECC_CodebuildProjectQueuedTimeout == null || can(var.CLCC_CECC_CodebuildProjectQueuedTimeout >= 5 && var.CLCC_CECC_CodebuildProjectQueuedTimeout <= 480)
    error_message = "var.CLCC_CECC_CodebuildProjectQueuedTimeout must be Greater than or Equal to 5 AND Less Than or Equal to 480"
  }
  default = null
}

variable "CLCC_CECC_CodebuildProjectSecondaryArtifacts" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#secondary_artifacts
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

variable "CLCC_CECC_CodebuildProjectSecondarySources" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#secondary_sources
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


variable "CLCC_CECC_CodebuildProjectSecondarySourceVersion" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#secondary_source_version
  type = object({
    source_identifier = string
    source_version    = string
  })
  default = null
}

variable "CLCC_CECC_CodebuildProjectSourceVersion" {
  type    = string
  default = null
}

variable "CLCC_CECC_CodebuildProjectVpcConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#vpc_config
  type = object({
    security_group_ids = list(string)
    subnets            = list(string)
    vpc_id             = string
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_source_credential#argument-reference
variable "CLCC_CECC_CredentialsAuthType" {
  type = string
  validation {
    condition = contains([
      "OAUTH",
      "BASIC_AUTH",
      "PERSONAL_ACCESS_TOKEN",
      "CODECONNECTIONS",
      "SECRETS_MANAGER"
    ], var.CLCC_CECC_CredentialsAuthType)
    error_message = "Valid inputs for | variable: var.CLCC_CECC_CredentialsAuthType | are: OAUTH, BASIC_AUTH, PERSONAL_ACCESS_TOKEN, CODECONNECTIONS, SECRETS_MANAGER"
  }
}

variable "CLCC_CECC_CredentialsServerType" {
  type = string
}

variable "CLCC_CECC_CredentialsToken" {
  type = string
}

variable "CLCC_CECC_CredentialsUserName" {
  type    = string
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_webhook#argument-reference
variable "CLCC_CECC_WebhookBuildType" {
  type = string
  validation {
    condition = var.CLCC_CECC_WebhookBuildType == null || can(contains([
      "BUILD",
      "BUILD_BATCH"
    ], var.CLCC_CECC_WebhookBuildType))
    error_message = "Valid inputs for | variable: var.CLCC_CECC_WebhookBuildType | are: BUILD, BUILD_BATCH"
  }
  default = null
}

variable "CLCC_CECC_WebhookBranchFilter" {
  type    = string
  default = null
}

variable "CLCC_CECC_WebhookFilterGroup" {
  type = object({
    filter = map(object({
      type                    = string
      pattern                 = string
      exclude_matched_pattern = optional(bool, null)
    }))
  })
  default = null
}

variable "CLCC_CECC_WebhookScopeConfiguration" {
  type = object({
    name   = string
    scope  = string
    domain = optional(string, null)
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role#argument-reference
variable "CLCC_CECC_CodebuildRoleAssumeRolePolicyVersion" {
  type    = string
  default = "2012-10-17"
}

variable "CLCC_CECC_CodebuildRoleAssumeRolePolicy" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
}

variable "CLCC_CECC_CodebuildRoleDescription" {
  type    = string
  default = null
}

variable "CLCC_CECC_CodebuildRoleForceDetatchPolicies" {
  type    = bool
  default = false
}

variable "CLCC_CECC_CodebuildRoleMaxSessionDuration" {
  type = number
  validation {
    condition     = var.CLCC_CECC_CodebuildRoleMaxSessionDuration >= 3600 && var.CLCC_CECC_CodebuildRoleMaxSessionDuration <= 43200
    error_message = "Variable CLCC_CECC_CodebuildRoleMaxSessionDuration must be greater than or equal to 3600 and less than or equal to 43200"
  }
  default = 3600
}

variable "CLCC_CECC_CodebuildRoleNamePrefix" {
  type    = string
  default = null
}

variable "CLCC_CECC_CodebuildRolePath" {
  type    = string
  default = "/"
}

variable "CLCC_CECC_CodebuildRolePermissionsBoundary" {
  type    = string
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy
variable "CLCC_CECC_CodebuildPolicyDescription" {
  type    = string
  default = null
}
variable "CLCC_CECC_CodebuildPolicyNamePrefix" {
  type    = string
  default = null
}
variable "CLCC_CECC_CodebuildPolicyPath" {
  type    = string
  default = "/"
}
variable "CLCC_CECC_CodebuildPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "CLCC_CECC_CodebuildPolicyDocumentAdditionalStatements" {
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
variable "CLCC_CECC_LogGroupNamePrefix" {
  type    = string
  default = null
}

variable "CLCC_CECC_LogGroupSkipDestroy" {
  type    = bool
  default = null
}

variable "CLCC_CECC_LogGroupClass" {
  type = string
  validation {
    condition = var.CLCC_CECC_LogGroupClass == null || can(contains([
      "STANDARD",
      "INFREQUENT_ACCESS"
    ], var.CLCC_CECC_LogGroupClass))
    error_message = "Valid inputs for | variable: var.CLCC_CECC_LogGroupClass | are: STANDARD, or INFREQUENT_ACCESS"
  }
  default = null
}

variable "CLCC_CECC_LogGroupRetentionInDays" {
  type = number
  validation {
    condition = var.CLCC_CECC_LogGroupRetentionInDays == null || can(contains([
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
    ], var.CLCC_CECC_LogGroupRetentionInDays))
    error_message = "Valid inputs for | variable: var.CLCC_CECC_LogGroupRetentionInDays | are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, 3653, and 0"
  }
  default = null
}

variable "CLCC_CECC_LogGroupKmsKeyId" {
  type    = string
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy
variable "CLCC_CECC_EcrAccessPolicyDescription" {
  type    = string
  default = null
}
variable "CLCC_CECC_EcrAccessPolicyNamePrefix" {
  type    = string
  default = null
}
variable "CLCC_CECC_EcrAccessPolicyPath" {
  type    = string
  default = "/"
}
variable "CLCC_CECC_EcrAccessPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "CLCC_CECC_EcrAccessPolicyDocumentAdditionalStatements" {
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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "CLCC_UpdateLambdaPolicyDescription" {
  type    = string
  default = null
}
variable "CLCC_UpdateLambdaPolicyNamePrefix" {
  type    = string
  default = null
}
variable "CLCC_UpdateLambdaPolicyPath" {
  type    = string
  default = "/"
}
variable "CLCC_UpdateLambdaPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "CLCC_UpdateLambdaPolicyDocumentStatements" {
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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#argument-reference
variable "CLCC_LFWLGSAR_LambdaFunctionArchitectures" {
  type    = list(string)
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionCodeSigningConfigArn" {
  type    = string
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionDeadLetterConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#dead_letter_config
  type = object({
    target_arn = string
  })
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionDescription" {
  type    = string
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionEnvironmentVariables" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#environment
  type    = map(string)
  default = {}
}

variable "CLCC_LFWLGSAR_LambdaFunctionEphemeralStorage" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#ephemeral_storage
  type = object({
    size = number
  })
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionFileSystemConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#file_system_config
  type = object({
    arn              = string
    local_mount_path = string
  })
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionFilename" {
  type    = string
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionHandler" {
  type    = string
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionImageConfig" {
  type = object({
    command           = optional(string, null)
    entry_point       = optional(string, null)
    working_directory = optional(string, null)
  })
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionImageUri" {
  type    = string
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionKmsKeyArn" {
  type    = string
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionLayers" {
  type    = list(string)
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionLoggingConfig" {
  type = object({
    application_log_level = optional(string, null)
    log_format            = string
    log_group             = optional(string, null)
    system_log_level      = optional(string, null)
  })
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionMemorySize" {
  type = number
  validation {
    condition     = var.CLCC_LFWLGSAR_LambdaFunctionMemorySize == null || can(var.CLCC_LFWLGSAR_LambdaFunctionMemorySize >= 128 && var.CLCC_LFWLGSAR_LambdaFunctionMemorySize <= 10240)
    error_message = "var.CLCC_LFWLGSAR_LambdaFunctionMemorySize must be Greater than or Equal to 128 AND Less Than or Equal to 10240"
  }
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionPackageType" {
  type = string
  validation {
    condition = var.CLCC_LFWLGSAR_LambdaFunctionPackageType == null || can(contains([
      "Zip",
      "Image"
    ], var.CLCC_LFWLGSAR_LambdaFunctionPackageType))
    error_message = "Valid inputs for | variable: var.CLCC_LFWLGSAR_LambdaFunctionPackageType | are: Zip, Image"
  }
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionPublish" {
  type    = bool
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionReservedConcurrentExecutions" {
  type    = number
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionReplaceSecurityGroupsOnDestroy" {
  type    = bool
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionReplacementSecurityGroupIds" {
  type    = list(string)
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionRuntime" {
  type = string
  validation {
    condition = var.CLCC_LFWLGSAR_LambdaFunctionRuntime == null || can(contains([
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
    ], var.CLCC_LFWLGSAR_LambdaFunctionRuntime))
    error_message = "Valid inputs for | variable: var.CLCC_LFWLGSAR_LambdaFunctionRuntime | are: nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, nodejs16.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, python3.9, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, dotnet6, dotnet8, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2, nodejs18.x, python3.10, java17, ruby3.2, ruby3.3, python3.11, nodejs20.x, provided.al2023, python3.12, java21, python3.13, nodejs22.x"
  }
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionS3Bucket" {
  type    = string
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionS3Key" {
  type    = string
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionS3ObjectVersion" {
  type    = string
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionSkipDestroy" {
  type    = bool
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionSourceCodeHash" {
  type    = string
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionSnapStart" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#snap_start
  type = object({
    apply_on = string
  })
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionTimeout" {
  type = number
  validation {
    condition     = var.CLCC_LFWLGSAR_LambdaFunctionTimeout == null || can(var.CLCC_LFWLGSAR_LambdaFunctionTimeout >= 3 && var.CLCC_LFWLGSAR_LambdaFunctionTimeout <= 900)
    error_message = "var.CLCC_LFWLGSAR_LambdaFunctionTimeout must be Greater than or Equal to 3 AND Less Than or Equal to 900"
  }
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionTracingConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#tracing_config
  type = object({
    mode = string
  })
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionVpcConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#vpc_config
  type = object({
    ipv6_allowed_for_dual_stack = optional(bool, null)
    security_group_ids          = list(string)
    subnet_ids                  = list(string)
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role#argument-reference
variable "CLCC_LFWLGSAR_LambdaFunctionRoleAssumeRolePolicyVersion" {
  type    = string
  default = "2012-10-17"
}

variable "CLCC_LFWLGSAR_LambdaFunctionRoleAssumeRolePolicy" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
  default = []
}

variable "CLCC_LFWLGSAR_LambdaFunctionRoleDescription" {
  type    = string
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionRoleForceDetatchPolicies" {
  type    = bool
  default = false
}

variable "CLCC_LFWLGSAR_LambdaFunctionRoleMaxSessionDuration" {
  type = number
  validation {
    condition     = var.CLCC_LFWLGSAR_LambdaFunctionRoleMaxSessionDuration >= 3600 && var.CLCC_LFWLGSAR_LambdaFunctionRoleMaxSessionDuration <= 43200
    error_message = "Variable CLCC_LFWLGSAR_LambdaFunctionRoleMaxSessionDuration must be greater than or equal to 3600 and less than or equal to 43200"
  }
  default = 3600
}

variable "CLCC_LFWLGSAR_LambdaFunctionRoleNamePrefix" {
  type    = string
  default = null
}

variable "CLCC_LFWLGSAR_LambdaFunctionRolePath" {
  type    = string
  default = "/"
}

variable "CLCC_LFWLGSAR_LambdaFunctionRolePermissionsBoundary" {
  type    = string
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "CLCC_LFWLGSAR_LambdaPolicyDescription" {
  type    = string
  default = null
}
variable "CLCC_LFWLGSAR_LambdaPolicyNamePrefix" {
  type    = string
  default = null
}
variable "CLCC_LFWLGSAR_LambdaPolicyPath" {
  type    = string
  default = "/"
}
variable "CLCC_LFWLGSAR_LambdaPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "CLCC_LFWLGSAR_LambdaPolicyDocumentStatements" {
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



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret#argument-reference

variable "CLCC_LFWLGSAR_SecretDescription" {
  type    = string
  default = null
}

variable "CLCC_LFWLGSAR_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "CLCC_LFWLGSAR_SecretNamePrefix" {
  type    = string
  default = null
}

variable "CLCC_LFWLGSAR_SecretPolicy" {
  type    = string
  default = null
}

variable "CLCC_LFWLGSAR_SecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "CLCC_LFWLGSAR_SecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "CLCC_LFWLGSAR_SecretForceSecretOverwrite" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference

variable "CLCC_LFWLGSAR_SecretVersionSecretString" {
  type    = map(string)
  default = null
}

variable "CLCC_LFWLGSAR_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "CLCC_LFWLGSAR_SecretVersionStages" {
  type    = list(string)
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "CLCC_LFWLGSAR_SecretPolicyDescription" {
  type    = string
  default = null
}
variable "CLCC_LFWLGSAR_SecretPolicyNamePrefix" {
  type    = string
  default = null
}
variable "CLCC_LFWLGSAR_SecretPolicyPath" {
  type    = string
  default = "/"
}
variable "CLCC_LFWLGSAR_SecretPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "CLCC_LFWLGSAR_SecretPolicyDocumentStatements" {
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
variable "CLCC_LFWLGSAR_LogGroupNamePrefix" {
  type    = string
  default = null
}

variable "CLCC_LFWLGSAR_LogGroupSkipDestroy" {
  type    = bool
  default = null
}

variable "CLCC_LFWLGSAR_LogGroupClass" {
  type = string
  validation {
    condition = var.CLCC_LFWLGSAR_LogGroupClass == null || can(contains([
      "STANDARD",
      "INFREQUENT_ACCESS"
    ], var.CLCC_LFWLGSAR_LogGroupClass))
    error_message = "Valid inputs for | variable: var.CLCC_LFWLGSAR_LogGroupClass | are: STANDARD, or INFREQUENT_ACCESS"
  }
  default = null
}

variable "CLCC_LFWLGSAR_LogGroupRetentionInDays" {
  type = number
  validation {
    condition = var.CLCC_LFWLGSAR_LogGroupRetentionInDays == null || can(contains([
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
    ], var.CLCC_LFWLGSAR_LogGroupRetentionInDays))
    error_message = "Valid inputs for | variable: var.CLCC_LFWLGSAR_LogGroupRetentionInDays | are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, 3653, and 0"
  }
  default = null
}

variable "CLCC_LFWLGSAR_LogGroupKmsKeyId" {
  type    = string
  default = null
}

#---
