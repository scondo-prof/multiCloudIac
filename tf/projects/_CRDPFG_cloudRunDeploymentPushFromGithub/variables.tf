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

variable "CRDPFG_SecretVersionSecretData" {
  type = string
}

variable "CRDPFG_SecretVersionEnabled" {
  type    = bool
  default = true
}

variable "CRDPFG_SecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.CRDPFG_SecretVersionDeletionPolicy)
    error_message = "The only valid options for CRDPFG_SecretVersionDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "CRDPFG_CloudBuildTriggerServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "CRDPFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "CRDPFG_CloudBuildTriggerRoleId" {
  type = string
}

variable "CRDPFG_CloudBuildTriggerRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.CRDPFG_CloudBuildTriggerRoleStage)
    error_message = "Variable CRDPFG_CloudBuildTriggerRoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "CRDPFG_CloudBuildTriggerYamlPath" {
  type    = string
  default = "cloudbuild.yaml"
}

variable "CRDPFG_CloudBuildTriggerGithubRepoName" {
  type = string
}

variable "CRDPFG_CloudBuildTriggerBranchName" {
  type    = string
  default = "main"
}

variable "CRDPFG_CloudBuildTriggerArtifactRepoName" {
  type    = string
  default = "dash-apps"
}

variable "CRDPFG_CloudBuildTriggerBucketName" {
  type    = string
  default = "gs://dash_build_logs"
}

variable "CRDPFG_CloudRunConcurrentRequests" {
  type = number
  validation {
    condition     = var.CRDPFG_CloudRunConcurrentRequests >= 1 && var.CRDPFG_CloudRunConcurrentRequests <= 250
    error_message = "Variable CRDPFG_CloudRunConcurrentRequests must be greater than or equal to 1 and less than or equal to 250"
  }
  default = 80
}

variable "CRDPFG_CloudRunRequestsTimeout" {
  type = number
  validation {
    condition     = var.CRDPFG_CloudRunRequestsTimeout >= 1 && var.CRDPFG_CloudRunRequestsTimeout <= 3000
    error_message = "Variable CRDPFG_CloudRunRequestsTimeout must be greater than or equal to 1 second and less than or equal to 900 seconds"
  }
  default = 300
}

variable "CRDPFG_CloudRunPortNumber" {
  type = number
  validation {
    condition     = var.CRDPFG_CloudRunPortNumber >= 1 && var.CRDPFG_CloudRunPortNumber <= 65535
    error_message = "Variable CRDPFG_CloudRunPortNumber must be greater than 1 and less than 65335"
  }
  default = 8080
}

variable "CRDPFG_CloudRunMinInstances" {
  type = number
  validation {
    condition     = var.CRDPFG_CloudRunMinInstances >= 0
    error_message = "Variable CRDPFG_CloudRunMinInstances must be greater than or equal to 0"
  }
  default = 0
}

variable "CRDPFG_CloudRunMaxInstances" {
  type = number
  validation {
    condition     = var.CRDPFG_CloudRunMaxInstances >= 1 && var.CRDPFG_CloudRunMaxInstances <= 10
    error_message = "Variable CRDPFG_CloudRunMaxInstances must be greater than or equal to 1 instance or less than or equal to 10 instances"
  }
  default = 5
}

variable "CRDPFG_CloudRunEnvVariableName" {
  type    = string
  default = "ENV_VARS"
}

variable "CRDPFG_CloudRunVpcConnector" {
  type    = string
  default = "dash"
}

variable "CRDPFG_CloudRunAmountOfMemory" {
  type = number
  validation {
    condition     = var.CRDPFG_CloudRunAmountOfMemory >= 1 && var.CRDPFG_CloudRunAmountOfMemory <= 16
    error_message = "Variable CRDPFG_CloudRunAmountOfMemory must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "CRDPFG_CloudRunNumberOfVcpus" {
  type = number
  validation {
    condition     = contains([1, 2, 4], var.CRDPFG_CloudRunNumberOfVcpus)
    error_message = "Variable CRDPFG_CloudRunNumberOfVcpus must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "CRDPFG_CloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}

variable "CRDPFG_CloudRunAlertPolicyNotificationChannelId" {
  type    = string
  default = "11762886701350469070"
}

variable "CRDPFG_CloudRunAlertPolicyNotificationRateLimit" {
  type    = string
  default = "600s"
}

variable "CRDPFG_CloudRunAlertPolicyAutoClose" {
  type    = string
  default = "604800s"
}

#-- 

variable "CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent >= 0 && var.CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent <= 100
    error_message = "Variable CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent" {
  type = number
  validation {
    condition     = var.CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent >= 0 && var.CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent <= 100
    error_message = "Variable CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 80
}

variable "CRDPFG_CloudRunInfraAlertPolicyNotificationChannels" {
  type = list(string)
}

variable "additionalLabels" {
  type    = map(string)
  default = {}
}

#--

variable "CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent >= 0 && var.CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent <= 100
    error_message = "Variable CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent" {
  type = number
  validation {
    condition     = var.CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent >= 0 && var.CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent <= 100
    error_message = "Variable CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}