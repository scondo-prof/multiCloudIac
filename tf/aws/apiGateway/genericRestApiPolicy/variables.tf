variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_rest_api_policy#argument-reference

variable "restApiPolicyRestApiId" {
  type = string
}

variable "restApiPolicyVersion" {
  type    = string
  default = "2012-10-17"
}

variable "restApiPolicyStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
}