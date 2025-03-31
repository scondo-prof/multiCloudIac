

variable "resourceName" {
  type = string
}

variable "cloudRunAlertPolicyNotificationChannelId" {
  type = string
}

variable "cloudRunAlertPolicyNotificationRateLimit" {
  type    = string
  default = "600s"
}

variable "cloudRunAlertPolicyAutoClose" {
  type    = string
  default = "604800s"
}