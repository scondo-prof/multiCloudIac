variable "awsRegion" {
  type    = string
  default = "us-east-1"
}#g

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning#argument-reference
variable "s3BucketVersioningBucket" {
  type = string
}

variable "s3BucketVersioningConfigurationStatus" {
  type = string
  validation {
    condition = contains([
      "Enabled",
      "Suspended",
      "Disabled"
    ], var.s3BucketVersioningConfigurationStatus)
    error_message = "Valid inputs for | variable: var.s3BucketVersioningConfigurationStatus | are: Enabled, Suspended, or Disabled"
  }
}

variable "s3BucketVersioningConfigurationMfaDelete" {
  type = string
  validation {
    condition = var.s3BucketVersioningConfigurationMfaDelete == null || can(contains([
      "Enabled",
      "Disabled"
    ], var.s3BucketVersioningConfigurationMfaDelete))
    error_message = "Valid inputs for | variable: var.s3BucketVersioningConfigurationMfaDelete | are: Enabled, or Disabled"
  }
  default = null
}

variable "s3BucketVersioningExpectedBucketOwner" {
  type    = string
  default = null
}

variable "s3BucketVersioningMfa" {
  type    = string
  default = null
}