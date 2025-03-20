variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

variable "projectName" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic#argument-reference

variable "ABT_TWS_SnsTopicPolicy" {
  type    = string
  default = null
}

variable "ABT_TWS_SnsTopicDeliveryPolicy" {
  type    = string
  default = null
}

variable "ABT_TWS_SnsTopicApplicationSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

variable "ABT_TWS_SnsTopicApplicationSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.ABT_TWS_SnsTopicApplicationSuccessFeedbackSampleRate == null || can(var.ABT_TWS_SnsTopicApplicationSuccessFeedbackSampleRate >= 0 && var.ABT_TWS_SnsTopicApplicationSuccessFeedbackSampleRate <= 100)
    error_message = "Variable ABT_TWS_SnsTopicApplicationSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

variable "ABT_TWS_SnsTopicApplicationFailureFeedbackRoleArn" {
  type    = string
  default = null
}

variable "ABT_TWS_SnsTopicHttpSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

variable "ABT_TWS_SnsTopicHttpSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.ABT_TWS_SnsTopicHttpSuccessFeedbackSampleRate == null || can(var.ABT_TWS_SnsTopicHttpSuccessFeedbackSampleRate >= 0 && var.ABT_TWS_SnsTopicHttpSuccessFeedbackSampleRate <= 100)
    error_message = "Variable ABT_TWS_SnsTopicHttpSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

variable "ABT_TWS_SnsTopicHttpFailureFeedbackRoleArn" {
  type    = string
  default = null
}

variable "ABT_TWS_SnsTopicKmsMasterKeyId" {
  type    = string
  default = null
}

variable "ABT_TWS_SnsTopicSignatureVersion" {
  type = number
  validation {
    condition     = var.ABT_TWS_SnsTopicSignatureVersion == null || can(var.ABT_TWS_SnsTopicSignatureVersion == 1 || var.ABT_TWS_SnsTopicSignatureVersion == 2)
    error_message = "Variable ABT_TWS_SnsTopicSignatureVersion must be 1 or 2"
  }
  default = null
}

variable "ABT_TWS_SnsTopicTracingConfig" {
  type = string
  validation {
    condition     = var.ABT_TWS_SnsTopicTracingConfig == null || can(contains(["PassThrough", "Active"], var.ABT_TWS_SnsTopicTracingConfig))
    error_message = "Valid inputs for | variable: ABT_TWS_SnsTopicTracingConfig | are: PassThrough, Active, null"
  }
  default = null
}

variable "ABT_TWS_SnsTopicFifoTopic" {
  type    = bool
  default = false
}

variable "ABT_TWS_SnsTopicArchivePolicy" {
  type    = string
  default = null
}

variable "ABT_TWS_SnsTopicContentBasedDeduplication" {
  type    = bool
  default = false
}

variable "ABT_TWS_SnsTopicLambdaSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

variable "ABT_TWS_SnsTopicLambdaSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.ABT_TWS_SnsTopicLambdaSuccessFeedbackSampleRate == null || can(var.ABT_TWS_SnsTopicLambdaSuccessFeedbackSampleRate >= 0 && var.ABT_TWS_SnsTopicLambdaSuccessFeedbackSampleRate <= 100)
    error_message = "Variable ABT_TWS_SnsTopicLambdaSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

variable "ABT_TWS_SnsTopicLambdaFailureFeedbackRoleArn" {
  type    = string
  default = null
}

variable "ABT_TWS_SnsTopicSqsSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

variable "ABT_TWS_SnsTopicSqsSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.ABT_TWS_SnsTopicSqsSuccessFeedbackSampleRate == null || can(var.ABT_TWS_SnsTopicSqsSuccessFeedbackSampleRate >= 0 && var.ABT_TWS_SnsTopicSqsSuccessFeedbackSampleRate <= 100)
    error_message = "Variable ABT_TWS_SnsTopicSqsSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

variable "ABT_TWS_SnsTopicSqsFailureFeedbackRoleArn" {
  type    = string
  default = null
}

variable "ABT_TWS_SnsTopicFirehoseSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

variable "ABT_TWS_SnsTopicFirehoseSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.ABT_TWS_SnsTopicFirehoseSuccessFeedbackSampleRate == null || can(var.ABT_TWS_SnsTopicFirehoseSuccessFeedbackSampleRate >= 0 && var.ABT_TWS_SnsTopicFirehoseSuccessFeedbackSampleRate <= 100)
    error_message = "Variable ABT_TWS_SnsTopicFirehoseSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

