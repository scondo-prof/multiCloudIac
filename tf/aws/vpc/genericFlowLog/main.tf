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

resource "aws_flow_log" "flowLog" {
  traffic_type                  = var.flowLogTrafficType
  deliver_cross_account_role    = var.flowLogdeliverCrossAccountRole
  eni_id                        = var.flowLogEniId
  iam_role_arn                  = var.flowLogIamRoleArn
  log_destination_type          = var.flowLogDestinationType
  log_destination               = var.flowLogDestination
  subnet_id                     = var.flowLogSubnetId
  transit_gateway_id            = var.flowLogtransitGatewayId
  transit_gateway_attachment_id = var.flowLogTransitGatewayAttatchmentId
  vpc_id                        = var.flowLogVpcId
  log_format                    = var.flowLogLogFormat
  max_aggregation_interval      = var.flowLogMaxAggregationInterval
  dynamic "destination_options" {
    for_each = var.flowLogDestinationOptions != null ? [var.flowLogDestinationOptions] : []
    content {
      file_format                = destination_options.value["file_format"]
      hive_compatible_partitions = destination_options.value["hive_compatible_partitions"]
      per_hour_partition         = destination_options.value["per_hour_partition"]
    }
  }
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.createdBy
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)
}