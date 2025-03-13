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

resource "aws_api_gateway_rest_api" "restApi" {
  api_key_source               = var.restApiKeySource
  binary_media_types           = var.restApiBinaryMediaTypes
  body                         = var.restApiBody
  description                  = var.restApiDescription
  disable_execute_api_endpoint = var.restApiDisableExecuteApiEndpoint

  dynamic "endpoint_configuration" {
    for_each = var.restApiEndpointConfiguration != null ? [var.restApiEndpointConfiguration] : []
    content {
      types            = endpoint_configuration.value["types"]
      vpc_endpoint_ids = endpoint_configuration.value["vpc_endpoint_ids"]
    }
  }

  minimum_compression_size = var.restApiMinimumCompressionSize
  name                     = "${var.resourceName}-rest-api"
  fail_on_warnings         = var.restApiFailOnWarnings
  parameters               = var.restApiParameters
  policy                   = var.restApiPolicy
  put_rest_api_mode        = var.restApiPutRestApiMode
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.createdBy
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)
}