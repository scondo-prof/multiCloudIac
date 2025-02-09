variable "githubOrganization" {
  type    = string
  default = "Bear-Cognition"
}

variable "githubToken" {
  type      = string
  sensitive = true
}

variable "resourceName" {
  type = string
}

variable "GOSAS_GhOrgSecretVisibility" {
  type = string
  validation {
    condition     = contains(["all", "private", "selected"], var.GOSAS_GhOrgSecretVisibility)
    error_message = "Variable GOSAS_GhOrgSecretVisibility can only be set to the following values: all, private, selected"
  }
  default = "private"
}

variable "GOSAS_GhOrgSecretPlaintextValue" {
  type      = string
  sensitive = true
}

variable "GOSAS_GhOrgSecretRepositoryIds" {
  type    = list(string)
  default = null
}

variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "GOSAS_AwsSecretKmsKeyId" {
  type    = string
  default = null
}

variable "GOSAS_AwsSecretPolicy" {
  type    = string
  default = null
}

variable "GOSAS_AwsSecretRecoveryWindowInDays" {
  type    = number
  default = 7
}

variable "GOSAS_AwsSecretReplica" {
  type = object({
    kms_key_id = string
    region     = string
  })
  default = null
}

variable "GOSAS_AwsSecretForceSecretOverwrite" {
  type    = bool
  default = true
}

variable "projectName" {
  type = string
}

variable "creator" {
  type    = string
  default = "Scott Condo"
}

variable "deployedDate" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

variable "GOSAS_AwsSecretVersionAdditionalSecretString" {
  type    = map(string)
  default = null
}

variable "GOSAS_AwsSecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "GOSAS_AwsSecretVersionStages" {
  type    = list(string)
  default = null
}