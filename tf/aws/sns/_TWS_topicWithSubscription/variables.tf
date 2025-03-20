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

variable "TWS_SnsTopicPolicy" {
  type    = string
  default = null
}

variable "TWS_SnsTopicDeliveryPolicy" {
  type    = string
  default = null
}

variable "TWS_SnsTopicApplicationSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

variable "TWS_SnsTopicApplicationSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.TWS_SnsTopicApplicationSuccessFeedbackSampleRate == null || can(var.TWS_SnsTopicApplicationSuccessFeedbackSampleRate >= 0 && var.TWS_SnsTopicApplicationSuccessFeedbackSampleRate <= 100)
    error_message = "Variable TWS_SnsTopicApplicationSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

variable "TWS_SnsTopicApplicationFailureFeedbackRoleArn" {
  type    = string
  default = null
}

variable "TWS_SnsTopicHttpSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

variable "TWS_SnsTopicHttpSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.TWS_SnsTopicHttpSuccessFeedbackSampleRate == null || can(var.TWS_SnsTopicHttpSuccessFeedbackSampleRate >= 0 && var.TWS_SnsTopicHttpSuccessFeedbackSampleRate <= 100)
    error_message = "Variable TWS_SnsTopicHttpSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

variable "TWS_SnsTopicHttpFailureFeedbackRoleArn" {
  type    = string
  default = null
}

variable "TWS_SnsTopicKmsMasterKeyId" {
  type    = string
  default = null
}

variable "TWS_SnsTopicSignatureVersion" {
  type = number
  validation {
    condition     = var.TWS_SnsTopicSignatureVersion == null || can(var.TWS_SnsTopicSignatureVersion == 1 || var.TWS_SnsTopicSignatureVersion == 2)
    error_message = "Variable TWS_SnsTopicSignatureVersion must be 1 or 2"
  }
  default = null
}

variable "TWS_SnsTopicTracingConfig" {
  type = string
  validation {
    condition     = var.TWS_SnsTopicTracingConfig == null || can(contains(["PassThrough", "Active"], var.TWS_SnsTopicTracingConfig))
    error_message = "Valid inputs for | variable: TWS_SnsTopicTracingConfig | are: PassThrough, Active, null"
  }
  default = null
}

variable "TWS_SnsTopicFifoTopic" {
  type    = bool
  default = false
}

variable "TWS_SnsTopicArchivePolicy" {
  type    = string
  default = null
}

variable "TWS_SnsTopicContentBasedDeduplication" {
  type    = bool
  default = false
}

variable "TWS_SnsTopicLambdaSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

variable "TWS_SnsTopicLambdaSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.TWS_SnsTopicLambdaSuccessFeedbackSampleRate == null || can(var.TWS_SnsTopicLambdaSuccessFeedbackSampleRate >= 0 && var.TWS_SnsTopicLambdaSuccessFeedbackSampleRate <= 100)
    error_message = "Variable TWS_SnsTopicLambdaSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

variable "TWS_SnsTopicLambdaFailureFeedbackRoleArn" {
  type    = string
  default = null
}

variable "TWS_SnsTopicSqsSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

variable "TWS_SnsTopicSqsSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.TWS_SnsTopicSqsSuccessFeedbackSampleRate == null || can(var.TWS_SnsTopicSqsSuccessFeedbackSampleRate >= 0 && var.TWS_SnsTopicSqsSuccessFeedbackSampleRate <= 100)
    error_message = "Variable TWS_SnsTopicSqsSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

variable "TWS_SnsTopicSqsFailureFeedbackRoleArn" {
  type    = string
  default = null
}

variable "TWS_SnsTopicFirehoseSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

variable "TWS_SnsTopicFirehoseSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.TWS_SnsTopicFirehoseSuccessFeedbackSampleRate == null || can(var.TWS_SnsTopicFirehoseSuccessFeedbackSampleRate >= 0 && var.TWS_SnsTopicFirehoseSuccessFeedbackSampleRate <= 100)
    error_message = "Variable TWS_SnsTopicFirehoseSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

variable "TWS_SnsTopicFirehoseFailureFeedbackRoleArn" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription#argument-reference

variable "TWS_SnsTopicSubscriptionEndpoint" {
  type = string
}

variable "TWS_SnsTopicSubscriptionProtocal" {
  type = string

  validation {
    condition     = var.TWS_SnsTopicSubscriptionProtocal == null || contains(["sqs", "sms", "lambda", "firehose", "application", "email", "email-json", "http", "https"], var.TWS_SnsTopicSubscriptionProtocal)
    error_message = "The only valid options for TWS_SnsTopicSubscriptionProtocal are 'sqs', 'sms', 'lambda', 'firehose', 'application', 'email', 'email-json', 'http', 'https'."
  }
}
variable "TWS_SnsTopicSubscriptionSubscriptionRoleArn" {
  type    = string
  default = null
}

variable "TWS_SnsTopicSubscriptionTopicArn" {
  type = string
}

variable "TWS_SnsTopicSubscriptionConfirmationTimeoutInMinutes" {
  type    = number
  default = 1
}

variable "TWS_SnsTopicSubscriptionDeliveryPolicy" {
  type    = string
  default = null
}

variable "TWS_SnsTopicSubscriptionEndpointAutoConfirms" {
  type    = bool
  default = false
}

variable "TWS_SnsTopicSubscriptionFilterPolicy" {
  type    = string
  default = null
}

variable "TWS_SnsTopicSubscriptionFilterPolicyScope" {
  type = string
  validation {
    condition     = var.TWS_SnsTopicSubscriptionFilterPolicyScope == null || can(contains(["MessageAttributes", "MessageBody"], var.TWS_SnsTopicSubscriptionFilterPolicyScope))
    error_message = "Valid inputs for | variable: TWS_SnsTopicSubscriptionFilterPolicyScope | are: MessageAttributes, MessageBody, null"
  }
  default = null
}

variable "TWS_SnsTopicSubscriptionRawMessageDelivery" {
  type    = bool
  default = false
}

variable "TWS_SnsTopicSubscriptionRedrivePolicy" {
  type    = string
  default = null
}

variable "TWS_SnsTopicSubscriptionReplayPolicy" {
  type    = string
  default = null
}

#---