variable "gcpProjectId" {
  type    = string
  default = "p3-prod-aa94d"
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "resourceName" {
  type = string
}

variable "ARCRCCFG_ArtifactRegistryRepositoryFormat" {
  type = string
}

variable "projectName" {
  type = string
}

variable "deployedDate" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "additionalLabels" {
  type    = map(string)
  default = {}
}

variable "ARCRCCFG_ArtifactRegistryRepositoryKmsKeyName" {
  type    = string
  default = null
}

variable "ARCRCCFG_ArtifactRegistryRepositoryDockerConfig" {
  type = object({
    immutable_tags = bool
  })
  default = null
}

variable "ARCRCCFG_ArtifactRegistryRepositoryMavenConfig" {
  type = object({
    allow_snapshot_overwrites = bool
    version_policy            = string #Default is VERSION_POLICY_UNSPECIFIED. Possible values are: VERSION_POLICY_UNSPECIFIED, RELEASE, SNAPSHOT.
  })
  default = null
}

variable "ARCRCCFG_ArtifactRegistryRepositoryMode" {
  type = string
  validation {
    condition = contains([
      "STANDARD_REPOSITORY",
      "VIRTUAL_REPOSITORY",
      "REMOTE_REPOSITORY"
    ], var.ARCRCCFG_ArtifactRegistryRepositoryMode)
    error_message = "Valid inputs for | variable: mode | are: STANDARD_REPOSITORY, VIRTUAL_REPOSITORY, REMOTE_REPOSITORY"
  }
  default = "STANDARD_REPOSITORY"
}

variable "ARCRCCFG_ArtifactRegistryRepositoryVirtualRepositoryConfig" {
  type = object({
    upstream_policies = list(object({
      id         = string
      repository = string
      priority   = number
    }))
  })
  default = null
}

variable "ARCRCCFG_ArtifactRegistryRepositoryCleanupPolicies" {
  type = object({
    id     = string
    action = string #Possible values are: DELETE, KEEP
    condition = object({
      tag_state             = string #Default value is ANY. Possible values are: TAGGED, UNTAGGED, ANY
      tag_prefixes          = string
      version_name_prefixes = string
      package_name_prefixes = string
      older_than            = string
      newer_than            = string
    })
    most_recent_versions = object({
      package_name_prefixes = string
      keep_count            = number
    })
  })
  default = null
}

variable "ARCRCCFG_ArtifactRegistryRepositoryRemoteRepositoryConfig" {
  type = object({
    apt_repository = object({
      public_repository = object({
        repository_base = string #DEBIAN, UBUNTU
        repository_path = string
      })
    })
    docker_repository = object({
      public_repository = string #Possible values are: DOCKER_HUB
      custom_repository = object({
        uri = string
      })
    })
    maven_repository = object({
      public_repository = string #Possible values are: MAVEN_CENTRAL
      custom_repository = object({
        uri = string
      })
    })
    npm_repository = object({
      public_repository = string #Default value is NPMJS. Possible values are: NPMJS
      custom_repository = object({
        uri = string
      })
    })
    python_repository = object({
      public_repository = string #Default value is PYPI. Possible values are: PYPI
      custom_repository = object({
        uri = string
      })
    })
    yum_repository = object({
      public_repository = object({
        repository_base = string #DEBIAN, UBUNTU.
        repository_path = string
      })
    })
    upstream_credentials = object({
      username_password_credentials = object({
        username                = string
        password_secret_version = string
      })
    })
    disable_upstream_validation = bool #If true, the remote repository upstream and upstream credentials will not be validated.
  })
  default = null
}

variable "ARCRCCFG_ArtifactRegistryRepositoryCleanupPolicyDryRun" {
  type    = bool
  default = null
}

variable "ARCRCCFG_SecretVersionSecretData" {
  type = string
}

variable "ARCRCCFG_SecretVersionEnabled" {
  type    = bool
  default = true
}

variable "ARCRCCFG_SecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.ARCRCCFG_SecretVersionDeletionPolicy)
    error_message = "The only valid options for ARCRCCFG_SecretVersionDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "ARCRCCFG_CloudBuildTriggerServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "ARCRCCFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "ARCRCCFG_CloudBuildTriggerRoleId" {
  type = string
}

