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
  default = {}
}

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#argument-reference

variable "BWV_S3BucketPrefix" {
  type    = string
  default = null
}

variable "BWV_S3BucketForceDestroy" {
  type    = bool
  default = true
}

variable "BWV_S3BucketObjectLockEnabled" {
  type    = bool
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning#argument-reference
variable "BWV_S3BucketVersioningConfigurationStatus" {
  type = string
  validation {
    condition = contains([
      "Enabled",
      "Suspended",
      "Disabled"
    ], var.BWV_S3BucketVersioningConfigurationStatus)
    error_message = "Valid inputs for | variable: var.BWV_S3BucketVersioningConfigurationStatus | are: Enabled, Suspended, or Disabled"
  }
}

variable "BWV_S3BucketVersioningConfigurationMfaDelete" {
  type = string
  validation {
    condition = var.BWV_S3BucketVersioningConfigurationMfaDelete == null || can(contains([
      "Enabled",
      "Disabled"
    ], var.BWV_S3BucketVersioningConfigurationMfaDelete))
    error_message = "Valid inputs for | variable: var.BWV_S3BucketVersioningConfigurationMfaDelete | are: Enabled, or Disabled"
  }
  default = null
}

variable "BWV_S3BucketVersioningExpectedBucketOwner" {
  type    = string
  default = null
}

variable "BWV_S3BucketVersioningMfa" {
  type    = string
  default = null
}

#---
