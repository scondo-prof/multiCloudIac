variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_cache_policy#argument-reference

variable "cachePolicyObjects" {
  type = list(object({
    name        = string
    min_ttl     = number
    max_ttl     = optional(number, null)
    default_ttl = optional(number, null)
    comment     = optional(string, null)

    cookies_config = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_cache_policy#cookies-config
      cookie_behavior = string

      cookies = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_cache_policy#items
        items = list(string)
      }), null)
    })

    headers_config = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_cache_policy#headers-config
      header_behavior = string

      headers = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_cache_policy#items
        items = list(string)
      }), null)
    })

    query_strings_config = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_cache_policy#query-string-config
      query_string_behavior = string

      query_strings = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_cache_policy#items
        items = list(string)
      }), null)
    })

    enable_accept_encoding_brotli = optional(bool, null)
    enable_accept_encoding_gzip   = optional(bool, null)
  }))
}