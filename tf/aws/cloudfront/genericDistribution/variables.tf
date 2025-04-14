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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#argument-reference

variable "cdnAliases" {
  type = list(string)
  default = null
}

variable "cdnComment" {
  type = string
  default = null
}

variable "cdnContinuousDeploymentPolicyId" {
  type = string
  default = null
}

variable "cdnCustomErrorResponse" {
  type = list(object({
    error_caching_min_ttl = optional(number, null)
    error_code = number
    response_code = optional(number, null)
    response_page_path = optional(string, null)
  }))
  default = null
}