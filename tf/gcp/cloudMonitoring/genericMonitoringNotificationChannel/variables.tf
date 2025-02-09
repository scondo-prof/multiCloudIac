variable "gcpProjectId" {
  type = string
  default = "p3-prod-aa94d"
}

variable "gcpRegion" {
  type = string
  default = "us-east1"
}

variable "notificationChannelType" {
  type = string
  validation {
    condition = contains([
      "campfire",
      "email",
      "google_chat",
      "hipchat",
      "pagerduty",
      "pubsub",
      "slack",
      "sms",
      "webhook_basicauth",
      "webhook_tokenauth"
      ]
    , var.notificationChannelType)
    error_message = "Valid inputs for | variable: notificationChannelType | are: campfire, email, google_chat, hipchat, pagerduty, pubsub, slack, sms, webhook_basicauth, webhook_tokenauth"
  }
  default = "email"
}

# (Optional) Configuration fields that define the channel 
# and its behavior. The permissible and required labels are 
# specified in the NotificationChannelDescriptor corresponding 
# to the type field. Labels with sensitive data are obfuscated by 
# the API and therefore Terraform cannot determine if there are upstream 
# changes to these fields. They can also be configured via the 
# sensitive_labels block, but cannot be configured in both places.
variable "notificationChannelLabels" {
  type    = map(string)
  default = null
}

variable "notificationChannelSensitiveLabels" {
  type = object({
    auth_token  = optional(string, null)
    password    = optional(string, null)
    service_key = optional(string, null)
  })
  default = null
}

variable "projectName" {
  type = string
}

variable "deployedDate" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "notificationChannelAdditionalUserLabels" {
  type    = map(string)
  default = null
}

variable "resourceName" {
  type = string
}

variable "notificationChannelEnabled" {
  type    = bool
  default = true
}

variable "notificationChannelForceDelete" {
  type = bool
}