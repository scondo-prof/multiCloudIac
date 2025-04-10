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

variable "secretDescription" {
  type    = string
  default = null
}

variable "secretKmsKeyId" {
  type    = string
  default = null
}

variable "secretNamePrefix" {
  type    = string
  default = null
}

variable "secretPolicy" {
  type    = string
  default = null
}

variable "secretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "secretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "secretForceSecretOverwrite" {
  type    = bool
  default = null
}