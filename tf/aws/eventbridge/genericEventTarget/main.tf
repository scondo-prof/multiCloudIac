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

resource "aws_cloudwatch_event_target" "eventTarget" {
  arn  = var.eventTargetArn
  rule = var.eventTargetRule

  dynamic "batch_target" {
    for_each = var.eventTargetBatchTarget != null ? [var.eventTargetBatchTarget] : []
    content {
      job_definition = batch_target.value["job_definition"]
      job_name       = batch_target.value["job_name"]
      array_size     = batch_target.value["array_size"]
      job_attempts   = batch_target.value["job_attempts"]
    }
  }

  dynamic "dead_letter_config" {
    for_each = var.eventTargetDeadLetterConfig != null ? [var.eventTargetDeadLetterConfig] : []
    content {
      arn = dead_letter_config.value["arn"]
    }
  }

  dynamic "ecs_target" {
    for_each = var.eventTargetEcsTarget != null ? [var.eventTargetEcsTarget] : []
    content {
      task_definition_arn = ecs_target.value["task_definition_arn"]

      dynamic "capacity_provider_strategy" {
        for_each = ecs_target.value["capacity_provider_strategy"] != null ? [ecs_target.value["capacity_provider_strategy"]] : []
        content {
          capacity_provider = capacity_provider_strategy.value["capacity_provider"]
          weight            = capacity_provider_strategy.value["weight"]
          base              = capacity_provider_strategy.value["base"]
        }
      }

      enable_ecs_managed_tags = ecs_target.value["enable_ecs_managed_tags"]
      enable_execute_command  = ecs_target.value["enable_execute_command"]
      group                   = ecs_target.value["group"]
      launch_type             = ecs_target.value["launch_type"]

      dynamic "network_configuration" {
        for_each = ecs_target.value["network_configuration"] != null ? [ecs_target.value["network_configuration"]] : []
        content {
          subnets          = network_configuration.value["subnets"]
          security_groups  = network_configuration.value["security_groups"]
          assign_public_ip = network_configuration.value["assign_public_ip"]
        }
      }

      dynamic "ordered_placement_strategy" {
        for_each = ecs_target.value["ordered_placement_strategy"] != null ? [ecs_target.value["ordered_placement_strategy"]] : []
        content {
          type  = ordered_placement_strategy.value["type"]
          field = ordered_placement_strategy.value["field"]
        }
      }

      dynamic "placement_constraint" {
        for_each = ecs_target.value["placement_constraint"] != null ? [ecs_target.value["placement_constraint"]] : []
        content {
          type       = placement_constraint.value["type"]
          expression = placement_constraint.value["expression"]
        }
      }

      platform_version = ecs_target.value["platform_version"]
      propagate_tags   = ecs_target.value["propagate_tags"]
      task_count       = ecs_target.value["task_count"]
      tags             = ecs_target.value["tags"]
    }
  }

  event_bus_name = var.eventTargetEventBusName
  force_destroy  = var.eventTargetForceDestroy

  dynamic "http_target" {
    for_each = var.eventTargetHttpTarget != null ? [var.eventTargetHttpTarget] : []
    content {
      header_parameters       = http_target.value["header_parameters"]
      path_parameter_values   = http_target.value["path_parameter_values"]
      query_string_parameters = http_target.value["query_string_parameters"]
    }
  }

  input      = var.eventTargetInput
  input_path = var.eventTargetInputPath

  dynamic "input_transformer" {
    for_each = var.eventTargetInputTransformer != null ? [var.eventTargetInputTransformer] : []
    content {
      input_template = input_transformer.value["input_template"]
      input_paths    = input_transformer.value["input_paths"]
    }
  }

  dynamic "kinesis_target" {
    for_each = var.eventTargetKinesisTarget != null ? [var.eventTargetKinesisTarget] : []
    content {
      partition_key_path = kinesis_target.value["partition_key_path"]
    }
  }

  role_arn = var.eventTargetRoleArn

  dynamic "run_command_targets" {
    for_each = var.eventTargetRunCommandTargets != null ? [var.eventTargetRunCommandTargets] : []
    content {
      key    = run_command_targets.value["key"]
      values = run_command_targets.value["values"]
    }
  }

  dynamic "redshift_target" {
    for_each = var.eventTargetRedshiftTarget != null ? [var.eventTargetRedshiftTarget] : []
    content {
      database            = redshift_target.value["database"]
      db_user             = redshift_target.value["db_user"]
      secrets_manager_arn = redshift_target.value["secrets_manager_arn"]
      sql                 = redshift_target.value["sql"]
      statement_name      = redshift_target.value["statement_name"]
      with_event          = redshift_target.value["with_event"]
    }
  }

  dynamic "retry_policy" {
    for_each = var.eventTargetRetryPolicy != null ? [var.eventTargetRetryPolicy] : []
    content {
      maximum_event_age_in_seconds = retry_policy.value["maximum_event_age_in_seconds"]
      maximum_retry_attempts       = retry_policy.value["maximum_retry_attempts"]
    }
  }

  dynamic "sagemaker_pipeline_target" {
    for_each = var.eventTargetSagemakerPipelineTarget != null ? [var.eventTargetSagemakerPipelineTarget] : []
    content {
      dynamic "pipeline_parameter_list" {
        for_each = sagemaker_pipeline_target.value["pipeline_parameter_list"] != null ? [sagemaker_pipeline_target.value["pipeline_parameter_list"]] : []
        content {
          name  = pipeline_parameter_list.value["name"]
          value = pipeline_parameter_list.value["value"]
        }
      }
    }
  }

  dynamic "sqs_target" {
    for_each = var.eventTargetSqsTarget != null ? [var.eventTargetSqsTarget] : []
    content {
      message_group_id = sqs_target.value["message_group_id"]
    }
  }

  target_id = var.eventTargetId
}