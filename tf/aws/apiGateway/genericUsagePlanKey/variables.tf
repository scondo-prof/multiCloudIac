variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan_key#argument-reference

variable "usagePlanKeyId" {
  type = string
}

variable "usagePlanKeyType" {
  type = string
  validation {
    condition = contains([
      "API_KEY"
    ], var.usagePlanKeyType)
    error_message = "Valid inputs for | variable: var.usagePlanKeyType | are: API_KEY"
  }
}

variable "usagePlanKeyUsagePlanId" {
  type = string
}