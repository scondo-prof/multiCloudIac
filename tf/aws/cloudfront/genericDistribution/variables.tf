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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#argument-reference

variable "cdnAliases" {
  type    = list(string)
  default = null
}

variable "cdnComment" {
  type    = string
  default = null
}

variable "cdnContinuousDeploymentPolicyId" {
  type    = string
  default = null
}

variable "cdnCustomErrorResponse" {
  type = list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution#custom-error-response-arguments
    error_caching_min_ttl = optional(number, null)
    error_code            = number
    response_code         = optional(number, null)
    response_page_path    = optional(string, null)
  }))
  default = null
}

variable "cdnDefaultCacheBehavior" {
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