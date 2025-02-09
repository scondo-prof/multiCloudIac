variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

variable "ABT_SnsTopicPolicy" {
  type    = string
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/DeliveryPolicies.html
variable "ABT_SnsTopicDeliveryPolicy" {
  type    = string
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "ABT_SnsTopicApplicationSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "ABT_SnsTopicApplicationSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.ABT_SnsTopicApplicationSuccessFeedbackSampleRate == null || can(var.ABT_SnsTopicApplicationSuccessFeedbackSampleRate >= 0 && var.ABT_SnsTopicApplicationSuccessFeedbackSampleRate <= 100)
    error_message = "Variable ABT_SnsTopicApplicationSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "ABT_SnsTopicApplicationFailureFeedbackRoleArn" {
  type    = string
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "ABT_SnsTopicHttpSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "ABT_SnsTopicHttpSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.ABT_SnsTopicHttpSuccessFeedbackSampleRate == null || can(var.ABT_SnsTopicHttpSuccessFeedbackSampleRate >= 0 && var.ABT_SnsTopicHttpSuccessFeedbackSampleRate <= 100)
    error_message = "Variable ABT_SnsTopicHttpSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "ABT_SnsTopicHttpFailureFeedbackRoleArn" {
  type    = string
  default = null
}

#The ID of an AWS-managed customer master key (CMK) for Amazon SNS or 
#a custom CMK. For more information, see Key Terms:
#https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms
variable "ABT_SnsTopicKmsMasterKeyId" {
  type    = string
  default = null
}

#(Optional) If SignatureVersion should be 1 (SHA1) or 2 (SHA256). 
#The signature version corresponds to the hashing algorithm used 
#while creating the signature of the notifications, subscription 
#confirmations, or unsubscribe confirmation messages sent by 
#Amazon SNS.
#https://docs.aws.amazon.com/sns/latest/dg/sns-verify-signature-of-message.html
variable "ABT_SnsTopicSignatureVersion" {
  type = number
  validation {
    condition     = var.ABT_SnsTopicSignatureVersion == null || can(var.ABT_SnsTopicSignatureVersion == 1 || var.ABT_SnsTopicSignatureVersion == 2)
    error_message = "Variable ABT_SnsTopicSignatureVersion must be 1 or 2"
  }
  default = null
}

variable "ABT_SnsTopicTracingConfig" {
  type = string
  validation {
    condition     = var.ABT_SnsTopicTracingConfig == null || can(contains(["PassThrough", "Active"], var.ABT_SnsTopicTracingConfig))
    error_message = "Valid inputs for | variable: ABT_SnsTopicTracingConfig | are: PassThrough, Active, null"
  }
  default = null
}

variable "ABT_SnsTopicFifoTopic" {
  type    = bool
  default = false
}

#(Optional) The message archive policy for FIFO topics. More details 
#in the AWS documentation.
#https://docs.aws.amazon.com/sns/latest/dg/message-archiving-and-replay-topic-owner.html
variable "ABT_SnsTopicArchivePolicy" {
  type    = string
  default = null
}

#(Optional) Enables content-based deduplication for 
#FIFO topics. For more information, see the related documentation:
#https://docs.aws.amazon.com/sns/latest/dg/fifo-message-dedup.html
variable "ABT_SnsTopicContentBasedDeduplication" {
  type    = bool
  default = false
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "ABT_SnsTopicLambdaSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "ABT_SnsTopicLambdaSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.ABT_SnsTopicLambdaSuccessFeedbackSampleRate == null || can(var.ABT_SnsTopicLambdaSuccessFeedbackSampleRate >= 0 && var.ABT_SnsTopicLambdaSuccessFeedbackSampleRate <= 100)
    error_message = "Variable ABT_SnsTopicLambdaSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "ABT_SnsTopicLambdaFailureFeedbackRoleArn" {
  type    = string
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "ABT_SnsTopicSqsSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "ABT_SnsTopicSqsSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.ABT_SnsTopicSqsSuccessFeedbackSampleRate == null || can(var.ABT_SnsTopicSqsSuccessFeedbackSampleRate >= 0 && var.ABT_SnsTopicSqsSuccessFeedbackSampleRate <= 100)
    error_message = "Variable ABT_SnsTopicSqsSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "ABT_SnsTopicSqsFailureFeedbackRoleArn" {
  type    = string
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "ABT_SnsTopicFirehoseSuccessFeedbackRoleArn" {
  type    = string
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "ABT_SnsTopicFirehoseSuccessFeedbackSampleRate" {
  type = number
  validation {
    condition     = var.ABT_SnsTopicFirehoseSuccessFeedbackSampleRate == null || can(var.ABT_SnsTopicFirehoseSuccessFeedbackSampleRate >= 0 && var.ABT_SnsTopicFirehoseSuccessFeedbackSampleRate <= 100)
    error_message = "Variable ABT_SnsTopicFirehoseSuccessFeedbackSampleRate must be greater than or equal to 0 and less than or equal to 100"
  }
  default = null
}

#https://docs.aws.amazon.com/sns/latest/dg/sns-topic-attributes.html
variable "ABT_SnsTopicFirehoseFailureFeedbackRoleArn" {
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
variable "ABT_SnsTopicSubscriptionEndpoint" {
  type = string
}

variable "ABT_SnsTopicSubscriptionProtocal" {
  type = string

  validation {
    condition     = var.ABT_SnsTopicSubscriptionProtocal == null || contains(["sqs", "sms", "lambda", "firehose", "application", "email", "email-json", "http", "https"], var.ABT_SnsTopicSubscriptionProtocal)
    error_message = "The only valid options for ABT_SnsTopicSubscriptionProtocal are 'sqs', 'sms', 'lambda', 'firehose', 'application', 'email', 'email-json', 'http', 'https'."
  }
}

#(Required if protocol is firehose) ARN of the IAM role to publish 
#to Kinesis Data Firehose delivery stream. Refer to SNS docs:
#https://docs.aws.amazon.com/sns/latest/dg/sns-firehose-as-subscriber.html
variable "ABT_SnsTopicSubscriptionSubscriptionRoleArn" {
  type    = string
  default = null
}

variable "ABT_SnsTopicSubscriptionConfirmationTimeoutInMinutes" {
  type    = number
  default = 1
}

#(Optional) JSON String with the delivery policy 
#(retries, backoff, etc.) that will be used in the subscription 
#- this only applies to HTTP/S subscriptions. Refer to the SNS docs 
#for more details.
#https://docs.aws.amazon.com/sns/latest/dg/DeliveryPolicies.html
variable "ABT_SnsTopicSubscriptionDeliveryPolicy" {
  type    = string
  default = null
}

#Whether the endpoint is capable of auto confirming 
#subscription (e.g., PagerDuty)
#http://docs.aws.amazon.com/sns/latest/dg/SendMessageToHttp.html#SendMessageToHttp.prepare
variable "ABT_SnsTopicSubscriptionEndpointAutoConfirms" {
  type    = bool
  default = false
}

# (Optional) JSON String with the filter policy that will 
#be used in the subscription to filter messages seen by the 
#target resource. Refer to the SNS docs for more details.
#https://docs.aws.amazon.com/sns/latest/dg/message-filtering.html
variable "ABT_SnsTopicSubscriptionFilterPolicy" {
  type    = string
  default = null
}


variable "ABT_SnsTopicSubscriptionFilterPolicyScope" {
  type = string
  validation {
    condition     = var.ABT_SnsTopicSubscriptionFilterPolicyScope == null || can(contains(["MessageAttributes", "MessageBody"], var.ABT_SnsTopicSubscriptionFilterPolicyScope))
    error_message = "Valid inputs for | variable: ABT_SnsTopicSubscriptionFilterPolicyScope | are: MessageAttributes, MessageBody, null"
  }
  default = null
}

variable "ABT_SnsTopicSubscriptionRawMessageDelivery" {
  type    = bool
  default = false
}

#(Optional) JSON String with the redrive policy that 
#will be used in the subscription. Refer to the SNS 
#docs for more details.
#https://docs.aws.amazon.com/sns/latest/dg/sns-dead-letter-queues.html#how-messages-moved-into-dead-letter-queue
variable "ABT_SnsTopicSubscriptionRedrivePolicy" {
  type    = string
  default = null
}

#(Optional) JSON String with the archived message replay 
#policy that will be used in the subscription. Refer to the 
#SNS docs for more details.
#https://docs.aws.amazon.com/sns/latest/dg/message-archiving-and-replay-subscriber.html
variable "ABT_SnsTopicSubscriptionReplayPolicy" {
  type    = string
  default = null
}

variable "ABT_BudgetType" {
  type    = string
  default = "COST"
}

variable "ABT_BudgetLimitAmount" {
  type = number
}

variable "ABT_BudgetLimitUnit" {
  type    = string
  default = "USD"
}

variable "ABT_BudgetTimeUnit" {
  type = string

  validation {
    condition     = contains(["MONTHLY", "QUARTERLY", "ANNUALLY", "DAILY"], var.ABT_BudgetTimeUnit)
    error_message = "The only valid options for ABT_BudgetTimeUnit are 'MONTHLY', 'QUARTERLY', 'ANNUALLY', 'DAILY'."
  }
}

variable "ABT_BudgetCostFilterName" {
  type = string

  validation {
    condition     = contains(["PurchaseType", "UsageTypeGroup", "Service", "Operation", "UsageType", "BillingEntity", "CostCategory", "LinkedAccount", "TagKeyValue", "LegalEntityName", "InvoicingEntity", "AZ", "Region", "InstanceType"], var.ABT_BudgetCostFilterName)
    error_message = "The only valid options for ABT_BudgetCostFilterName are 'PurchaseType', 'UsageTypeGroup', 'Service', 'Operation', 'UsageType', 'BillingEntity', 'CostCategory', 'LinkedAccount', 'TagKeyValue', 'LegalEntityName', 'InvoicingEntity', 'AZ', 'Region', 'InstanceType'."
  }
}


variable "ABT_BudgetCostFilterValues" {
  type = list(string)
}

variable "ABT_BudgetNotificationComparisonOperator" {
  type = string

  validation {
    condition     = contains(["LESS_THAN", "EQUAL_TO", "GREATER_THAN"], var.ABT_BudgetNotificationComparisonOperator)
    error_message = "The only valid options for ABT_BudgetNotificationComparisonOperator are 'LESS_THAN', 'EQUAL_TO', 'GREATER_THAN'."
  }
}

variable "ABT_BudgetNotificationThreshold" {
  type = number
}

variable "ABT_BudgetNotificationThresholdType" {
  type = string

  validation {
    condition     = contains(["PERCENTAGE", "ABSOLUTE_VALUE"], var.ABT_BudgetNotificationThresholdType)
    error_message = "The only valid options for ABT_BudgetNotificationThresholdType are 'PERCENTAGE', 'ABSOLUTE_VALUE'."
  }
}

variable "ABT_BudgetNotificationType" {
  type = string

  validation {
    condition     = contains(["ACTUAL", "FORECASTED"], var.ABT_BudgetNotificationType)
    error_message = "The only valid options for ABT_BudgetNotificationType are 'ACTUAL', 'FORECASTED'."
  }
}

variable "ABT_AdditionalSnsTopicArns" {
  type    = list(string)
  default = null
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}