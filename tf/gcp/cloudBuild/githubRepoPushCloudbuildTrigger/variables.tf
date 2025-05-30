variable "resourceName" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "serviceAccountAccountId" {
  type = string
}

variable "serviceAccountDisabled" {
  type    = bool
  default = false
}

variable "serviceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "serviceAccountRoleId" {
  type = string
}

variable "serviceAccountRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.serviceAccountRoleStage)
    error_message = "Variable serviceAccountRoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "cloudBuildTriggerYamlPath" {
  type    = string
  default = "cloudbuild.yaml"
}

variable "cloudBuildTriggerGithubRepoName" {
  type = string
}

variable "cloudBuildTriggerBranchName" {
  type    = string
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