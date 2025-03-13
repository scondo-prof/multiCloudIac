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

#---

variable "SWVFF_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "SWVFF_SecretPolicy" {
  type    = string
  default = null
}

variable "SWVFF_SecretRecoveryWindowInDays" {
  type    = number
  default = 7
}

variable "SWVFF_SecretReplica" {
  type = object({
    kms_key_id = string
    region     = string
  })
  default = null
}

variable "SWVFF_SecretForceSecretOverwrite" {
  type    = bool
  default = true
}

variable "SWVFF_SecretVersionSecretStringFile" {
  type    = string
  default = null
}

variable "SWVFF_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "SWVFF_SecretVersionStages" {
  type    = list(string)
  default = null
}