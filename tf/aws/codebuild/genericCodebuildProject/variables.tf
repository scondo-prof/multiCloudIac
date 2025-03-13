variable "awsRegion" {
  type    = string
  default = "us-east-1"
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

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#argument-reference

##https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#artifacts
variable "codebuildProjectArtifactsIdentifier" {
  type    = string
  default = null
}

variable "codebuildProjectArtifactsBucketOwnerAccess" {
  type = string
  validation {
    condition = var.codebuildProjectArtifactsBucketOwnerAccess == null || can(contains([
      "NONE",
      "READ_ONLY",
      "FULL"
    ], var.codebuildProjectArtifactsBucketOwnerAccess))
    error_message = "Valid inputs for | variable: var.codebuildProjectArtifactsBucketOwnerAccess | are: NONE, READ_ONLY, and FULL"
  }
  default = null
}

variable "codebuildProjectArtifactsEncryptionDisabled" {
  type    = bool
  default = null
}

variable "codebuildProjectArtifactsLocation" {
  type    = string
  default = null
}

variable "codebuildProjectArtifactsName" {
  type    = string
  default = null
}

variable "codebuildProjectArtifactsNamespaceType" {
  type = string
  validation {
    condition = var.codebuildProjectArtifactsNamespaceType == null || can(contains([
      "BUILD_ID",
      "NONE"
    ], var.codebuildProjectArtifactsNamespaceType))
    error_message = "Valid inputs for | variable: var.codebuildProjectArtifactsNamespaceType | are: BUILD_ID, NONE"
  }
  default = null
}

variable "codebuildProjectArtifactsOverrideArtifactName" {
  type    = bool
  default = null
}

variable "codebuildProjectArtifactsPackaging" {
  type = string
  validation {
    condition = var.codebuildProjectArtifactsPackaging == null || can(contains([
      "NONE",
      "ZIP"
    ], var.codebuildProjectArtifactsPackaging))
    error_message = "Valid inputs for | variable: var.codebuildProjectArtifactsPackaging | are: NONE, ZIP"
  }
  default = null
}

variable "codebuildProjectArtifactsPath" {
  type    = string
  default = null
}

variable "codebuildProjectArtifactsType" {
  type = string
  validation {
    condition = contains([
      "CODEPIPELINE",
      "NO_ARTIFACTS",
      "S3"
    ], var.codebuildProjectArtifactsType)
    error_message = "Valid inputs for | variable: var.codebuildProjectArtifactsType | are: CODEPIPELINE, NO_ARTIFACTS, S3"
  }
}


#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#environment

variable "codebuildProjectEnvironmentCertificate" {
  type    = string
  default = null
}

variable "codebuildProjectEnvironmentComputeType" {
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
    ], var.codebuildProjectEnvironmentComputeType)
    error_message = "Valid inputs for | variable: var.codebuildProjectEnvironmentComputeType | are: BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_2XLARGE, BUILD_LAMBDA_1GB, BUILD_LAMBDA_2GB, BUILD_LAMBDA_4GB, BUILD_LAMBDA_8GB, BUILD_LAMBDA_10GB"
  }
}

# variable "codebuildProjectEnvironmentFleet" {
#   type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#fleet_arn-1
#     fleet_arn = optional(string, null)
#   })
#   default = null
# }

variable "codebuildProjectEnvironmentEnvironmentVariable" {
  type = map(object({
    name  = string
    type  = optional(string, null)
    value = string
  }))
  default = null
}

variable "codebuildProjectEnvironmentImagePullCredentialsType" {
  type = string
  validation {
    condition = var.codebuildProjectEnvironmentImagePullCredentialsType == null || can(contains([
      "CODEBUILD",
      "SERVICE_ROLE"
    ], var.codebuildProjectEnvironmentImagePullCredentialsType))
    error_message = "Valid inputs for | variable: var.codebuildProjectEnvironmentImagePullCredentialsType | are: CODEBUILD, SERVICE_ROLE"
  }
  default = null
}

variable "codebuildProjectEnvironmentImage" { #https://docs.aws.amazon.com/pdfs/codebuild/latest/userguide/codebuild-user.pdf#build-env-ref-available
  type = string
}

variable "codebuildProjectEnvironmentPrivilegedMode" {
  type    = bool
  default = null
}

variable "codebuildProjectEnvironmentRegistryCredential" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#credential-1
    credential          = string
    credential_provider = string
  })
  default = null
}

variable "codebuildProjectEnvironmentType" {
  type = string
  validation {
    condition = contains([
      "LINUX_CONTAINER",
      "LINUX_GPU_CONTAINER",
      "WINDOWS_SERVER_2019_CONTAINER",
      "ARM_CONTAINER",
      "LINUX_LAMBDA_CONTAINER"
    ], var.codebuildProjectEnvironmentType)
    error_message = "Valid inputs for | variable: var.codebuildProjectEnvironmentType | are: LINUX_CONTAINER, LINUX_GPU_CONTAINER, WINDOWS_SERVER_2019_CONTAINER, ARM_CONTAINER, LINUX_LAMBDA_CONTAINER"
  }
}

