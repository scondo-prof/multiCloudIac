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

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_rule#argument-reference
variable "eventRuleNamePrefix" {
  type    = string
  default = null
}

variable "eventRuleScheduleExpression" {
  type    = string
  default = null
}

variable "eventRuleEventBusName" {
  type    = string
  default = null
}

variable "eventRuleEventPattern" {
  type    = string
  default = null
}

variable "eventRuleForceDestroy" {
  type    = bool
  default = null
}

variable "eventRuleDescription" {
  type    = string
  default = null
}

variable "eventRuleRoleArn" {
  type    = string
  default = null
}

variable "eventRuleState" {
  type = string
  validation {
    condition = var.eventRuleState == null || can(contains([
      "DISABLED",
      "ENABLED",
      "ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS"
    ], var.eventRuleState))
    error_message = "Valid inputs for | variable: var.eventRuleState | are: DISABLED, ENABLED, and ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS"
  }
  default = null
}