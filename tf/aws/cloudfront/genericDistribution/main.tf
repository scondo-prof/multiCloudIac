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

  dynamic "default_cache_behavior" {
    for_each = var.cdnDefaultCacheBehavior != null ? [var.cdnDefaultCacheBehavior] : []
    content {
      allowed_methods           = default_cache_behavior.value["allowed_methods"]
      cached_methods            = default_cache_behavior.value["cached_methods"]
      cache_policy_id           = default_cache_behavior.value["cache_policy_id"]
      compress                  = default_cache_behavior.value["compress"]
      default_ttl               = default_cache_behavior.value["default_ttl"]
      field_level_encryption_id = default_cache_behavior.value["field_level_encryption_id"]

      dynamic "lambda_function_association" {
        for_each = default_cache_behavior.value["lambda_function_association"] != null ? default_cache_behavior.value["lambda_function_association"] : []
        content {
          event_type = lambda_function_association.value["event_type"]
          lambda_arn = lambda_function_association.value["lambda_arn"]
          include_body = lambda_function_association.value["include_body"]
        }
      }

      dynamic "function_association" {
        for_each = default_cache_behavior.value["function_association"] != null ? default_cache_behavior.value["function_association"] : []
        content {
          event_type = function_association.value["event_type"]
          function_arn = function_association.value["function_arn"]
        }
      }

      max_ttl                    = default_cache_behavior.value[""]
      min_ttl                    = default_cache_behavior.value[""]
      origin_request_policy_id   = default_cache_behavior.value[""]
      realtime_log_config_arn    = default_cache_behavior.value[""]
      response_headers_policy_id = default_cache_behavior.value[""]
      smooth_streaming           = default_cache_behavior.value[""]
      target_origin_id           = default_cache_behavior.value[""]
      trusted_key_groups         = default_cache_behavior.value[""]
      trusted_signers            = default_cache_behavior.value[""]
      viewer_protocol_policy     = default_cache_behavior.value[""]

      dynamic "grpc_config" {
        for_each = default_cache_behavior.value[""] != null ? [default_cache_behavior.value[""]] : []
        content {

        }
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