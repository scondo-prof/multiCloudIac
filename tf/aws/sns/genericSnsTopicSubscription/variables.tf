variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription#argument-reference

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

variable "snsTopicSubscriptionTopicArn" {
  type = string
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

variable "snsTopicSubscriptionReplayPolicy" {
  type    = string
  default = null
}