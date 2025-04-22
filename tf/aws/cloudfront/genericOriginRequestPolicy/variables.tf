variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_origin_request_policy#argument-reference

variable "orpObjects" {
  type = list(object({
    name    = string
    comment = optional(string, null)

    cookies_config = object({
      cookie_behavior = string
      cookies = optional(object({
        items = list(string)
      }), null)
    })

    headers_config = object({
      header_behavior = string
      headers = optional(object({
        items = list(string)
      }), null)
    })

    query_strings_config = object({
      query_string_behavior = string
      query_strings = optional(object({
        items = list(string)
      }), null)
    })
  }))
}