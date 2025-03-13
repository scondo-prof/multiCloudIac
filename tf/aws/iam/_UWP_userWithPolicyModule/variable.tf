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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user#argument-reference
variable "UWP_IamUserPath" {
  type    = string
  default = null
}

variable "UWP_IamUserPermissionBoundary" {
  type    = string
  default = null
}

variable "UWP_IamUserForceDestroy" {
  type    = bool
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "UWP_IamPolicyDescription" {
  type    = string
  default = null
}
variable "UWP_IamPolicyNamePrefix" {
  type    = string
  default = null
}
variable "UWP_IamPolicyPath" {
  type    = string
  default = "/"
}
variable "UWP_IamPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "UWP_IamPolicyDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
}