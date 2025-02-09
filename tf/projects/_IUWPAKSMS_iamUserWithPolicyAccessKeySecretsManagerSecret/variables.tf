variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
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

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user#argument-reference
variable "IUWPAKSMS_UWP_IamUserPath" {
  type    = string
  default = null
}

variable "IUWPAKSMS_UWP_IamUserPermissionBoundary" {
  type    = string
  default = null
}

variable "IUWPAKSMS_UWP_IamUserForceDestroy" {
  type    = bool
  default = null
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "IUWPAKSMS_UWP_IamPolicyDescription" {
  type    = string
  default = null
}
variable "IUWPAKSMS_UWP_IamPolicyNamePrefix" {
  type    = string
  default = null
}
variable "IUWPAKSMS_UWP_IamPolicyPath" {
  type    = string
  default = "/"
}
variable "IUWPAKSMS_UWP_IamPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "IUWPAKSMS_UWP_IamPolicyDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key#argument-reference
variable "IUWPAKSMS_IamAccessKeyPgpKey" {
  type    = string
  default = null
}

variable "IUWPAKSMS_IamAccessKeyStatus" {
  type = string
  validation {
    condition = var.IUWPAKSMS_IamAccessKeyStatus == null || can(contains([
      "Active",
      "Inactive"
    ], var.IUWPAKSMS_IamAccessKeyStatus))
    error_message = "Valid inputs for | variable: var.IUWPAKSMS_IamAccessKeyStatus | are: Active, and Inactive"
  }
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret#argument-reference

variable "IUWPAKSMS_SecretDescription" {
  type    = string
  default = null
}

variable "IUWPAKSMS_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "IUWPAKSMS_SecretNamePrefix" {
  type    = string
  default = null
}

variable "IUWPAKSMS_SecretPolicy" {
  type    = string
  default = null
}

variable "IUWPAKSMS_SecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "IUWPAKSMS_SecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "IUWPAKSMS_SecretForceSecretOverwrite" {
  type    = bool
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference

variable "IUWPAKSMS_SecretVersionSecretString" {
  type    = map(string)
  default = {}
}

variable "IUWPAKSMS_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "IUWPAKSMS_SecretVersionStages" {
  type    = list(string)
  default = null
}