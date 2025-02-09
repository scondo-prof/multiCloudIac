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

variable "CRDPRFG_SecretVersionSecretData" {
  type = string
}

variable "CRDPRFG_SecretVersionEnabled" {
  type    = bool
  default = true
}

variable "CRDPRFG_SecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.CRDPRFG_SecretVersionDeletionPolicy)
    error_message = "The only valid options for CRDPRFG_SecretVersionDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "CRDPRFG_CloudBuildTriggerServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "CRDPRFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "CRDPRFG_CloudBuildTriggerRoleId" {
  type = string
}

variable "CRDPRFG_CloudBuildTriggerRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.CRDPRFG_CloudBuildTriggerRoleStage)
    error_message = "Variable CRDPRFG_CloudBuildTriggerRoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "CRDPRFG_CloudBuildTriggerYamlPath" {
  type    = string
  default = "cloudbuild.yaml"
}

variable "CRDPRFG_CloudBuildTriggerGithubRepoName" {
  type = string
}

variable "CRDPRFG_CloudBuildTriggerBranchName" {
  type    = string
  default = "main"
}

variable "CRDPRFG_CloudBuildTriggerArtifactRepoName" {
  type    = string
  default = "dash-apps"
}

variable "CRDPRFG_CloudBuildTriggerBucketName" {
  type    = string
  default = "gs://dash_build_logs"
}

variable "CRDPRFG_CloudRunConcurrentRequests" {
  type = number
  validation {
    condition = var.CRDPRFG_CloudRunConcurrentRequests >= 1 && var.CRDPRFG_CloudRunConcurrentRequests <= 250
    error_message = "Variable CRDPRFG_CloudRunConcurrentRequests must be greater than or equal to 1 and less than or equal to 250"
  }
  default = 80
}

variable "CRDPRFG_CloudRunRequestsTimeout" {
  type = number
  validation {
    condition = var.CRDPRFG_CloudRunRequestsTimeout >= 1 && var.CRDPRFG_CloudRunRequestsTimeout <= 3000
    error_message = "Variable CRDPRFG_CloudRunRequestsTimeout must be greater than or equal to 1 second and less than or equal to 900 seconds"
  }
  default = 300
}

variable "CRDPRFG_CloudRunPortNumber" {
  type = number
  validation {
    condition = var.CRDPRFG_CloudRunPortNumber >= 1 && var.CRDPRFG_CloudRunPortNumber <= 65535
    error_message = "Variable CRDPRFG_CloudRunPortNumber must be greater than 1 and less than 65335"
  }
  default = 8080
}

variable "CRDPRFG_CloudRunMinInstances" {
  type = number
  validation {
    condition = var.CRDPRFG_CloudRunMinInstances >= 0
    error_message = "Variable CRDPRFG_CloudRunMinInstances must be greater than or equal to 0"
  }
  default = 0
}

variable "CRDPRFG_CloudRunMaxInstances" {
  type = number
  validation {
    condition = var.CRDPRFG_CloudRunMaxInstances >=1 && var.CRDPRFG_CloudRunMaxInstances <= 10
    error_message = "Variable CRDPRFG_CloudRunMaxInstances must be greater than or equal to 1 instance or less than or equal to 10 instances"
  }
  default = 5
}

variable "CRDPRFG_CloudRunEnvVariableName" {
  type = string
  default = "ENV_VARS"
}

variable "CRDPRFG_CloudRunVpcConnector" {
  type    = string
  default = "dash"
}

variable "CRDPRFG_CloudRunAmountOfMemory" {
  type = number
  validation {
    condition = var.CRDPRFG_CloudRunAmountOfMemory >=1 && var.CRDPRFG_CloudRunAmountOfMemory <=16
    error_message = "Variable CRDPRFG_CloudRunAmountOfMemory must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "CRDPRFG_CloudRunNumberOfVcpus" {
  type = number
  validation {
    condition = contains([1,2,4], var.CRDPRFG_CloudRunNumberOfVcpus)
    error_message = "Variable CRDPRFG_CloudRunNumberOfVcpus must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "CRDPRFG_CloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}

variable "CRDPRFG_CloudRunAlertPolicyNotificationChannelId" {
  type    = string
  default = "11762886701350469070"
}

variable "CRDPRFG_CloudRunAlertPolicyNotificationRateLimit" {
  type    = string
  default = "600s"
}

variable "CRDPRFG_CloudRunAlertPolicyAutoClose" {
  type    = string
  default = "604800s"
}

#-- 

variable "CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent >= 0 && var.CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent <= 100
    error_message = "Variable CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent" {
  type = number
  validation {
    condition     = var.CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent >= 0 && var.CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent <= 100
    error_message = "Variable CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 80
}

variable "CRDPRFG_CloudRunInfraAlertPolicyNotificationChannels" {
  type = list(string)
}

variable "additionalLabels" {
  type    = map(string)
  default = {}
}

#--

variable "CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent >= 0 && var.CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent <= 100
    error_message = "Variable CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent" {
  type = number
  validation {
    condition     = var.CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent >= 0 && var.CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent <= 100
    error_message = "Variable CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}