variable "gcpProjectId" {
  type    = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "resourceName" {
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

variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#---

variable "SIBS_SPCRDFG_CRDPRFG_SecretVersionEnabled" {
  type    = bool
  default = true
}

variable "SIBS_SPCRDFG_CRDPRFG_SecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.SIBS_SPCRDFG_CRDPRFG_SecretVersionDeletionPolicy)
    error_message = "The only valid options for SIBS_SPCRDFG_CRDPRFG_SecretVersionDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "SIBS_SPCRDFG_CloudBuildTriggerRoleId" {
  type = string
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerRoleStage)
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerRoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerYamlPath" {
  type    = string
  default = "cloudbuild.yaml"
}

variable "SIBS_SPCRDFG_CloudBuildTriggerGithubRepoName" {
  type = string
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerBranchName" {
  type    = string
  default = "main"
}

variable "SIBS_SPCRDFG_CloudBuildTriggerArtifactRepoName" {
  type    = string
  default = "dash-apps"
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerBucketName" {
  type    = string
  default = "gs://dash_build_logs"
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunConcurrentRequests" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunConcurrentRequests >= 1 && var.SIBS_SPCRDFG_CRDPRFG_CloudRunConcurrentRequests <= 250
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunConcurrentRequests must be greater than or equal to 1 and less than or equal to 250"
  }
  default = 80
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunRequestsTimeout" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunRequestsTimeout >= 1 && var.SIBS_SPCRDFG_CRDPRFG_CloudRunRequestsTimeout <= 3000
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunRequestsTimeout must be greater than or equal to 1 second and less than or equal to 900 seconds"
  }
  default = 300
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunPortNumber" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunPortNumber >= 1 && var.SIBS_SPCRDFG_CRDPRFG_CloudRunPortNumber <= 65535
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunPortNumber must be greater than 1 and less than 65335"
  }
  default = 8080
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunMinInstances" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunMinInstances >= 0
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunMinInstances must be greater than or equal to 0"
  }
  default = 0
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunMaxInstances" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunMaxInstances >= 1 && var.SIBS_SPCRDFG_CRDPRFG_CloudRunMaxInstances <= 10
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunMaxInstances must be greater than or equal to 1 instance or less than or equal to 10 instances"
  }
  default = 5
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunEnvVariableName" {
  type    = string
  default = "ENV_VARS"
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunVpcConnector" {
  type    = string
  default = "dash"
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunAmountOfMemory" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunAmountOfMemory >= 1 && var.SIBS_SPCRDFG_CRDPRFG_CloudRunAmountOfMemory <= 16
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunAmountOfMemory must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus" {
  type = number
  validation {
    condition     = contains([1, 2, 4], var.SIBS_SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus)
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunAlertPolicyNotificationChannelId" {
  type    = string
  default = "10899791015822106623"
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunAlertPolicyNotificationRateLimit" {
  type    = string
  default = "600s"
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunAlertPolicyAutoClose" {
  type    = string
  default = "604800s"
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent >= 0 && var.SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent <= 100
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent >= 0 && var.SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent <= 100
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 80
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunInfraAlertPolicyNotificationChannels" {
  type    = list(string)
  default = ["projects/p3-prod-aa94d/notificationChannels/16159316952891778334"]
}

variable "additionalLabels" {
  type    = map(string)
  default = {}
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent >= 0 && var.SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent <= 100
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent >= 0 && var.SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent <= 100
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 80
}

#--

variable "SIBS_SPCRDFG_CRDPFG_SecretVersionEnabled" {
  type    = bool
  default = true
}

variable "SIBS_SPCRDFG_CRDPFG_SecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.SIBS_SPCRDFG_CRDPFG_SecretVersionDeletionPolicy)
    error_message = "The only valid options for SIBS_SPCRDFG_CRDPFG_SecretDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerRoleStage)
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_RoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerYamlPath" {
  type    = string
  default = "cloudbuild.yaml"
}

variable "SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerBranchName" {
  type    = string
  default = "main"
}

