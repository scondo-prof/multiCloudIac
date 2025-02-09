variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target#argument-reference
variable "eventTargetArn" {
  type = string
}

variable "eventTargetRule" {
  type = string
}

variable "eventTargetBatchTarget" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target#batch_target
  type = object({
    job_definition = string
    job_name       = string
    array_size     = optional(number, null)
    job_attempts   = optional(number, null)
  })
  default = null
}

variable "eventTargetDeadLetterConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target#dead_letter_config
  type = object({
    arn = optional(string, null)
  })
  default = null
}

variable "eventTargetEcsTarget" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target#ecs_target
  type = object({
    task_definition_arn = string

    capacity_provider_strategy = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target#capacity_provider_strategy
      capacity_provider = string
      weight            = number
      base              = optional(number, null)
    }), null)

    enable_ecs_managed_tags = optional(bool, null)
    enable_execute_command  = optional(bool, null)
    group                   = optional(string, null)
    launch_type             = optional(string, null)

    network_configuration = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target#network_configuration
      subnets          = list(string)
      security_groups  = optional(list(string), null)
      assign_public_ip = optional(bool, null)
    }), null)

    ordered_placement_strategy = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target#ordered_placement_strategy
      type  = string
      field = optional(string, null)
    }), null)

    placement_constraint = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target#placement_constraint
      type       = string
      expression = optional(string, null)
    }), null)

    platform_version = optional(string, null)
    propagate_tags   = optional(bool, null)
    task_count       = optional(number, null)
    tags             = optional(map(string), null)
  })
  default = null
}

variable "eventTargetEventBusName" {
  type    = string
  default = null
}

variable "eventTargetForceDestroy" {
  type    = bool
  default = null
}

variable "eventTargetHttpTarget" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target#http_target
  type = object({
    header_parameters       = optional(map(string), null)
    path_parameter_values   = optional(list(string), null)
    query_string_parameters = optional(map(string), null)
  })
  default = null
}

variable "eventTargetInput" {
  type    = string
  default = null
}

variable "eventTargetInputPath" {
  type    = string
  default = null
}

variable "eventTargetInputTransformer" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target#input_transformer
  type = object({
    input_template = string
    input_paths    = optional(map(string), null)
  })
  default = null
}

variable "eventTargetKinesisTarget" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target#kinesis_target
  type = object({
    partition_key_path = optional(string, null)
  })
  default = null
}

variable "eventTargetRoleArn" {
  type    = string
  default = null
}

variable "eventTargetRunCommandTargets" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target#run_command_targets
  type = object({
    key   = string
    value = optional(list(string), null)
  })
  default = null
}

variable "eventTargetRedshiftTarget" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target#redshift_target
  type = object({
    database            = string
    db_user             = optional(string, null)
    secrets_manager_arn = optional(string, null)
    sql                 = optional(string, null)
    statement_name      = optional(string, null)
    with_event          = optional(bool, null)
  })
  default = null
}

variable "eventTargetRetryPolicy" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target#retry_policy
  type = object({
    maximum_event_age_in_seconds = optional(number, null)
    maximum_retry_attempts       = optional(number, null)
  })
  default = null
}

variable "eventTargetSagemakerPipelineTarget" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target#sagemaker_pipeline_target
  type = object({
    pipeline_parameter_list = optional(object({
      name  = string
      value = string
    }), null)
  })
  default = null
}

variable "eventTargetSqsTarget" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target#sqs_target
  type = object({
    message_group_id = optional(string, null)
  })
  default = null
}

variable "eventTargetId" {
  type    = string
  default = null
}