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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#argument-reference

variable "distributionAliases" {
  type    = list(string)
  default = null
}

variable "distributionComment" {
  type    = string
  default = null
}

variable "distributionContinuousDeploymentPolicyId" {
  type    = string
  default = null
}

variable "distributionCustomErrorResponse" {
  type = list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#custom-error-response-arguments
    error_caching_min_ttl = optional(number, null)
    error_code            = number
    response_code         = optional(number, null)
    response_page_path    = optional(string, null)
  }))
  default = null
}

variable "distributionDefaultCacheBehavior" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#default-cache-behavior-arguments
    allowed_methods           = list(string)
    cached_methods            = list(string)
    cache_policy_id           = optional(string, null)
    compress                  = optional(bool, null)
    default_ttl               = optional(number, null)
    field_level_encryption_id = optional(string, null)

    lambda_function_association = optional(list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#lambda-function-association
      event_type   = string
      lambda_arn   = string
      include_body = optional(bool, null)
    })), null)

    function_association = optional(list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#function-association
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

    grpc_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#grpc-config-arguments
      enabled = bool
    }), null)
  })
}

variable "distributionDefaultRootObject" {
  type    = string
  default = null
}

variable "distributionEnabled" {
  type = bool
}

variable "distributionIsIpv6Enabled" {
  type    = bool
  default = null
}

variable "distributionHttpVersion" {
  type = string
  validation {
    condition = var.distributionHttpVersion == null || can(contains([
      "http1.1",
      "http2",
      "http2and3",
      "http3"
    ], var.distributionHttpVersion))
    error_message = "Valid inputs for | variable: var.distributionHttpVersion | are: http1.1, http2, http2and3, and http3"
  }
  default = null
}

variable "distributionLoggingConfig" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#logging-config-arguments
    bucket          = string
    include_cookies = optional(bool, null)
    prefix          = optional(string, null)
  })
  default = null
}

variable "distributionOrderedCacheBehavior" {
  type = list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#default-cache-behavior-arguments
    allowed_methods           = list(string)
    cached_methods            = list(string)
    cache_policy_id           = optional(string, null)
    compress                  = optional(bool, null)
    default_ttl               = optional(number, null)
    field_level_encryption_id = optional(string, null)

    lambda_function_association = optional(list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#lambda-function-association
      event_type   = string
      lambda_arn   = string
      include_body = optional(bool, null)
    })), null)

    function_association = optional(list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#function-association
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

    grpc_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#grpc-config-arguments
      enabled = bool
    }), null)
  }))
  default = null
}

variable "distributionOrigin" {
  type = list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#origin-arguments
    connection_attempts = optional(number, null)
    connection_timeout  = optional(number, null)

    custom_origin_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#custom-origin-config-arguments
      http_port                = number
      https_port               = number
      origin_protocol_policy   = string
      origin_ssl_protocols     = list(string)
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

    origin_shield = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#origin-shield-arguments
      enabled              = bool
      origin_shield_region = optional(string, null)
    }), null)

    s3_origin_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#s3-origin-config-arguments
      origin_access_identity = string
    }), null)

    vpc_origin_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#origin_keepalive_timeout-2
      origin_keepalive_timeout = optional(number, null)
      origin_read_timeout      = optional(number, null)
      vpc_origin_id            = string
    }), null)
  }))
}

variable "distributionOriginGroup" {
  type = list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#origin-group-arguments
    origin_id = string

    failover_criteria = list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#failover-criteria-arguments
      status_codes = list(number)
    }))

    member = list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#member-arguments
      origin_id = string
    }))
  }))
  default = null
}

variable "distributionPriceClass" {
  type = string
  validation {
    condition = var.distributionPriceClass == null || can(contains([
      "PriceClass_All",
      "PriceClass_200",
      "PriceClass_100"
    ], var.distributionPriceClass))
    error_message = "Valid inputs for | variable: var.distributionPriceClass | are: PriceClass_All, PriceClass_200, PriceClass_100"
  }
  default = null
}

variable "distributionRestrictionsGeoRestrictions" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#restrictions-arguments
  type = object({
    locations        = list(string)
    restriction_type = string
  })
}

variable "distributionStaging" {
  type    = bool
  default = null
}

variable "distributionViewerCertificate" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#viewer-certificate-arguments
    acm_certificate_arn            = optional(string, null)
    cloudfront_default_certificate = optional(bool, null)
    iam_certificate_id             = optional(string, null)
    minimum_protocol_version       = optional(string, null)
    ssl_support_method             = optional(string, null)
  })
}

variable "distributionWebAclId" {
  type    = string
  default = null
}

variable "distributionRetainOnDelete" {
  type    = bool
  default = null
}

variable "distributionWaitForDeployment" {
  type    = bool
  default = null
}