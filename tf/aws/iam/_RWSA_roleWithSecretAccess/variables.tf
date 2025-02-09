variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

#ex. tasks.apprunner.amazonaws.com
variable "RWSA_IamRoletServiceIdentifiers" {
  description = "List of service identifiers that can assume this role"
  type        = list(string)
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

variable "RWSA_SecretObtainPolicyAdditionalSecretPermissions" {
  type    = list(string)
  default = []
}

variable "RWSA_SecretObtainPolicySecretResources" {
  type = list(string)
}