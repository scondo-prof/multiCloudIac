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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group#argument-reference


variable "logGroupNamePrefix" {
  type    = string
  default = null
}

variable "logGroupSkipDestroy" {
  type    = bool
  default = null
}

variable "logGroupClass" {
  type = string
  validation {
    condition = var.logGroupClass == null || can(contains([
      "STANDARD",
      "INFREQUENT_ACCESS"
    ], var.logGroupClass))
    error_message = "Valid inputs for | variable: var.logGroupClass | are: STANDARD, or INFREQUENT_ACCESS"
  }
  default = null
}

variable "logGroupRetentionInDays" {
  type = number
  validation {
    condition = var.logGroupRetentionInDays == null || can(contains([
      1,
      3,
      5,
      7,
      14,
      30,
      60,
      90,
      120,
      150,
      180,
      365,
      400,
      545,
      731,
      1096,
      1827,
      2192,
      2557,
      2922,
      3288,
      3653,
      0
    ], var.logGroupRetentionInDays))
    error_message = "Valid inputs for | variable: var.logGroupRetentionInDays | are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, 3653, and 0"
  }
  default = null
}

variable "logGroupKmsKeyId" {
  type    = string
  default = null
}