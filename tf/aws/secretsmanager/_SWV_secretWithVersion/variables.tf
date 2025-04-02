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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/SWV_Secretsmanager_SWV_Secret#argument-reference

variable "SWV_SecretDescription" {
  type    = string
  default = null
}

variable "SWV_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "SWV_SecretNamePrefix" {
  type    = string
  default = null
}

variable "SWV_SecretPolicy" {
  type    = string
  default = null
}

variable "SWV_SecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "SWV_SecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "SWV_SecretForceSecretOverwrite" {
  type    = bool
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference


variable "SWV_SecretVersionSecretString" {
  type    = map(string)
  default = null
}

variable "SWV_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "SWV_SecretVersionStages" {
  type    = list(string)
  default = null
}

#---