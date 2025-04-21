variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_origin_request_policy#argument-reference

variable "orpComment" {
  type    = string
  default = null
}

variable "orpCookiesConfig" {
  type = object({
    cookie_behavior = string
    cookies = optional(object({
      items = list(string)
    }), null)
  })
}

variable "orpHeadersConfig" {
  type = object({
    header_behavior = string
    headers = optional(object({
      items = list(string)
    }), null)
  })
}

variable "orpQueryStringsConfig" {
  type = object({
    query_string_behavior = string
    query_strings = optional(object({
      items = list(string)
    }), null)
  })
}