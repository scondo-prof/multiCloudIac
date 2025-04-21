variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_cache_policy#argument-reference

variable "cachePolicyMinTtl" {
  type = number
}

variable "cachePolicyMaxTtl" {
  type = number
  default = null
}

variable "cachePolicyDefaultTtl" {
  type = number
  default = null
}

variable "cachePolicyComment" {
  type = string
  default = null
}

variable "cachePolicyParametersInCacheKeyAndForwardToOrigin" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_cache_policy#parameters-in-cache-key-and-forwarded-to-origin
    cookie_behavior = string

    cookies = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_cache_policy#items
      items = list(string)
    }), null)

    header_behavior = string

    headers = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_cache_policy#items
      items = list(string)
    }), null)

    query_string_behavior = string

    query_strings = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_cache_policy#items
      items = list(string)
    }), null)

    
  })
}