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

resource "aws_codebuild_webhook" "webhook" {
  project_name  = var.webhookProjectName
  build_type    = var.webhookBuildType
  branch_filter = var.webhookBranchFilter

  dynamic "filter_group" {
    for_each = var.webhookFilterGroup != null ? [var.webhookFilterGroup] : []
    content {
      dynamic "filter" {
        for_each = filter_group.value["filter"]
        content {
          type                    = filter.value["type"]
          pattern                 = filter.value["pattern"]
          exclude_matched_pattern = filter.value["exclude_matched_pattern"]
        }
      }
    }
  }

  # dynamic "scope_configuration" {
  #   for_each = var.webhookScopeConfiguration != null ? [var.webhookScopeConfiguration] : []
  #   content {
  #     name   = scope_configuration.value["name"]
  #     scope  = scope_configuration.value["scope"]
  #     domain = scope_configuration.value["domain"]
  #   }
  # }
}