variable "ABT_TWS_SnsTopicFirehoseFailureFeedbackRoleArn" {
  type    = string
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription#argument-reference

variable "ABT_TWS_SnsTopicSubscriptionEndpoint" {
  type = string
}

variable "ABT_TWS_SnsTopicSubscriptionProtocal" {
  type = string

  validation {
    condition     = var.ABT_TWS_SnsTopicSubscriptionProtocal == null || contains(["sqs", "sms", "lambda", "firehose", "application", "email", "email-json", "http", "https"], var.ABT_TWS_SnsTopicSubscriptionProtocal)
    error_message = "The only valid options for ABT_TWS_SnsTopicSubscriptionProtocal are 'sqs', 'sms', 'lambda', 'firehose', 'application', 'email', 'email-json', 'http', 'https'."
  }
}
variable "ABT_TWS_SnsTopicSubscriptionSubscriptionRoleArn" {
  type    = string
  default = null
}

variable "ABT_TWS_SnsTopicSubscriptionTopicArn" {
  type = string
}

variable "ABT_TWS_SnsTopicSubscriptionConfirmationTimeoutInMinutes" {
  type    = number
  default = 1
}

variable "ABT_TWS_SnsTopicSubscriptionDeliveryPolicy" {
  type    = string
  default = null
}

variable "ABT_TWS_SnsTopicSubscriptionEndpointAutoConfirms" {
  type    = bool
  default = false
}

variable "ABT_TWS_SnsTopicSubscriptionFilterPolicy" {
  type    = string
  default = null
}

variable "ABT_TWS_SnsTopicSubscriptionFilterPolicyScope" {
  type = string
  validation {
    condition     = var.ABT_TWS_SnsTopicSubscriptionFilterPolicyScope == null || can(contains(["MessageAttributes", "MessageBody"], var.ABT_TWS_SnsTopicSubscriptionFilterPolicyScope))
    error_message = "Valid inputs for | variable: ABT_TWS_SnsTopicSubscriptionFilterPolicyScope | are: MessageAttributes, MessageBody, null"
  }
  default = null
}

variable "ABT_TWS_SnsTopicSubscriptionRawMessageDelivery" {
  type    = bool
  default = false
}

variable "ABT_TWS_SnsTopicSubscriptionRedrivePolicy" {
  type    = string
  default = null
}

variable "ABT_TWS_SnsTopicSubscriptionReplayPolicy" {
  type    = string
  default = null
}



#---
variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "projectName" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ABT_budgets_ABT_budget#argument-reference

variable "ABT_budgetType" {
  type = string
}

variable "ABT_budgetTimeUnit" {
  type = string
  validation {
    condition = contains([
      "MONTHLY",
      "QUARTERLY",
      "ANNUALLY",
      "DAILY"
    ], var.ABT_budgetTimeUnit)
    error_message = "Valid inputs for | variable: var.ABT_budgetTimeUnit | are: MONTHLY, QUARTERLY, ANNUALLY, DAILY"
  }
}

variable "ABT_budgetAccountId" {
  type    = string
  default = null
}

variable "ABT_budgetAutoAdjustData" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ABT_budgets_ABT_budget#auto-adjust-data
    auto_adjust_type = string

    historical_options = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ABT_budgets_ABT_budget#historical-options
      ABT_budget_adjustment_period = number
    })
  })

  default = null
}

variable "ABT_budgetCostFilter" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ABT_budgets_ABT_budget#cost-filter
    name   = string
    values = list(string)
  })
  default = null
}

variable "ABT_budgetCostTypes" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ABT_budgets_ABT_budget#cost-types
    include_credit             = optional(bool, null)
    include_discount           = optional(bool, null)
    include_other_subscription = optional(bool, null)
    include_recurring          = optional(bool, null)
    include_refund             = optional(bool, null)
    include_subscription       = optional(bool, null)
    include_support            = optional(bool, null)
    include_tax                = optional(bool, null)
    include_upfront            = optional(bool, null)
    use_amortized              = optional(bool, null)
    use_blended                = optional(bool, null)
  })
  default = null
}

variable "ABT_budgetLimitAmount" {
  type    = number
  default = null
}

variable "ABT_budgetLimitUnit" {
  type    = string
  default = null
}

variable "ABT_budgetName" {
  type    = string
  default = null
}

variable "ABT_budgetNamePrefix" {
  type    = string
  default = null
}

variable "ABT_budgetNotification" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ABT_budgets_ABT_budget#ABT_budget-notification
    comparison_operator        = string
    threshold                  = number
    threshold_type             = string
    notification_type          = string
    subscriber_email_addresses = optional(list(string), null)
    subscriber_sns_topic_arns  = optional(list(string), null)
  })
  default = null
}

variable "ABT_budgetPlannedLimit" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ABT_budgets_ABT_budget#planned-ABT_budget-limits
    start_time = string
    amount     = number
    unit       = string
  })
  default = null
}

variable "ABT_budgetTimePeriodEnd" {
  type    = string
  default = null
}

variable "ABT_budgetTimePeriodStart" {
  type    = string
  default = null
}

#---
