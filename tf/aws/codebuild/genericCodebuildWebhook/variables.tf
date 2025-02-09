variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_webhook#argument-reference
variable "webhookProjectName" {
  type = string
}

variable "webhookBuildType" {
  type = string
  validation {
    condition = var.webhookBuildType == null || can(contains([
      "BUILD",
      "BUILD_BATCH"
    ], var.webhookBuildType))
    error_message = "Valid inputs for | variable: var.webhookBuildType | are: BUILD, BUILD_BATCH"
  }
  default = null
}

variable "webhookBranchFilter" {
  type    = string
  default = null
}

variable "webhookFilterGroup" {
  type = object({
    filter = map(object({
      type                    = string
      pattern                 = string
      exclude_matched_pattern = optional(bool, null)
    }))
  })
  default = null
}

variable "webhookScopeConfiguration" {
  type = object({
    name   = string
    scope  = string
    domain = optional(string, null)
  })
  default = null
}