variable "SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerBucketName" {
  type    = string
  default = "gs://dash_build_logs"
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunConcurrentRequests" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPFG_CloudRunConcurrentRequests >= 1 && var.SIBS_SPCRDFG_CRDPFG_CloudRunConcurrentRequests <= 250
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_ConcurrentRequests must be greater than or equal to 1 and less than or equal to 250"
  }
  default = 80
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunRequestsTimeout" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPFG_CloudRunRequestsTimeout >= 1 && var.SIBS_SPCRDFG_CRDPFG_CloudRunRequestsTimeout <= 3000
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_RequestsTimeout must be greater than or equal to 1 second and less than or equal to 900 seconds"
  }
  default = 300
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunPortNumber" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPFG_CloudRunPortNumber >= 1 && var.SIBS_SPCRDFG_CRDPFG_CloudRunPortNumber <= 65535
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_PortNumber must be greater than 1 and less than 65335"
  }
  default = 8080
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunMinInstances" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPFG_CloudRunMinInstances >= 0
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_MinInstances must be greater than or equal to 0"
  }
  default = 0
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunMaxInstances" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPFG_CloudRunMaxInstances >= 1 && var.SIBS_SPCRDFG_CRDPFG_CloudRunMaxInstances <= 10
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_MaxInstances must be greater than or equal to 1 instance or less than or equal to 10 instances"
  }
  default = 5
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunVpcConnector" {
  type    = string
  default = "dash"
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunNumberOfVcpus" {
  type = number
  validation {
    condition     = contains([1, 2, 4], var.SIBS_SPCRDFG_CRDPFG_CloudRunNumberOfVcpus)
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_NumberOfVcpus must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunAmountOfMemory" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPFG_CloudRunAmountOfMemory >= 1 && var.SIBS_SPCRDFG_CRDPFG_CloudRunAmountOfMemory <= 16
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_AmountOfMemory must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunEnvVariableName" {
  type    = string
  default = "ENV_VARS"
}



