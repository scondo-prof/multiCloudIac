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
  name = "${var.resourceName}-cache-policy"
  min_ttl = var.cachePolicy
  max_ttl = var.cachePolicy
  default_ttl = var.cachePolicy
  comment = var.cachePolicy
  
  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      
    }
    headers_config {
      
    }
    query_strings_config {
      
    }
    enable_accept_encoding_brotli = var.cachePolicyParametersInCacheKeyAndForwardToOrigin["enable_accept_encoding_brotli"]
    enable_accept_encoding_gzip = var.cachePolicyParametersInCacheKeyAndForwardToOrigin["enable_accept_encoding_brotli"]
  }
  }