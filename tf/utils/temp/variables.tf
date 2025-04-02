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

variable "awsRegion" {
  type    = string
  default = "us-east-1"
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

variable "GOSAS_GhOrgSecretEncryptedValue" {
  type      = string
  default   = null
  sensitive = true
}

variable "GOSAS_GhOrgSecretPlaintextValue" {
  type      = string
  default   = null
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
