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

# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret#argument-reference

variable "GRSS_GithubActionsSecretObjects" {
  type = list(object({
    secret_name     = string
    encrypted_value = optional(string, null)
    plaintext_value = optional(string, null)
  }))
  sensitive = true
  default = []
}

variable "GRSS_GithubActionsSecretRepository" {
  type = string
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret#argument-reference

variable "GRSS_SWV_SecretDescription" {
  type    = string
  default = null
}

variable "GRSS_SWV_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "GRSS_SWV_SecretNamePrefix" {
  type    = string
  default = null
}

variable "GRSS_SWV_SecretPolicy" {
  type    = string
  default = null
}

variable "GRSS_SWV_SecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "GRSS_SWV_SecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "GRSS_SWV_SecretForceSecretOverwrite" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference


variable "GRSS_SWV_SecretVersionSecretString" {
  type    = map(string)
  default = {}
}

variable "GRSS_SWV_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "GRSS_SWV_SecretVersionStages" {
  type    = list(string)
  default = null
}



#---
