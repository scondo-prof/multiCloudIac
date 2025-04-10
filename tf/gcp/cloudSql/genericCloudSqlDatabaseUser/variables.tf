variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_user#argument-reference

variable "databaseUserInstance" {
  type = string
}

variable "databaseUserPassword" {
  type    = string
  default = null
}

variable "databaseUserType" {
  type = string
  validation {
    condition = var.databaseUserType == null || can(contains([
      "BUILT_IN",
      "CLOUD_IAM_USER",
      "CLOUD_IAM_SERVICE_ACCOUNT",
      "CLOUD_IAM_GROUP",
      "CLOUD_IAM_GROUP_USER",
      "CLOUD_IAM_GROUP_SERVICE_ACCOUNT"
    ], var.databaseUserType))
    error_message = "Valid inputs for | variable: var.databaseUserType | are: BUILT_IN, CLOUD_IAM_USER, CLOUD_IAM_SERVICE_ACCOUNT, CLOUD_IAM_GROUP, CLOUD_IAM_GROUP_USER, CLOUD_IAM_GROUP_SERVICE_ACCOUNT"
  }
  default = null
}

variable "databaseUserDeletionPolicy" {
  type = string
  validation {
    condition = var.databaseUserDeletionPolicy == null || can(contains([
      "ABANDON"
    ], var.databaseUserDeletionPolicy))
    error_message = "Valid inputs for | variable: var.databaseUserDeletionPolicy | are: ABANDON"
  }
  default = null
}

variable "databaseUserHost" {
  type    = string
  default = null
}

variable "databaseUserPasswordPolicy" {
  type = object({
    allowed_failed_attempts      = optional(number, null)
    password_expiration_duration = optional(number, null)
    enable_failed_attempts_check = optional(bool, null)
    enable_password_verification = optional(bool, null)
  })
  default = null
}