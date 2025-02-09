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

variable "SPCRDFG_CRDPRFG_SecretVersionSecretData" {
  type = string
}

variable "SPCRDFG_CRDPRFG_SecretVersionEnabled" {
  type    = bool
  default = true
}

variable "SPCRDFG_CRDPRFG_SecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.SPCRDFG_CRDPRFG_SecretVersionDeletionPolicy)
    error_message = "The only valid options for SPCRDFG_CRDPRFG_SecretVersionDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "SPCRDFG_CloudBuildTriggerRoleId" {
  type = string
}

variable "SPCRDFG_CRDPRFG_CloudBuildTriggerRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.SPCRDFG_CRDPRFG_CloudBuildTriggerRoleStage)
    error_message = "Variable SPCRDFG_CRDPRFG_CloudBuildTriggerRoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "SPCRDFG_CRDPRFG_CloudBuildTriggerYamlPath" {
  type    = string
  default = "cloudbuild.yaml"
}

variable "SPCRDFG_CloudBuildTriggerGithubRepoName" {
  type = string
}

variable "SPCRDFG_CRDPRFG_CloudBuildTriggerBranchName" {
  type    = string
  default = "main"
}

variable "SPCRDFG_CloudBuildTriggerArtifactRepoName" {
  type    = string
  default = "dash-apps"
}

variable "SPCRDFG_CRDPRFG_CloudBuildTriggerBucketName" {
  type    = string
  default = "gs://dash_build_logs"
}

variable "SPCRDFG_CRDPRFG_CloudRunConcurrentRequests" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPRFG_CloudRunConcurrentRequests >= 1 && var.SPCRDFG_CRDPRFG_CloudRunConcurrentRequests <= 250
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunConcurrentRequests must be greater than or equal to 1 and less than or equal to 250"
  }
  default = 80
}

variable "SPCRDFG_CRDPRFG_CloudRunRequestsTimeout" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPRFG_CloudRunRequestsTimeout >= 1 && var.SPCRDFG_CRDPRFG_CloudRunRequestsTimeout <= 3000
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunRequestsTimeout must be greater than or equal to 1 second and less than or equal to 900 seconds"
  }
  default = 300
}

variable "SPCRDFG_CRDPRFG_CloudRunPortNumber" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPRFG_CloudRunPortNumber >= 1 && var.SPCRDFG_CRDPRFG_CloudRunPortNumber <= 65535
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunPortNumber must be greater than 1 and less than 65335"
  }
  default = 8080
}

variable "SPCRDFG_CRDPRFG_CloudRunMinInstances" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPRFG_CloudRunMinInstances >= 0
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunMinInstances must be greater than or equal to 0"
  }
  default = 0
}

variable "SPCRDFG_CRDPRFG_CloudRunMaxInstances" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPRFG_CloudRunMaxInstances >= 1 && var.SPCRDFG_CRDPRFG_CloudRunMaxInstances <= 10
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunMaxInstances must be greater than or equal to 1 instance or less than or equal to 10 instances"
  }
  default = 5
}

variable "SPCRDFG_CRDPRFG_CloudRunEnvVariableName" {
  type    = string
  default = "ENV_VARS"
}

variable "SPCRDFG_CRDPRFG_CloudRunVpcConnector" {
  type    = string
  default = "dash"
}

variable "SPCRDFG_CRDPRFG_CloudRunAmountOfMemory" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPRFG_CloudRunAmountOfMemory >= 1 && var.SPCRDFG_CRDPRFG_CloudRunAmountOfMemory <= 16
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunAmountOfMemory must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus" {
  type = number
  validation {
    condition     = contains([1, 2, 4], var.SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus)
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SPCRDFG_CRDPRFG_CloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}

variable "SPCRDFG_CRDPRFG_CloudRunAlertPolicyNotificationChannelId" {
  type    = string
  default = "10899791015822106623"
}

variable "SPCRDFG_CRDPRFG_CloudRunAlertPolicyNotificationRateLimit" {
  type    = string
  default = "600s"
}

variable "SPCRDFG_CRDPRFG_CloudRunAlertPolicyAutoClose" {
  type    = string
  default = "604800s"
}

variable "SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent >= 0 && var.SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent <= 100
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent >= 0 && var.SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent <= 100
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 80
}

variable "SPCRDFG_CRDPRFG_CloudRunInfraAlertPolicyNotificationChannels" {
  type    = list(string)
  default = ["projects/p3-prod-aa94d/notificationChannels/16159316952891778334"]
}

variable "additionalLabels" {
  type    = map(string)
  default = {}
}

variable "SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent >= 0 && var.SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent <= 100
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent >= 0 && var.SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent <= 100
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 80
}

#--

variable "SPCRDFG_CRDPFG_SecretVersionSecretData" {
  type = string
}

