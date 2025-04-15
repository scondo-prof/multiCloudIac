terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.awsRegion
}

resource "aws_cloudfront_distribution" "cdn" {
  aliases                         = var.cdnAliases
  comment                         = var.cdnComment
  continuous_deployment_policy_id = var.cdnContinuousDeploymentPolicyId

  dynamic "custom_error_response" {
    for_each = var.cdnCustomErrorResponse != null ? var.cdnCustomErrorResponse : []
    content {
      error_caching_min_ttl = custom_error_response.value["error_caching_min_ttl"]
      error_code            = custom_error_response.value["error_code"]
      response_code         = custom_error_response.value["response_code"]
      response_page_path    = custom_error_response.value["response_page_path"]
    }
  }

  default_cache_behavior {
    allowed_methods           = var.cdnDefaultCacheBehavior["allowed_methods"]
    cached_methods            = var.cdnDefaultCacheBehavior["cached_methods"]
    cache_policy_id           = var.cdnDefaultCacheBehavior["cache_policy_id"]
    compress                  = var.cdnDefaultCacheBehavior["compress"]
    default_ttl               = var.cdnDefaultCacheBehavior["default_ttl"]
    field_level_encryption_id = var.cdnDefaultCacheBehavior["field_level_encryption_id"]

    dynamic "lambda_function_association" {
      for_each = var.cdnDefaultCacheBehavior["lambda_function_association"] != null ? var.cdnDefaultCacheBehavior["lambda_function_association"] : []
      content {
        event_type   = lambda_function_association.value["event_type"]
        lambda_arn   = lambda_function_association.value["lambda_arn"]
        include_body = lambda_function_association.value["include_body"]
      }
    }

    dynamic "function_association" {
      for_each = var.cdnDefaultCacheBehavior["function_association"] != null ? var.cdnDefaultCacheBehavior["function_association"] : []
      content {
        event_type   = function_association.value["event_type"]
        function_arn = function_association.value["function_arn"]
      }
    }

    max_ttl                    = var.cdnDefaultCacheBehavior["max_ttl"]
    min_ttl                    = var.cdnDefaultCacheBehavior["min_ttl"]
    origin_request_policy_id   = var.cdnDefaultCacheBehavior["origin_request_policy_id"]
    realtime_log_config_arn    = var.cdnDefaultCacheBehavior["realtime_log_config_arn"]
    response_headers_policy_id = var.cdnDefaultCacheBehavior["response_headers_policy_id"]
    smooth_streaming           = var.cdnDefaultCacheBehavior["smooth_streaming"]
    target_origin_id           = var.cdnDefaultCacheBehavior["target_origin_id"]
    trusted_key_groups         = var.cdnDefaultCacheBehavior["trusted_key_groups"]
    trusted_signers            = var.cdnDefaultCacheBehavior["trusted_signers"]
    viewer_protocol_policy     = var.cdnDefaultCacheBehavior["viewer_protocol_policy"]

    dynamic "grpc_config" {
      for_each = var.cdnDefaultCacheBehavior["grpc_config"] != null ? [var.cdnDefaultCacheBehavior["grpc_config"]] : []
      content {
        enabled = grpc_config.value["enabled"]
      }
    }
  }

  default_root_object = var.cdnDefaultRootObject
  enabled             = var.cdnEnabled
  is_ipv6_enabled     = var.cdnIsIpv6Enabled
  http_version        = var.cdnHttpVersion

  dynamic "logging_config" {
    for_each = var.cdnLoggingConfig != null ? [var.cdnLoggingConfig] : []
    content {
      bucket          = logging_config.value["bucket"]
      include_cookies = logging_config.value["include_cookies"]
      prefix          = logging_config.value["prefix"]
    }
  }

  dynamic "ordered_cache_behavior" {
    for_each = var.cdnOrderedCacheBehavior != null ? var.cdnOrderedCacheBehavior : []
    content {
      allowed_methods           = ordered_cache_behavior.value["allowed_methods"]
      cached_methods            = ordered_cache_behavior.value["cached_methods"]
      cache_policy_id           = ordered_cache_behavior.value["cache_policy_id"]
      compress                  = ordered_cache_behavior.value["compress"]
      default_ttl               = ordered_cache_behavior.value["default_ttl"]
      field_level_encryption_id = ordered_cache_behavior.value["field_level_encryption_id"]

      dynamic "lambda_function_association" {
        for_each = ordered_cache_behavior.value["lambda_function_association"] != null ? ordered_cache_behavior.value["lambda_function_association"] : []
        content {
          event_type   = lambda_function_association.value["event_type"]
          lambda_arn   = lambda_function_association.value["lambda_arn"]
          include_body = lambda_function_association.value["include_body"]
        }
      }

      dynamic "function_association" {
        for_each = ordered_cache_behavior.value["function_association"] != null ? ordered_cache_behavior.value["function_association"] : []
        content {
          event_type   = function_association.value["event_type"]
          function_arn = function_association.value["function_arn"]
        }
      }

      max_ttl                    = ordered_cache_behavior.value["max_ttl"]
      min_ttl                    = ordered_cache_behavior.value["min_ttl"]
      origin_request_policy_id   = ordered_cache_behavior.value["origin_request_policy_id"]
      path_pattern               = ordered_cache_behavior.value["path_pattern"]
      realtime_log_config_arn    = ordered_cache_behavior.value["realtime_log_config_arn"]
      response_headers_policy_id = ordered_cache_behavior.value["response_headers_policy_id"]
      smooth_streaming           = ordered_cache_behavior.value["smooth_streaming"]
      target_origin_id           = ordered_cache_behavior.value["target_origin_id"]
      trusted_key_groups         = ordered_cache_behavior.value["trusted_key_groups"]
      trusted_signers            = ordered_cache_behavior.value["trusted_signers"]
      viewer_protocol_policy     = ordered_cache_behavior.value["viewer_protocol_policy"]

      dynamic "grpc_config" {
        for_each = ordered_cache_behavior.value["grpc_config"] != null ? [ordered_cache_behavior.value["grpc_config"]] : []
        content {
          enabled = grpc_config.value["enabled"]
        }
      }
    }
  }

  dynamic "origin" {
    for_each = var.cdnOrigin
    content {
      connection_attempts = origin.value["connection_attempts"]
      connection_timeout  = origin.value["connection_timeout"]

      dynamic "custom_origin_config" {
        for_each = origin.value["custom_origin_config"] != null ? [origin.value["custom_origin_config"]] : []
        content {
          http_port                = custom_origin_config.value["http_port"]
          https_port               = custom_origin_config.value["https_port"]
          origin_protocol_policy   = custom_origin_config.value["origin_protocol_policy"]
          origin_ssl_protocols     = custom_origin_config.value["origin_ssl_protocols"]
          origin_keepalive_timeout = custom_origin_config.value["origin_keepalive_timeout"]
          origin_read_timeout      = custom_origin_config.value["origin_read_timeout"]
        }
      }

      domain_name = origin.value["domain_name"]

      dynamic "custom_header" {
        for_each = origin.value["custom_header"] != null ? origin.value["custom_header"] : []
        content {
          name  = custom_header.value["name"]
          value = custom_header.value["value"]
        }
      }

      origin_access_control_id = origin.value["origin_access_control_id"]
      origin_id                = origin.value["origin_id"]
      origin_path              = origin.value["origin_path"]

      dynamic "origin_shield" {
        for_each = origin.value["origin_shield"] != null ? [origin.value["origin_shield"]] : []
        content {
          enabled              = origin_shield.value["enabled"]
          origin_shield_region = origin_shield.value["origin_shield_region"]
        }
      }

      dynamic "s3_origin_config" {
        for_each = origin.value["s3_origin_config"] != null ? [origin.value["s3_origin_config"]] : []
        content {
          origin_access_identity = s3_origin_config.value["origin_access_identity"]
        }
      }

      dynamic "vpc_origin_config" {
        for_each = origin.value["vpc_origin_config"] != null ? [origin.value["vpc_origin_config"]] : []
        content {
          origin_keepalive_timeout = vpc_origin_config.value["origin_keepalive_timeout"]
          origin_read_timeout      = vpc_origin_config.value["origin_read_timeout"]
          vpc_origin_id            = vpc_origin_config.value["vpc_origin_id"]
        }
      }
    }
  }
  dynamic "origin_group" {
    for_each = var.cdnOriginGroup != null ? var.cdnOriginGroup : []
    content {
      origin_id = origin_group.value["origin_id"]

      dynamic "failover_criteria" {
        for_each = origin_group.value["failover_criteria"]
        content {
          status_codes = failover_criteria.value["status_codes"]
        }
      }

      dynamic "member" {
        for_each = origin_group.value["member"]
        content {
          origin_id = member.value["origin_id"]
        }
      }
    }
  }

  price_class = var.cdn

  restrictions {

  }

  staging = var.cdn
  tags    = var.cdn

  viewer_certificate {

  }

  web_acl_id          = var.cdn
  retain_on_delete    = var.cdn
  wait_for_deployment = var.cdn
}