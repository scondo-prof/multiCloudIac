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

resource "aws_cloudfront_cache_policy" "cachePolicy" {
  name        = "${var.resourceName}-cache-policy"
  min_ttl     = var.cachePolicyMinTtl
  max_ttl     = var.cachePolicyMaxTtl
  default_ttl = var.cachePolicyDefaultTtl
  comment     = var.cachePolicyComment

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = var.cachePolicyParametersInCacheKeyAndForwardToOrigin["cookie_behavior"]

      dynamic "cookies" {
        for_each = var.cachePolicyParametersInCacheKeyAndForwardToOrigin["cookies"] != null ? [var.cachePolicyParametersInCacheKeyAndForwardToOrigin["cookies"]] : []
        content {
          items = cookies.value["items"]
        }
      }
    }
    headers_config {
      header_behavior = var.cachePolicyParametersInCacheKeyAndForwardToOrigin["header_behavior"]
      dynamic "headers" {
        for_each = var.cachePolicyParametersInCacheKeyAndForwardToOrigin["headers"] != null ? [var.cachePolicyParametersInCacheKeyAndForwardToOrigin["headers"]] : []
        content {
          items = headers.value["items"]
        }
      }
    }
    query_strings_config {
      query_string_behavior = var.cachePolicyParametersInCacheKeyAndForwardToOrigin["query_string_behavior"]
      dynamic "query_strings" {
        for_each = var.cachePolicyParametersInCacheKeyAndForwardToOrigin["query_strings"] != null ? [var.cachePolicyParametersInCacheKeyAndForwardToOrigin["query_strings"]] : []
        content {
          items = query_strings.value["items"]
        }
      }
    }
    enable_accept_encoding_brotli = var.cachePolicyParametersInCacheKeyAndForwardToOrigin["enable_accept_encoding_brotli"]
    enable_accept_encoding_gzip   = var.cachePolicyParametersInCacheKeyAndForwardToOrigin["enable_accept_encoding_gzip"]
  }
}