variable "resourceName" {
  type = string
}

variable "codebuildProjectServiceRole" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#source
variable "codebuildProjectSourceBuildspec" {
  type    = string
  default = null
}

variable "codebuildProjectSourceGitCloneDepth" {
  type    = number
  default = null
}

variable "codebuildProjectSourceGitSubmodulesConfig" {
  type = object({
    fetch_submodules = bool
  })
  default = null
}

variable "codebuildProjectSourceInsecureSsl" {
  type    = bool
  default = null
}

variable "codebuildProjectSourceLocation" {
  type    = string
  default = null
}

variable "codebuildProjectSourceReportBuildStatus" {
  type    = bool
  default = null
}

variable "codebuildProjectSourceBuildStatusConfig" {
  type = object({
    context    = optional(string, null)
    target_url = optional(string, null)
  })
  default = null
}

variable "codebuildProjectSourceType" {
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
    ], var.codebuildProjectSourceType)
    error_message = "Valid inputs for | variable: var.codebuildProjectSourceType | are: BITBUCKET, CODECOMMIT, CODEPIPELINE, GITHUB, GITHUB_ENTERPRISE, GITLAB, GITLAB_SELF_MANAGED, NO_SOURCE, S3"
  }
}

variable "codebuildProjectBadgeEnabled" {
  type    = bool
  default = null
}

variable "codebuildProjectBuildBatchConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#build_batch_config
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

variable "codebuildProjectBuildTimeout" {
  type = number
  validation {
    condition     = var.codebuildProjectBuildTimeout == null || can(var.codebuildProjectBuildTimeout >= 5 && var.codebuildProjectBuildTimeout <= 2160)
    error_message = "var.codebuildProjectBuildTimeout must be Greater than or Equal to 5 AND Less Than or Equal to 2160"
  }
  default = null
}

variable "codebuildProjectCache" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#cache
  type = object({
    location = optional(string, null)
    modes    = optional(string, null)
    type     = optional(string, null)
  })
  default = null
}

variable "codebuildProjectConcurrentBuildLimit" {
  type = number
  validation {
    condition     = var.codebuildProjectConcurrentBuildLimit == null || can(var.codebuildProjectConcurrentBuildLimit >= 0 && var.codebuildProjectConcurrentBuildLimit <= 20)
    error_message = "var.codebuildProjectConcurrentBuildLimit must be Greater than or Equal to 0 AND Less Than or Equal to 20"
  }
  default = null
}

variable "codebuildProjectDescription" {
  type    = string
  default = null
}

variable "codebuildProjectFileSystemLocations" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#file_system_locations
  type = object({
    identifier    = optional(string, null)
    location      = optional(string, null)
    mount_options = optional(string, null)
    mount_point   = optional(string, null)
    type          = optional(string, null)
  })
  default = null
}

variable "codebuildProjectEncryptionKey" {
  type    = string
  default = null
}

variable "codebuildProjectLogsConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#logs_config 
  type = object({

    cloudwatch_logs = optional(object({
      group_name  = optional(string, null)
      status      = optional(string, null)
      stream_name = optional(string, null)
    }), null)

    s3_logs = optional(object({
      encryption_disabled = optional(bool, null)
      location            = optional(string, null)
      status              = optional(string, null)
      bucket_owner_access = optional(string, null)
    }), null)
  })
  default = null
}

variable "codebuildProjectVisibility" {
  type = string
  validation {
    condition = var.codebuildProjectVisibility == null || can(contains([
      "PUBLIC_READ",
      "PRIVATE"
    ], var.codebuildProjectVisibility))
    error_message = "Valid inputs for | variable: var.codebuildProjectVisibility | are: PUBLIC_READ, and PRIVATE"
  }
  default = null
}

variable "codebuildProjectResourceAccessRole" {
  type    = string
  default = null
}

variable "codebuildProjectQueuedTimeout" {
  type = number
  validation {
    condition     = var.codebuildProjectQueuedTimeout == null || can(var.codebuildProjectQueuedTimeout >= 5 && var.codebuildProjectQueuedTimeout <= 480)
    error_message = "var.codebuildProjectQueuedTimeout must be Greater than or Equal to 5 AND Less Than or Equal to 480"
  }
  default = null
}

variable "codebuildProjectSecondaryArtifacts" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#secondary_artifacts
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

variable "codebuildProjectSecondarySources" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#secondary_sources
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


variable "codebuildProjectSecondarySourceVersion" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#secondary_source_version
  type = object({
    source_identifier = string
    source_version    = string
  })
  default = null
}

variable "codebuildProjectSourceVersion" {
  type    = string
  default = null
}


variable "codebuildProjectVpcConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project#vpc_config
  type = object({
    security_group_ids = list(string)
    subnets            = list(string)
    vpc_id             = string
  })
  default = null
}