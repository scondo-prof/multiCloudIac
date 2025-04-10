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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan#argument-reference

variable "usagePlanDescription" {
  type    = string
  default = null
}

variable "usagePlanApiStages" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan#api_id-1
  type = object({
    api_id = string
    stage  = string
    throttle = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan#path-1
      path        = string
      burst_limit = optional(number, null)
      rate_limit  = optional(number, null)
    }), null)
  })
  default = null
}

variable "usagePlanQuotaSettings" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan#limit-1
  type = object({
    limit  = optional(number, null)
    offset = optional(number, null)
    period = optional(string, null)
  })
  default = null
}

variable "usagePlanThrottleSettings" {
  type = object({
    burst_limit = optional(number, null)
    rate_limit  = optional(number, null)
  })
  default = null
}

variable "usagePlanProductCode" {
  type    = string
  default = null
}