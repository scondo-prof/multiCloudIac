variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "SWV_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "resourceName" {
  type = string
}

variable "SWV_SecretPolicy" {
  type    = string
  default = null
}

variable "SWV_SecretRecoveryWindowInDays" {
  type    = number
  default = 7
}

variable "SWV_SecretReplica" {
  type = object({
    kms_key_id = string
    region     = string
  })
  default = null
}

variable "SWV_SecretForceSecretOverwrite" {
  type    = bool
  default = true
}

variable "projectName" {
  type = string
}

variable "creator" {
  type    = string
  default = "Scott Condo"
}

variable "deployedDate" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

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