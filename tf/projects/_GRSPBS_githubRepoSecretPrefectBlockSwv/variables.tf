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

variable "prefectAccountId" {
  type    = string
  default = null
}

variable "prefectWorkspaceId" {
  type    = string
  default = null
}

variable "prefectApiKey" {
  type      = string
  sensitive = true
  default   = null
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

variable "GRSPBS_GithubActionsSecretObjects" {
  type = list(object({
    GRSPBS_GithubActionsSecret_name = string
    encrypted_value                 = optional(string, null)
    plaintext_value                 = optional(string, null)
  }))
  sensitive = true
  default   = []
}

variable "GRSPBS_GithubActionsSecretRepository" {
  type = string
}

#---

#https://registry.terraform.io/providers/PrefectHQ/prefect/latest/docs/resources/GRSPBS_PrefectBlock#schema

#Dependent on prefectBlockTypeSlug, use "prefect GRSPBS_PrefectBlock type inspect <slug>" to see the required format

variable "GRSPBS_PrefectBlockObjects" {
  type = list(object({
    data         = map(string)
    name         = string
    type_slug    = string
    account_id   = optional(string, null)
    workspace_id = optional(string, null)
  }))
  default = []
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret#argument-reference

variable "GRSPBS_SWV_SecretDescription" {
  type    = string
  default = null
}

variable "GRSPBS_SWV_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "GRSPBS_SWV_SecretNamePrefix" {
  type    = string
  default = null
}

variable "GRSPBS_SWV_SecretPolicy" {
  type    = string
  default = null
}

variable "GRSPBS_SWV_SecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "GRSPBS_SWV_SecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "GRSPBS_SWV_SecretForceSecretOverwrite" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference


variable "GRSPBS_SWV_SecretVersionSecretString" {
  type    = map(string)
  default = null
}

variable "GRSPBS_SWV_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "GRSPBS_SWV_SecretVersionStages" {
  type    = list(string)
  default = null
}



#---
