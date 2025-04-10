variable "resourceName" {
  type = string
}

variable "gcpRegion" {
  type = string
}

variable "cloudBuildTriggerServiceAccountAccountId" {
  type = string
}

variable "cloudBuildTriggerServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "cloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "cloudBuildTriggerServiceAccountRoleId" {
  type = string
}

variable "cloudBuildTriggerServiceAccountRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.cloudBuildTriggerServiceAccountRoleStage)
    error_message = "Variable cloudBuildTriggerServiceAccountRoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "cloudBuildTriggerYamlPath" {
  type = string
  default = "buildspec.yaml"
}

variable "cloudBuildTriggerGithubRepoName" {
  type = string
}

variable "cloudBuildTriggerBranchName" {
  type = string
  default = "main"
}

variable "cloudBuildTriggerArtifactRepoName" {
  type = string
}

variable "gcpProjectId" {
  type = string
}

variable "cloudBuildTriggerBucketName" {
  type    = string
  default = "gs://dash_build_logs"
}

variable "cloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}