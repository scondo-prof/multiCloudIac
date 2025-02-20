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

variable "bucketNotificationLambdaFunction" {
  type = object({
    events              = list(string)
    filter_prefix       = optional(string, null)
    filter_suffix       = optional(string, null)
    id                  = optional(string, null)
    lambda_function_arn = string
  })
}