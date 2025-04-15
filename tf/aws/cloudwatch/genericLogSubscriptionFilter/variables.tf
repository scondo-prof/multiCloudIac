variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_subscription_filter#argument-reference

variable "logSubscriptionFilterDestinationArn" {
  type = string
}

variable "logSubscriptionFilterPattern" {
  type = string
}

variable "logSubscriptionFilterLogGroupName" {
  type = string
}

variable "logSubscriptionFilterRoleArn" {
  type    = string
  default = null
}

variable "logSubscriptionFilterDistribution" {
  type = string
  validation {
    condition = var.logSubscriptionFilterDistribution == null || can(contains([
      "Random",
      "ByLogStream"
    ], var.logSubscriptionFilterDistribution))
    error_message = "Valid inputs for | variable: var.logSubscriptionFilterDistribution | are: Random, ByLogStream"
  }
  default = null
}