variable "ARCRCCFG_CloudBuildTriggerRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.ARCRCCFG_CloudBuildTriggerRoleStage)
    error_message = "Variable ARCRCCFG_CloudBuildTriggerRoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "ARCRCCFG_CloudBuildTriggerYamlPath" {
  type    = string
  default = "cloudbuild.yaml"
}

variable "ARCRCCFG_CloudBuildTriggerGithubRepoName" {
  type = string
}

variable "ARCRCCFG_CloudBuildTriggerBranchName" {
  type    = string
  default = "main"
}

variable "ARCRCCFG_CloudBuildTriggerBucketName" {
  type    = string
  default = "gs://dash_build_logs"
}

variable "ARCRCCFG_CloudRunConcurrentRequests" {
  type = number
  validation {
    condition     = var.ARCRCCFG_CloudRunConcurrentRequests >= 1 && var.ARCRCCFG_CloudRunConcurrentRequests <= 250
    error_message = "Variable ARCRCCFG_CloudRunConcurrentRequests must be greater than or equal to 1 and less than or equal to 250"
  }
  default = 80
}

variable "ARCRCCFG_CloudRunRequestsTimeout" {
  type = number
  validation {
    condition     = var.ARCRCCFG_CloudRunRequestsTimeout >= 1 && var.ARCRCCFG_CloudRunRequestsTimeout <= 3000
    error_message = "Variable ARCRCCFG_CloudRunRequestsTimeout must be greater than or equal to 1 second and less than or equal to 900 seconds"
  }
  default = 300
}

variable "ARCRCCFG_CloudRunPortNumber" {
  type = number
  validation {
    condition     = var.ARCRCCFG_CloudRunPortNumber >= 1 && var.ARCRCCFG_CloudRunPortNumber <= 65535
    error_message = "Variable ARCRCCFG_CloudRunPortNumber must be greater than 1 and less than 65335"
  }
  default = 8080
}

variable "ARCRCCFG_CloudRunMinInstances" {
  type = number
  validation {
    condition     = var.ARCRCCFG_CloudRunMinInstances >= 0
    error_message = "Variable ARCRCCFG_CloudRunMinInstances must be greater than or equal to 0"
  }
  default = 0
}

variable "ARCRCCFG_CloudRunMaxInstances" {
  type = number
  validation {
    condition     = var.ARCRCCFG_CloudRunMaxInstances >= 1 && var.ARCRCCFG_CloudRunMaxInstances <= 10
    error_message = "Variable ARCRCCFG_CloudRunMaxInstances must be greater than or equal to 1 instance or less than or equal to 10 instances"
  }
  default = 5
}

variable "ARCRCCFG_CloudRunEnvVariableName" {
  type    = string
  default = "ENV_VARS"
}

variable "ARCRCCFG_CloudRunVpcConnector" {
  type    = string
  default = "dash"
}

variable "ARCRCCFG_CloudRunAmountOfMemory" {
  type = number
  validation {
    condition     = var.ARCRCCFG_CloudRunAmountOfMemory >= 1 && var.ARCRCCFG_CloudRunAmountOfMemory <= 16
    error_message = "Variable ARCRCCFG_CloudRunAmountOfMemory must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "ARCRCCFG_CloudRunNumberOfVcpus" {
  type = number
  validation {
    condition     = contains([1, 2, 4], var.ARCRCCFG_CloudRunNumberOfVcpus)
    error_message = "Variable ARCRCCFG_CloudRunNumberOfVcpus must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "ARCRCCFG_CloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}

variable "ARCRCCFG_CloudRunAlertPolicyNotificationChannelId" {
  type    = string
  default = "11762886701350469070"
}

variable "ARCRCCFG_CloudRunAlertPolicyNotificationRateLimit" {
  type    = string
  default = "600s"
}

variable "ARCRCCFG_CloudRunAlertPolicyAutoClose" {
  type    = string
  default = "604800s"
}