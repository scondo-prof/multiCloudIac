variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

variable "snsTopicPolicy" {
  type    = string
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/DeliveryPolicies.html
variable "snsTopicDeliveryPolicy" {
  type    = string
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "snsTopicApplicationSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "snsTopicApplicationSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.snsTopicApplicationSuccessFeedbackSampleRate == null || can(var.snsTopicApplicationSuccessFeedbackSampleRate >= 0 && var.snsTopicApplicationSuccessFeedbackSampleRate <= 100)
    error_message = "Variable snsTopicApplicationSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "snsTopicApplicationFailureFeedbackRoleArn" {
  type    = string
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "snsTopicHttpSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "snsTopicHttpSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.snsTopicHttpSuccessFeedbackSampleRate == null || can(var.snsTopicHttpSuccessFeedbackSampleRate >= 0 && var.snsTopicHttpSuccessFeedbackSampleRate <= 100)
    error_message = "Variable snsTopicHttpSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "snsTopicHttpFailureFeedbackRoleArn" {
  type    = string
  default = null
}

#The ID of an AWS-managed customer master key (CMK) for Amazon SNS or 
#a custom CMK. For more information, see Key Terms:
#https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms
variable "snsTopicKmsMasterKeyId" {
  type    = string
  default = null
}

#(Optional) If SignatureVersion should be 1 (SHA1) or 2 (SHA256). 
#The signature version corresponds to the hashing algorithm used 
#while creating the signature of the notifications, subscription 
#confirmations, or unsubscribe confirmation messages sent by 
#Amazon SNS.
#https://docs.aws.amazon.com/sns/latest/dg/sns-verify-signature-of-message.html
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

#(Optional) The message archive policy for FIFO topics. More details 
#in the AWS documentation.
#https://docs.aws.amazon.com/sns/latest/dg/message-archiving-and-replay-topic-owner.html
variable "snsTopicArchivePolicy" {
  type    = string
  default = null
}

#(Optional) Enables content-based deduplication for 
#FIFO topics. For more information, see the related documentation:
#https://docs.aws.amazon.com/sns/latest/dg/fifo-message-dedup.html
variable "snsTopicContentBasedDeduplication" {
  type    = bool
  default = false
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "snsTopicLambdaSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "snsTopicLambdaSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.snsTopicLambdaSuccessFeedbackSampleRate == null || can(var.snsTopicLambdaSuccessFeedbackSampleRate >= 0 && var.snsTopicLambdaSuccessFeedbackSampleRate <= 100)
    error_message = "Variable snsTopicLambdaSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "snsTopicLambdaFailureFeedbackRoleArn" {
  type    = string
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "snsTopicSqsSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "snsTopicSqsSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.snsTopicSqsSuccessFeedbackSampleRate == null || can(var.snsTopicSqsSuccessFeedbackSampleRate >= 0 && var.snsTopicSqsSuccessFeedbackSampleRate <= 100)
    error_message = "Variable snsTopicSqsSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "snsTopicSqsFailureFeedbackRoleArn" {
  type    = string
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "snsTopicFirehoseSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "snsTopicFirehoseSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.snsTopicFirehoseSuccessFeedbackSampleRate == null || can(var.snsTopicFirehoseSuccessFeedbackSampleRate >= 0 && var.snsTopicFirehoseSuccessFeedbackSampleRate <= 100)
    error_message = "Variable snsTopicFirehoseSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "snsTopicFirehoseFailureFeedbackRoleArn" {
  type    = string
  default = null
}

variable "projectName" {
  type = string
}

variable "creator" {
  type    = string
  default = "Scott Condo"
}

variable "deployedDate" {
  type = string
}

variable "snsTopicAdditionalTags" {
  type    = map(string)
  default = {}
}