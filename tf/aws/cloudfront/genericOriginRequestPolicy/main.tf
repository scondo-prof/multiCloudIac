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

resource "aws_cloudfront_origin_request_policy" "orp" {
  count   = length(var.orpObjects)
  name    = "${var.orpObjects[count.index]["name"]}-orp"
  comment = var.orpObjects[count.index]["comment"] #var.orpComment

  cookies_config {
    cookie_behavior = var.orpObjects[count.index]["cookies_config"]["cookie_behavior"] #var.orpCookiesConfig["cookie_behavior"]
    dynamic "cookies" {
      for_each = var.orpObjects[count.index]["cookies_config"]["cookies"] != null ? [var.orpObjects[count.index]["cookies_config"]["cookies"]] : []
      content {
        items = cookies.value["items"]
      }
    }
  }

  headers_config {
    header_behavior = var.orpObjects[count.index]["headers_config"]["header_behavior"]

    dynamic "headers" {
      for_each = var.orpObjects[count.index]["headers_config"]["headers"] != null ? [var.orpObjects[count.index]["headers_config"]["headers"]] : []
      content {
        items = headers.value["items"]
      }
    }
  }

  query_strings_config {
    query_string_behavior = var.orpObjects[count.index]["query_strings_config"]["query_string_behavior"]
    dynamic "query_strings" {
      for_each = var.orpObjects[count.index]["query_strings_config"]["query_strings"] != null ? [var.orpObjects[count.index]["query_strings_config"]["query_strings"]] : []
      content {
        items = query_strings.value["items"]
      }
    }
  }
}