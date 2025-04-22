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
  count       = length(var.cachePolicyObjects)
  name        = "${var.cachePolicyObjects[count.index]["name"]}-cache-policy"
  min_ttl     = var.cachePolicyObjects[count.index]["min_ttl"]
  max_ttl     = var.cachePolicyObjects[count.index]["max_ttl"]
  default_ttl = var.cachePolicyObjects[count.index]["default_ttl"]
  comment     = var.cachePolicyObjects[count.index]["comment"]

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = var.cachePolicyObjects[count.index]["cookies_config"]["cookie_behavior"]

      dynamic "cookies" {
        for_each = var.cachePolicyObjects[count.index]["cookies_config"]["cookies"] != null ? [var.cachePolicyObjects[count.index]["cookies_config"]["cookies"]] : []
        content {
          items = cookies.value["items"]
        }
      }
    }
    headers_config {
      header_behavior = var.cachePolicyObjects[count.index]["headers_config"]["header_behavior"]
      dynamic "headers" {
        for_each = var.cachePolicyObjects[count.index]["headers_config"]["headers"] != null ? [var.cachePolicyObjects[count.index]["headers_config"]["headers"]] : []
        content {
          items = headers.value["items"]
        }
      }
    }
    query_strings_config {
      query_string_behavior = var.cachePolicyObjects[count.index]["query_strings_config"]["query_string_behavior"]
      dynamic "query_strings" {
        for_each = var.cachePolicyObjects[count.index]["query_strings_config"]["query_strings"] != null ? [var.cachePolicyObjects[count.index]["query_strings_config"]["query_strings"]] : []
        content {
          items = query_strings.value["items"]
        }
      }
    }
    enable_accept_encoding_brotli = var.cachePolicyObjects[count.index]["enable_accept_encoding_brotli"]
    enable_accept_encoding_gzip   = var.cachePolicyObjects[count.index]["enable_accept_encoding_gzip"]
  }
}