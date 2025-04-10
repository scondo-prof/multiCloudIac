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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "iamPolicyDescription" {
  type    = string
  default = null
}
variable "iamPolicyNamePrefix" {
  type    = string
  default = null
}
variable "iamPolicyPath" {
  type    = string
  default = "/"
}
variable "iamPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "iamPolicyDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
}