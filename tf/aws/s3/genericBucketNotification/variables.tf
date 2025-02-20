variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_notification#argument-reference

variable "bucketNotificationBucket" {
  type = string
}

variable "bucketNotificationEventbridge" {
  type    = bool
  default = null
}

variable "bucketNotificationLambdaFunction" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_notification#lambda_function
  type = object({
    events              = list(string)
    filter_prefix       = optional(string, null)
    filter_suffix       = optional(string, null)
    id                  = optional(string, null)
    lambda_function_arn = string
  })
}

variable "bucketNotificationQueue" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_notification#queue
  type = object({
    events        = list(string)
    filter_prefix = optional(string, null)
    filter_suffix = optional(string, null)
    id            = optional(string, null)
    queue_arn     = string
  })
}