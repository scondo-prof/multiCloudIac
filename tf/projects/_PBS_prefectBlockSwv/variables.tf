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

#https://registry.terraform.io/providers/PrefectHQ/prefect/latest/docs/resources/PBS_PrefectBlock#schema

#Dependent on prefectBlockTypeSlug, use "prefect PBS_PrefectBlock type inspect <slug>" to see the required format

variable "PBS_PrefectBlockObjects" {
  type = list(object({
    data         = map(string)
    name         = string
    type_slug    = string
    account_id   = optional(string, null)
    workspace_id = optional(string, null)
  }))
}

#---
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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret#argument-reference

variable "PBS_SWV_SecretDescription" {
  type    = string
  default = null
}

variable "PBS_SWV_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "PBS_SWV_SecretNamePrefix" {
  type    = string
  default = null
}

variable "PBS_SWV_SecretPolicy" {
  type    = string
  default = null
}

variable "PBS_SWV_SecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "PBS_SWV_SecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "PBS_SWV_SecretForceSecretOverwrite" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference


variable "PBS_SWV_SecretVersionSecretString" {
  type    = map(string)
  default = null
}

variable "PBS_SWV_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "PBS_SWV_SecretVersionStages" {
  type    = list(string)
  default = null
}



#---
