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

resource "aws_cloudwatch_event_rule" "eventRule" {
  name                = "${var.resourceName}-event-rule"
  name_prefix         = var.eventRuleNamePrefix
  schedule_expression = var.eventRuleScheduleExpression
  event_bus_name      = var.eventRuleEventBusName
  event_pattern       = var.eventRuleEventPattern
  force_destroy       = var.eventRuleForceDestroy
  description         = var.eventRuleDescription
  role_arn            = var.eventRuleRoleArn
  state               = var.eventRuleState
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.creator
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)
}