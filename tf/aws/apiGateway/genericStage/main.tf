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

resource "aws_api_gateway_stage" "stage" {
  rest_api_id   = var.stageRestApiId
  stage_name    = "${var.resourceName}-stage"
  deployment_id = var.stageDeploymentId

  dynamic "access_log_settings" {
    for_each = var.stageAccessLogSettings != null ? [var.stageAccessLogSettings] : []
    content {
      destination_arn = access_log_settings.value["destination_arn"]
      format          = access_log_settings.value["format"]
    }
  }

  cache_cluster_enabled = var.stageCacheClusterEnabled
  cache_cluster_size    = var.stageCacheClusterSize

  dynamic "canary_settings" {
    for_each = var.stageCanarySettings != null ? [var.stageCanarySettings] : []
    content {
      deployment_id            = canary_settings.value["deployment_id"]
      percent_traffic          = canary_settings.value["percent_traffic"]
      stage_variable_overrides = canary_settings.value["stage_variable_overrides"]
      use_stage_cache          = canary_settings.value["use_stage_cache"]
    }
  }

  client_certificate_id = var.stageClientCertificateId
  description           = var.stageDescription
  documentation_version = var.stageDocumentationVersion
  variables             = var.stageVariables
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.creator
    DeployedDate = var.deployedDate
  }, var.additionalTags)
  xray_tracing_enabled = var.stageXrayTracingEnabled
}