variable "SPCRDFG_CRDPFG_SecretVersionEnabled" {
  type    = bool
  default = true
}

variable "SPCRDFG_CRDPFG_SecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.SPCRDFG_CRDPFG_SecretVersionDeletionPolicy)
    error_message = "The only valid options for SPCRDFG_CRDPFG_SecretDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "SPCRDFG_CRDPFG_CloudBuildTriggerServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "SPCRDFG_CRDPFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "SPCRDFG_CRDPFG_CloudBuildTriggerRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.SPCRDFG_CRDPFG_CloudBuildTriggerRoleStage)
    error_message = "Variable SPCRDFG_CRDPFG_RoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "SPCRDFG_CRDPFG_CloudBuildTriggerYamlPath" {
  type    = string
  default = "cloudbuild.yaml"
}

variable "SPCRDFG_CRDPFG_CloudBuildTriggerBranchName" {
  type    = string
  default = "main"
}

variable "SPCRDFG_CRDPFG_CloudBuildTriggerBucketName" {
  type    = string
  default = "gs://dash_build_logs"
}

variable "SPCRDFG_CRDPFG_CloudRunConcurrentRequests" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPFG_CloudRunConcurrentRequests >= 1 && var.SPCRDFG_CRDPFG_CloudRunConcurrentRequests <= 250
    error_message = "Variable SPCRDFG_CRDPFG_ConcurrentRequests must be greater than or equal to 1 and less than or equal to 250"
  }
  default = 80
}

variable "SPCRDFG_CRDPFG_CloudRunRequestsTimeout" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPFG_CloudRunRequestsTimeout >= 1 && var.SPCRDFG_CRDPFG_CloudRunRequestsTimeout <= 3000
    error_message = "Variable SPCRDFG_CRDPFG_RequestsTimeout must be greater than or equal to 1 second and less than or equal to 900 seconds"
  }
  default = 300
}

variable "SPCRDFG_CRDPFG_CloudRunPortNumber" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPFG_CloudRunPortNumber >= 1 && var.SPCRDFG_CRDPFG_CloudRunPortNumber <= 65535
    error_message = "Variable SPCRDFG_CRDPFG_PortNumber must be greater than 1 and less than 65335"
  }
  default = 8080
}

variable "SPCRDFG_CRDPFG_CloudRunMinInstances" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPFG_CloudRunMinInstances >= 0
    error_message = "Variable SPCRDFG_CRDPFG_MinInstances must be greater than or equal to 0"
  }
  default = 0
}

variable "SPCRDFG_CRDPFG_CloudRunMaxInstances" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPFG_CloudRunMaxInstances >= 1 && var.SPCRDFG_CRDPFG_CloudRunMaxInstances <= 10
    error_message = "Variable SPCRDFG_CRDPFG_MaxInstances must be greater than or equal to 1 instance or less than or equal to 10 instances"
  }
  default = 5
}

variable "SPCRDFG_CRDPFG_CloudRunVpcConnector" {
  type    = string
  default = "dash"
}

variable "SPCRDFG_CRDPFG_CloudRunNumberOfVcpus" {
  type = number
  validation {
    condition     = contains([1, 2, 4], var.SPCRDFG_CRDPFG_CloudRunNumberOfVcpus)
    error_message = "Variable SPCRDFG_CRDPFG_NumberOfVcpus must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SPCRDFG_CRDPFG_CloudRunAmountOfMemory" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPFG_CloudRunAmountOfMemory >= 1 && var.SPCRDFG_CRDPFG_CloudRunAmountOfMemory <= 16
    error_message = "Variable SPCRDFG_CRDPFG_AmountOfMemory must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SPCRDFG_CRDPFG_CloudRunEnvVariableName" {
  type    = string
  default = "ENV_VARS"
}



variable "SPCRDFG_CRDPFG_CloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}

variable "SPCRDFG_CRDPFG_CloudRunAlertPolicyNotificationChannelId" {
  type    = string
  default = "11762886701350469070"
}

variable "SPCRDFG_CRDPFG_CloudRunAlertPolicyNotificationRateLimit" {
  type    = string
  default = "600s"
}

variable "SPCRDFG_CRDPFG_CloudRunAlertPolicyAutoClose" {
  type    = string
  default = "604800s"
}

variable "SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent >= 0 && var.SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent <= 100
    error_message = "Variable SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent >= 0 && var.SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent <= 100
    error_message = "Variable SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 80
}

variable "SPCRDFG_CRDPFG_CloudRunInfraAlertPolicyNotificationChannels" {
  type    = list(string)
  default = ["projects/p3-prod-aa94d/notificationChannels/7275734209150042716"]
}

variable "SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent >= 0 && var.SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent <= 100
    error_message = "Variable SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent >= 0 && var.SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent <= 100
    error_message = "Variable SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 80
}