variable "SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunAlertPolicyNotificationChannelId" {
  type    = string
  default = "11762886701350469070"
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunAlertPolicyNotificationRateLimit" {
  type    = string
  default = "600s"
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunAlertPolicyAutoClose" {
  type    = string
  default = "604800s"
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent >= 0 && var.SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent <= 100
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent >= 0 && var.SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent <= 100
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 80
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunInfraAlertPolicyNotificationChannels" {
  type    = list(string)
  default = ["projects/p3-prod-aa94d/notificationChannels/7275734209150042716"]
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent >= 0 && var.SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent <= 100
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent >= 0 && var.SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent <= 100
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 80
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user#argument-reference
variable "SIBS_IUWPAKSMS_UWP_IamUserPath" {
  type    = string
  default = null
}

variable "SIBS_IUWPAKSMS_UWP_IamUserPermissionBoundary" {
  type    = string
  default = null
}

variable "SIBS_IUWPAKSMS_UWP_IamUserForceDestroy" {
  type    = bool
  default = null
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "SIBS_IUWPAKSMS_UWP_IamPolicyDescription" {
  type    = string
  default = null
}
variable "SIBS_IUWPAKSMS_UWP_IamPolicyNamePrefix" {
  type    = string
  default = null
}
variable "SIBS_IUWPAKSMS_UWP_IamPolicyPath" {
  type    = string
  default = "/"
}
variable "SIBS_IUWPAKSMS_UWP_IamPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "SIBS_IUWPAKSMS_UWP_IamPolicyDocumentStatements" {
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



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key#argument-reference
variable "SIBS_IUWPAKSMS_IamAccessKeyPgpKey" {
  type    = string
  default = null
}

variable "SIBS_IUWPAKSMS_IamAccessKeyStatus" {
  type = string
  validation {
    condition = var.SIBS_IUWPAKSMS_IamAccessKeyStatus == null || can(contains([
      "Active",
      "Inactive"
    ], var.SIBS_IUWPAKSMS_IamAccessKeyStatus))
    error_message = "Valid inputs for | variable: var.SIBS_IUWPAKSMS_IamAccessKeyStatus | are: Active, and Inactive"
  }
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret#argument-reference

variable "SIBS_IUWPAKSMS_SecretDescription" {
  type    = string
  default = null
}

variable "SIBS_IUWPAKSMS_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "SIBS_IUWPAKSMS_SecretNamePrefix" {
  type    = string
  default = null
}

variable "SIBS_IUWPAKSMS_SecretPolicy" {
  type    = string
  default = null
}

variable "SIBS_IUWPAKSMS_SecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "SIBS_IUWPAKSMS_SecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "SIBS_IUWPAKSMS_SecretForceSecretOverwrite" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference

variable "SIBS_IUWPAKSMS_SecretVersionSecretString" {
  type    = map(string)
  default = {}
}

variable "SIBS_IUWPAKSMS_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "SIBS_IUWPAKSMS_SecretVersionStages" {
  type    = list(string)
  default = null
}

#---



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#argument-reference
variable "SIBS_BWV_S3BucketPrefix" {
  type    = string
  default = null
}

variable "SIBS_BWV_S3BucketForceDestroy" {
  type    = bool
  default = null
}

variable "SIBS_BWV_S3BucketObjectLockEnabled" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning#argument-reference
variable "SIBS_BWV_S3BucketVersioningConfigurationStatus" {
  type = string
  validation {
    condition = contains([
      "Enabled",
      "Suspended",
      "Disabled"
    ], var.SIBS_BWV_S3BucketVersioningConfigurationStatus)
    error_message = "Valid inputs for | variable: var.SIBS_BWV_S3BucketVersioningConfigurationStatus | are: Enabled, Suspended, or Disabled"
  }
}

variable "SIBS_BWV_S3BucketVersioningConfigurationMfaDelete" {
  type = string
  validation {
    condition = var.SIBS_BWV_S3BucketVersioningConfigurationMfaDelete == null || can(contains([
      "Enabled",
      "Disabled"
    ], var.SIBS_BWV_S3BucketVersioningConfigurationMfaDelete))
    error_message = "Valid inputs for | variable: var.SIBS_BWV_S3BucketVersioningConfigurationMfaDelete | are: Enabled, or Disabled"
  }
  default = null
}

variable "SIBS_BWV_S3BucketVersioningExpectedBucketOwner" {
  type    = string
  default = null
}

variable "SIBS_BWV_S3BucketVersioningMfa" {
  type    = string
  default = null
}

#---

variable "SIBS_SWV_Staging_SecretKmsKeyId" {
  type    = string
  default = null
}


variable "SIBS_SWV_Staging_SecretPolicy" {
  type    = string
  default = null
}

variable "SIBS_SWV_Staging_SecretRecoveryWindowInDays" {
  type    = number
  default = 7
}

variable "SIBS_SWV_Staging_SecretReplica" {
  type = object({
    kms_key_id = string
    region     = string
  })
  default = null
}

variable "SIBS_SWV_Staging_SecretForceSecretOverwrite" {
  type    = bool
  default = true
}

variable "SIBS_SWV_Staging_SecretVersionSecretString" {
  type    = map(string)
  default = {}
}

variable "SIBS_SWV_Staging_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "SIBS_SWV_Staging_SecretVersionStages" {
  type    = list(string)
  default = null
}

#---

variable "SIBS_SWV_Prod_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "SIBS_SWV_Prod_SecretPolicy" {
  type    = string
  default = null
}

variable "SIBS_SWV_Prod_SecretRecoveryWindowInDays" {
  type    = number
  default = 7
}

variable "SIBS_SWV_Prod_SecretReplica" {
  type = object({
    kms_key_id = string
    region     = string
  })
  default = null
}

variable "SIBS_SWV_Prod_SecretForceSecretOverwrite" {
  type    = bool
  default = true
}

variable "SIBS_SWV_Prod_SecretVersionSecretString" {
  type    = map(string)
  default = {}
}

variable "SIBS_SWV_Prod_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "SIBS_SWV_Prod_SecretVersionStages" {
  type    = list(string)
  default = null
}

#---
