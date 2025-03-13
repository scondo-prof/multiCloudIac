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

resource "aws_lambda_function" "lambdaFunction" {
  function_name           = "${var.resourceName}-lambda-function"
  role                    = var.lambdaFunctionRole
  architectures           = var.lambdaFunctionArchitectures
  code_signing_config_arn = var.lambdaFunctionCodeSigningConfigArn

  dynamic "dead_letter_config" {
    for_each = var.lambdaFunctionDeadLetterConfig != null ? [var.lambdaFunctionDeadLetterConfig] : []
    content {
      target_arn = dead_letter_config.value["target_arn"]
    }
  }

  description = var.lambdaFunctionDescription

  dynamic "environment" {
    for_each = var.lambdaFunctionEnvironment != null ? [var.lambdaFunctionEnvironment] : []
    content {
      variables = environment.value["variables"]
    }
  }

  dynamic "ephemeral_storage" {
    for_each = var.lambdaFunctionEphemeralStorage != null ? [var.lambdaFunctionEphemeralStorage] : []
    content {
      size = ephemeral_storage.value["size"]
    }
  }

  dynamic "file_system_config" {
    for_each = var.lambdaFunctionFileSystemConfig != null ? [var.lambdaFunctionFileSystemConfig] : []
    content {
      arn              = file_system_config.value["arn"]
      local_mount_path = file_system_config.value["local_mount_path"]
    }
  }

  filename = var.lambdaFunctionFilename
  handler  = var.lambdaFunctionHandler

  dynamic "image_config" {
    for_each = var.lambdaFunctionImageConfig != null ? [var.lambdaFunctionImageConfig] : []
    content {
      command           = image_config.value["command"]
      entry_point       = image_config.value["entry_point"]
      working_directory = image_config.value["working_directory"]
    }
  }

  image_uri   = var.lambdaFunctionImageUri
  kms_key_arn = var.lambdaFunctionKmsKeyArn
  layers      = var.lambdaFunctionLayers

  dynamic "logging_config" {
    for_each = var.lambdaFunctionLoggingConfig != null ? [var.lambdaFunctionLoggingConfig] : []
    content {
      application_log_level = logging_config.value["application_log_level"]
      log_format            = logging_config.value["log_format"]
      log_group             = logging_config.value["log_group"]
      system_log_level      = logging_config.value["system_log_level"]
    }
  }

  memory_size                        = var.lambdaFunctionMemorySize
  package_type                       = var.lambdaFunctionPackageType
  publish                            = var.lambdaFunctionPublish
  reserved_concurrent_executions     = var.lambdaFunctionReservedConcurrentExecutions
  replace_security_groups_on_destroy = var.lambdaFunctionReplaceSecurityGroupsOnDestroy
  replacement_security_group_ids     = var.lambdaFunctionReplacementSecurityGroupIds
  runtime                            = var.lambdaFunctionRuntime
  s3_bucket                          = var.lambdaFunctionS3Bucket
  s3_key                             = var.lambdaFunctionS3Key
  s3_object_version                  = var.lambdaFunctionS3ObjectVersion
  skip_destroy                       = var.lambdaFunctionSkipDestroy
  source_code_hash                   = var.lambdaFunctionSourceCodeHash

  dynamic "snap_start" {
    for_each = var.lambdaFunctionSnapStart != null ? [var.lambdaFunctionSnapStart] : []
    content {
      apply_on = snap_start.value["apply_on"]
    }
  }

  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.createdBy
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)

  timeout = var.lambdaFunctionTimeout

  dynamic "tracing_config" {
    for_each = var.lambdaFunctionTracingConfig != null ? [var.lambdaFunctionTracingConfig] : []
    content {
      mode = tracing_config.value["mode"]
    }
  }

  dynamic "vpc_config" {
    for_each = var.lambdaFunctionVpcConfig != null ? [var.lambdaFunctionVpcConfig] : []
    content {
      ipv6_allowed_for_dual_stack = vpc_config.value["ipv6_allowed_for_dual_stack"]
      security_group_ids          = vpc_config.value["security_group_ids"]
      subnet_ids                  = vpc_config.value["subnet_ids"]
    }
  }
}