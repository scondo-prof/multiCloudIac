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
variable "RWP_IamRoleAssumeRolePolicyVersion" {
  type    = string
  default = "2012-10-17"
}

variable "RWP_IamRoleAssumeRolePolicy" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
}

variable "RWP_IamRoleDescription" {
  type    = string
  default = null
}

variable "RWP_IamRoleForceDetatchPolicies" {
  type    = bool
  default = false
}

variable "RWP_IamRoleMaxSessionDuration" {
  type = number
  validation {
    condition     = var.RWP_IamRoleMaxSessionDuration >= 3600 && var.RWP_IamRoleMaxSessionDuration <= 43200
    error_message = "Variable RWP_IamRoleMaxSessionDuration must be greater than or equal to 3600 and less than or equal to 43200"
  }
  default = 3600
}

variable "RWP_IamRoleNamePrefix" {
  type    = string
  default = null
}

variable "RWP_IamRolePath" {
  type    = string
  default = "/"
}

variable "RWP_IamRolePermissionsBoundary" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "RWP_IamPolicyDescription" {
  type    = string
  default = null
}
variable "RWP_IamPolicyNamePrefix" {
  type    = string
  default = null
}
variable "RWP_IamPolicyPath" {
  type    = string
  default = "/"
}
variable "RWP_IamPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "RWP_IamPolicyDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
}
