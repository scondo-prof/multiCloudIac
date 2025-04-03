variable "githubToken" {
  type      = string
  sensitive = true
  default   = null
}

variable "githubBaseUrl" {
  type    = string
  default = null
}

variable "githubOwner" {
  type    = string
  default = null
}

variable "githubAppAuth" {
  type = object({
    id              = string
    installation_id = string
    pem_file_path   = string
  })
  default = null
}

variable "githubWriteDelayMs" {
  type    = number
  default = null
}

variable "githubRetryDelayMs" {
  type    = number
  default = null
}

variable "githubReadDelayMs" {
  type    = number
  default = null
}

variable "githubRetryableErrors" {
  type    = list(number)
  default = null
}

variable "githubMaxRetries" {
  type    = number
  default = null
}

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

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_organization_GOSAS_GhOrgSecret#argument-reference

variable "GOSAS_GhOrgSecretObject" {
  type = list(object({
    GOSAS_GhOrgSecret_name = string
    encrypted_value        = optional(string, null)
    plaintext_value        = optional(string, null)
  }))
  sensitive = true
}

variable "GOSAS_GhOrgSecretVisibility" {
  type = string
  validation {
    condition = contains([
      "all",
      "private",
      "selected"
    ], var.GOSAS_GhOrgSecretVisibility)
    error_message = "Valid inputs for | variable: var.GOSAS_GhOrgSecretVisibility | are: all, private, selected"
  }
}

variable "GOSAS_GhOrgSecretSelectedRepositoryIds" {
  type    = list(string)
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/GOSAS_SWV_Secretsmanager_GOSAS_SWV_Secret#argument-reference

variable "GOSAS_SWV_SecretDescription" {
  type    = string
  default = null
}

variable "GOSAS_SWV_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "GOSAS_SWV_SecretNamePrefix" {
  type    = string
  default = null
}

variable "GOSAS_SWV_SecretPolicy" {
  type    = string
  default = null
}

variable "GOSAS_SWV_SecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "GOSAS_SWV_SecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "GOSAS_SWV_SecretForceSecretOverwrite" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference


variable "GOSAS_SWV_SecretVersionSecretString" {
  type    = map(string)
  default = null
}

variable "GOSAS_SWV_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "GOSAS_SWV_SecretVersionStages" {
  type    = list(string)
  default = null
}



#---
