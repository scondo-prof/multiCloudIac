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

#Endpoint to send data to. The contents vary with the protocol. 
#See details below:

#application - Delivers JSON-encoded messages. endpoint is the 
#endpoint ARN of a mobile app and device.

#firehose - Delivers JSON-encoded messages. endpoint is the ARN 
#of an Amazon Kinesis Data Firehose delivery stream 
#(e.g., arn:aws:firehose:us-east-1:123456789012:deliverystream/ticketUploadStream).

#lambda - Delivers JSON-encoded messages. endpoint is the ARN of an 
#AWS Lambda function.

#sms - Delivers text messages via SMS. endpoint is the phone number of 
#an SMS-enabled device.

#sqs - Delivers JSON-encoded messages. endpoint is the ARN of an Amazon 
#SQS queue (e.g., arn:aws:sqs:us-west-2:123456789012:terraform-queue-too).

#email - Delivers messages via SMTP. endpoint is an email address.

#email-json - Delivers JSON-encoded messages via SMTP. endpoint 
#is an email address.

#http -- Delivers JSON-encoded messages via HTTP POST. endpoint is 
#a URL beginning with http://.

#https -- Delivers JSON-encoded messages via HTTPS POST. endpoint is 
#a URL
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

#(Required if protocol is firehose) ARN of the IAM role to publish 
#to Kinesis Data Firehose delivery stream. Refer to SNS docs:
#https://docs.aws.amazon.com/sns/latest/dg/sns-firehose-as-subscriber.html
variable "snsTopicSubscriptionSubscriptionRoleArn" {
  type    = string
  default = null
}

variable "snsTopicSubscriptionConfirmationTimeoutInMinutes" {
  type    = number
  default = 1
}

#(Optional) JSON String with the delivery policy 
#(retries, backoff, etc.) that will be used in the subscription 
#- this only applies to HTTP/S subscriptions. Refer to the SNS docs 
#for more details.
#https://docs.aws.amazon.com/sns/latest/dg/DeliveryPolicies.html
variable "snsTopicSubscriptionDeliveryPolicy" {
  type    = string
  default = null
}

#Whether the endpoint is capable of auto confirming 
#subscription (e.g., PagerDuty)
#http://docs.aws.amazon.com/sns/latest/dg/SendMessageToHttp.html#SendMessageToHttp.prepare
variable "snsTopicSubscriptionEndpointAutoConfirms" {
  type    = bool
  default = false
}

# (Optional) JSON String with the filter policy that will 
#be used in the subscription to filter messages seen by the 
#target resource. Refer to the SNS docs for more details.
#https://docs.aws.amazon.com/sns/latest/dg/message-filtering.html
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

#(Optional) JSON String with the redrive policy that 
#will be used in the subscription. Refer to the SNS 
#docs for more details.
#https://docs.aws.amazon.com/sns/latest/dg/sns-dead-letter-queues.html#how-messages-moved-into-dead-letter-queue
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