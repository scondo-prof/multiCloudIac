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

  default_root_object = var.cdn
  enabled             = var.cdn
  is_ipv6_enabled     = var.cdn
  http_version        = var.cdn

  dynamic "logging_config" {

  }

  dynamic "ordered_cache_behavior" {

  }

  origin {

  }

  dynamic "origin_group" {

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