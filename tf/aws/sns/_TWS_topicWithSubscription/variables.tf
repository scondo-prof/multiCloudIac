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

variable "snsTopicPolicy" {
  type    = string
  default = null
}

variable "snsTopicDeliveryPolicy" {
  type    = string
  default = null
}

variable "snsTopicApplicationSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

variable "snsTopicApplicationSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.snsTopicApplicationSuccessFeedbackSampleRate == null || can(var.snsTopicApplicationSuccessFeedbackSampleRate >= 0 && var.snsTopicApplicationSuccessFeedbackSampleRate <= 100)
    error_message = "Variable snsTopicApplicationSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

variable "snsTopicApplicationFailureFeedbackRoleArn" {
  type    = string
  default = null
}

variable "snsTopicHttpSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

variable "snsTopicHttpSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.snsTopicHttpSuccessFeedbackSampleRate == null || can(var.snsTopicHttpSuccessFeedbackSampleRate >= 0 && var.snsTopicHttpSuccessFeedbackSampleRate <= 100)
    error_message = "Variable snsTopicHttpSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

variable "snsTopicHttpFailureFeedbackRoleArn" {
  type    = string
  default = null
}

variable "snsTopicKmsMasterKeyId" {
  type    = string
  default = null
}

variable "snsTopicSignatureVersion" {
  type = number
  validation {
    condition     = var.snsTopicSignatureVersion == null || can(var.snsTopicSignatureVersion == 1 || var.snsTopicSignatureVersion == 2)
    error_message = "Variable snsTopicSignatureVersion must be 1 or 2"
  }
  default = null
}

variable "snsTopicTracingConfig" {
  type = string
  validation {
    condition     = var.snsTopicTracingConfig == null || can(contains(["PassThrough", "Active"], var.snsTopicTracingConfig))
    error_message = "Valid inputs for | variable: snsTopicTracingConfig | are: PassThrough, Active, null"
  }
  default = null
}

variable "snsTopicFifoTopic" {
  type    = bool
  default = false
}

variable "snsTopicArchivePolicy" {
  type    = string
  default = null
}

variable "snsTopicContentBasedDeduplication" {
  type    = bool
  default = false
}

variable "snsTopicLambdaSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

variable "snsTopicLambdaSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.snsTopicLambdaSuccessFeedbackSampleRate == null || can(var.snsTopicLambdaSuccessFeedbackSampleRate >= 0 && var.snsTopicLambdaSuccessFeedbackSampleRate <= 100)
    error_message = "Variable snsTopicLambdaSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

variable "snsTopicLambdaFailureFeedbackRoleArn" {
  type    = string
  default = null
}

variable "snsTopicSqsSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

variable "snsTopicSqsSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.snsTopicSqsSuccessFeedbackSampleRate == null || can(var.snsTopicSqsSuccessFeedbackSampleRate >= 0 && var.snsTopicSqsSuccessFeedbackSampleRate <= 100)
    error_message = "Variable snsTopicSqsSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

variable "snsTopicSqsFailureFeedbackRoleArn" {
  type    = string
  default = null
}

variable "snsTopicFirehoseSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

variable "snsTopicFirehoseSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.snsTopicFirehoseSuccessFeedbackSampleRate == null || can(var.snsTopicFirehoseSuccessFeedbackSampleRate >= 0 && var.snsTopicFirehoseSuccessFeedbackSampleRate <= 100)
    error_message = "Variable snsTopicFirehoseSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

variable "snsTopicFirehoseFailureFeedbackRoleArn" {
  type    = string
  default = null
}

variable "snsTopicSubscriptionEndpoint" {
  type = string
}

variable "snsTopicSubscriptionProtocal" {
  type = string

  validation {
    condition     = var.snsTopicSubscriptionProtocal == null || contains(["sqs", "sms", "lambda", "firehose", "application", "email", "email-json", "http", "https"], var.snsTopicSubscriptionProtocal)
    error_message = "The only valid options for snsTopicSubscriptionProtocal are 'sqs', 'sms', 'lambda', 'firehose', 'application', 'email', 'email-json', 'http', 'https'."
  }
}

variable "snsTopicSubscriptionSubscriptionRoleArn" {
  type    = string
  default = null
}

variable "snsTopicSubscriptionConfirmationTimeoutInMinutes" {
  type    = number
  default = 1
}

variable "snsTopicSubscriptionDeliveryPolicy" {
  type    = string
  default = null
}

variable "snsTopicSubscriptionEndpointAutoConfirms" {
  type    = bool
  default = false
}

variable "snsTopicSubscriptionFilterPolicy" {
  type    = string
  default = null
}


variable "snsTopicSubscriptionFilterPolicyScope" {
  type = string
  validation {
    condition     = var.snsTopicSubscriptionFilterPolicyScope == null || can(contains(["MessageAttributes", "MessageBody"], var.snsTopicSubscriptionFilterPolicyScope))
    error_message = "Valid inputs for | variable: snsTopicSubscriptionFilterPolicyScope | are: MessageAttributes, MessageBody, null"
  }
  default = null
}

variable "snsTopicSubscriptionRawMessageDelivery" {
  type    = bool
  default = false
}

variable "snsTopicSubscriptionRedrivePolicy" {
  type    = string
  default = null
}

#(Optional) JSON String with the archived message replay 
#policy that will be used in the subscription. Refer to the 
#SNS docs for more details.
#https://docs.aws.amazon.com/sns/latest/dg/message-archiving-and-replay-subscriber.html
variable "snsTopicSubscriptionReplayPolicy" {
  type    = string
  default = null
}