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