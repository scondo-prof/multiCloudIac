variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user#argument-reference
variable "iamUserPath" {
  type    = string
  default = null
}

variable "iamUserPermissionBoundary" {
  type    = string
  default = null
}

variable "iamUserForceDestroy" {
  type    = bool
  default = null
}

variable "projectName" {
  type = string
}

variable "creator" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}