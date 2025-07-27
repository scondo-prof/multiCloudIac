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
  default = null
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue#argument-reference

variable "queueContentBasedDeduplication" {
  type    = bool
  default = null
}

variable "queueDeduplicationScope" {
  type = string
  validation {
    condition = var.queueDeduplicationScope == null || can(contains([
      "messageGroup",
      "queue"
    ], var.queueDeduplicationScope))
    error_message = "Valid inputs for | variable: var.queueDeduplicationScope | are: messageGroup , queue"
  }
  default = null
}

variable "queueDelaySeconds" {
  type = number
  validation {
    condition     = var.queueDelaySeconds == null || can(var.queueDelaySeconds >= 0 && var.queueDelaySeconds <= 900)
    error_message = "var.queueDelaySeconds must be Greater than or Equal to 0 AND Less Than or Equal to 900"
  }
  default = null
}

variable "queueFifoQueue" {
  type    = bool
  default = null
}

variable "queueFifoThroughputLimit" {
  type = string
  validation {
    condition = var.queueFifoThroughputLimit == null || can(contains([
      "perQueue",
      "perMessageGroupId"
    ], var.queueFifoThroughputLimit))
    error_message = "Valid inputs for | variable: var.queueFifoThroughputLimit | are: perQueue , perMessageGroupId"
  }
  default = null
}

variable "queueKmsDataKeyReusePeriodSeconds" {
  type = number
  validation {
    condition     = var.queueKmsDataKeyReusePeriodSeconds == null || can(var.queueKmsDataKeyReusePeriodSeconds >= 60 && var.queueKmsDataKeyReusePeriodSeconds <= 86400)
    error_message = "var.queueKmsDataKeyReusePeriodSeconds must be Greater than or Equal to 60 AND Less Than or Equal to 86400"
  }
  default = null
}

variable "queueKmsMasterKeyId" {
  type    = string
  default = null
}

variable "queueMaxMessageSize" {
  type = number
  validation {
    condition     = var.queueMaxMessageSize == null || can(var.queueMaxMessageSize >= 1024 && var.queueMaxMessageSize <= 262144)
    error_message = "var.queueMaxMessageSize must be Greater than or Equal to 1024 AND Less Than or Equal to 262144"
  }
  default = null
}

variable "queueMessageRetentionSeconds" {
  type = number
  validation {
    condition     = var.queueMessageRetentionSeconds == null || can(var.queueMessageRetentionSeconds >= 60 && var.queueMessageRetentionSeconds <= 1209600)
    error_message = "var.queueMessageRetentionSeconds must be Greater than or Equal to 60 AND Less Than or Equal to 1209600"
  }
  default = null
}

variable "queueName" {
  type    = string
  default = null
}

variable "queueNamePrefix" {
  type    = string
  default = null
}

variable "queuePolicyDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = map(list(string))
  }))
  default = []
}

variable "queueRecieveWaitTimeSeconds" {
  type = number
  validation {
    condition     = var.queueRecieveWaitTimeSeconds == null || can(var.queueRecieveWaitTimeSeconds >= 0 && var.queueRecieveWaitTimeSeconds <= 20)
    error_message = "var.queueRecieveWaitTimeSeconds must be Greater than or Equal to 0 AND Less Than or Equal to 20"
  }
  default = null
}

variable "queueRedriveAllowPolicy" {
  type    = map(string)
  default = null
}

variable "queueRedrivePolicy" {
  type    = map(string)
  default = null
}

variable "queueSqsManagedSseEnabled" {
  type    = bool
  default = null
}

variable "queueVisibilityTimeoutSeconds" {
  type = number
  validation {
    condition     = var.queueVisibilityTimeoutSeconds == null || can(var.queueVisibilityTimeoutSeconds >= 0 && var.queueVisibilityTimeoutSeconds <= 43200)
    error_message = "var.queueVisibilityTimeoutSeconds must be Greater than or Equal to 0 AND Less Than or Equal to 43200"
  }
  default = null
}