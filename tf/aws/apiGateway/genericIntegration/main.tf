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

resource "aws_api_gateway_integration" "integration" {
  rest_api_id             = var.integrationRestApiId
  resource_id             = var.integrationResourceId
  http_method             = var.integrationHttpMethod
  integration_http_method = var.integrationIntegrationHttpMethod
  type                    = var.integrationType
  connection_type         = var.integrationConnectionType
  connection_id           = var.integrationConnectionId
  uri                     = var.integrationUri
  credentials             = var.integrationCredentials
  request_templates       = var.integrationRequestTemplates
  request_parameters      = var.integrationRequestParameters
  passthrough_behavior    = var.integrationPassthroughBehavior
  cache_key_parameters    = var.integrationCacheKeyParameters
  cache_namespace         = var.integrationCacheNamespace
  content_handling        = var.integrationContentHandling
  timeout_milliseconds    = var.integrationTimeoutMilliseconds
  dynamic "tls_config" {
    for_each = var.integrationTlsConfig != null ? [var.integrationTlsConfig] : []
    content {
      insecure_skip_verification = tls_config.value["insecure_skip_verification"]
    }
  }
}