variable "awsRegion" {
  type    = string
  default = "us-east-1"
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

variable "snsTopicSubscriptionTopicArn" {
  type = string
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