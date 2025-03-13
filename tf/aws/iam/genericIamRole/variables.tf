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

variable "creator" {
  type    = string
  default = "Scott Condo"
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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role#argument-reference
variable "iamRoleAssumeRolePolicyVersion" {
  type    = string
  default = "2012-10-17"
}

variable "iamRoleAssumeRolePolicy" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
}

variable "iamRoleDescription" {
  type    = string
  default = null
}

variable "iamRoleForceDetatchPolicies" {
  type    = bool
  default = false
}

variable "iamRoleMaxSessionDuration" {
  type = number
  validation {
    condition     = var.iamRoleMaxSessionDuration >= 3600 && var.iamRoleMaxSessionDuration <= 43200
    error_message = "Variable iamRoleMaxSessionDuration must be greater than or equal to 3600 and less than or equal to 43200"
  }
  default = 3600
}

variable "iamRoleNamePrefix" {
  type    = string
  default = null
}

variable "iamRolePath" {
  type    = string
  default = "/"
}

variable "iamRolePermissionsBoundary" {
  type    = string
  default = null
}