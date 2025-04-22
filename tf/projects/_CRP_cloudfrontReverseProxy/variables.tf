variable "awsRegion" {
  type    = string
  default = "us-east-1"
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

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_cache_policy#argument-reference

variable "CRP_CachePolicyObjects" {
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
  default = []
}

#---

#https://registry.terraform.io/providers/hashicCRP_Orp/aws/latest/docs/resources/cloudfront_origin_request_policy#argument-reference

variable "CRP_OrpObjects" {
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
  default = []
}

#---

#https://registry.terraform.io/providers/hashicCRP_OrpDataSource/aws/latest/docs/data-sources/cloudfront_origin_request_policy#argument-reference

variable "CRP_OrpDataSourceObjects" {
  type = list(object({
    name = optional(string, null)
    id   = optional(string, null)
  }))
  default = []
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#argument-reference

variable "CRP_DistributionAliases" {
  type    = list(string)
  default = null
}

variable "CRP_DistributionComment" {
  type    = string
  default = null
}

variable "CRP_DistributionContinuousDeploymentPolicyId" {
  type    = string
  default = null
}

variable "CRP_DistributionCustomErrorResponse" {
  type = list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#custom-error-response-arguments
    error_caching_min_ttl = optional(number, null)
    error_code            = number
    response_code         = optional(number, null)
    response_page_path    = optional(string, null)
  }))
  default = null
}

variable "CRP_DistributionDefaultCacheBehavior" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#default-cache-behavior-arguments
    allowed_methods           = list(string)
    cached_methods            = list(string)
    cache_policy_id           = optional(string, null)
    compress                  = optional(bool, null)
    default_ttl               = optional(number, null)
    field_level_encryption_id = optional(string, null)

    lambda_function_association = optional(list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#lambda-function-association
      event_type   = string
      lambda_arn   = string
      include_body = optional(bool, null)
    })), null)

    function_association = optional(list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#function-association
      event_type = string
      lambda_arn = string
    })), null)

    max_ttl                    = optional(number, null)
    min_ttl                    = optional(number, null)
    origin_request_policy_id   = optional(string, null)
    realtime_log_config_arn    = optional(string, null)
    response_headers_policy_id = optional(string, null)
    smooth_streaming           = optional(bool, null)
    target_origin_id           = string
    trusted_key_groups         = optional(list(string), null)
    trusted_signers            = optional(list(string), null)
    viewer_protocol_policy     = string

    grpc_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#grpc-config-arguments
      enabled = bool
    }), null)
  })
}

variable "CRP_DistributionDefaultRootObject" {
  type    = string
  default = null
}

variable "CRP_DistributionEnabled" {
  type = bool
}

variable "CRP_DistributionIsIpv6Enabled" {
  type    = bool
  default = null
}

variable "CRP_DistributionHttpVersion" {
  type = string
  validation {
    condition = var.CRP_DistributionHttpVersion == null || can(contains([
      "http1.1",
      "http2",
      "http2and3",
      "http3"
    ], var.CRP_DistributionHttpVersion))
    error_message = "Valid inputs for | variable: var.CRP_DistributionHttpVersion | are: http1.1, http2, http2and3, and http3"
  }
  default = null
}

variable "CRP_DistributionLoggingConfig" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#logging-config-arguments
    bucket          = string
    include_cookies = optional(bool, null)
    prefix          = optional(string, null)
  })
  default = null
}

variable "CRP_DistributionOrderedCacheBehavior" {
  type = list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#default-cache-behavior-arguments
    allowed_methods           = list(string)
    cached_methods            = list(string)
    cache_policy_id           = optional(string, null)
    compress                  = optional(bool, null)
    default_ttl               = optional(number, null)
    field_level_encryption_id = optional(string, null)

    lambda_function_association = optional(list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#lambda-function-association
      event_type   = string
      lambda_arn   = string
      include_body = optional(bool, null)
    })), null)

    function_association = optional(list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#function-association
      event_type = string
      lambda_arn = string
    })), null)

    max_ttl                    = optional(number, null)
    min_ttl                    = optional(number, null)
    origin_request_policy_id   = optional(string, null)
    path_pattern               = string
    realtime_log_config_arn    = optional(string, null)
    response_headers_policy_id = optional(string, null)
    smooth_streaming           = optional(bool, null)
    target_origin_id           = string
    trusted_key_groups         = optional(list(string), null)
    trusted_signers            = optional(list(string), null)
    viewer_protocol_policy     = string

    grpc_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#grpc-config-arguments
      enabled = bool
    }), null)
  }))
  default = null
}

variable "CRP_DistributionOrigin" {
  type = list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#origin-arguments
    connection_attempts = optional(number, null)
    connection_timeout  = optional(number, null)

    custom_origin_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#custom-origin-config-arguments
      http_port                = number
      https_port               = number
      origin_protocol_policy   = string
      origin_ssl_protocols     = string
      origin_keepalive_timeout = optional(number, null)
      origin_read_timeout      = optional(number, null)
    }), null)

    domain_name = string

    custom_header = optional(list(object({
      name  = string
      value = string
    })), null)

    origin_access_control_id = optional(string, null)
    origin_id                = string
    origin_path              = optional(string, null)

    origin_shield = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#origin-shield-arguments
      enabled              = bool
      origin_shield_region = optional(string, null)
    }), null)

    s3_origin_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#s3-origin-config-arguments
      origin_access_identity = string
    }), null)

    vpc_origin_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#origin_keepalive_timeout-2
      origin_keepalive_timeout = optional(number, null)
      origin_read_timeout      = optional(number, null)
      vpc_origin_id            = string
    }), null)
  }))
}

variable "CRP_DistributionOriginGroup" {
  type = list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#origin-group-arguments
    origin_id = string

    failover_criteria = list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#failover-criteria-arguments
      status_codes = list(number)
    }))

    member = list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#member-arguments
      origin_id = string
    }))
  }))
  default = null
}

variable "CRP_DistributionPriceClass" {
  type = string
  validation {
    condition = var.CRP_DistributionPriceClass == null || can(contains([
      "PriceClass_All",
      "PriceClass_200",
      "PriceClass_100"
    ], var.CRP_DistributionPriceClass))
    error_message = "Valid inputs for | variable: var.CRP_DistributionPriceClass | are: PriceClass_All, PriceClass_200, PriceClass_100"
  }
  default = null
}

variable "CRP_DistributionRestrictionsGeoRestrictions" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#restrictions-arguments
  type = object({
    locations        = list(string)
    restriction_type = string
  })
}

variable "CRP_DistributionStaging" {
  type    = bool
  default = null
}

variable "CRP_DistributionViewerCertificate" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_CRP_Distribution#viewer-certificate-arguments
    acm_certificate_arn            = optional(string, null)
    cloudfront_default_certificate = optional(bool, null)
    iam_certificate_id             = optional(string, null)
    minimum_protocol_version       = optional(string, null)
    ssl_support_method             = optional(string, null)
  })
}

variable "CRP_DistributionWebAclId" {
  type    = string
  default = null
}

variable "CRP_DistributionRetainOnDelete" {
  type    = bool
  default = null
}

variable "CRP_DistributionWaitForDeployment" {
  type    = bool
  default = null
}