variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

variable "projectName" {
  type = string
}

variable "creator" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#argument-reference
variable "IRIPSB_BWV_S3BucketPrefix" {
  type    = string
  default = null
}

variable "IRIPSB_BWV_S3BucketForceDestroy" {
  type    = bool
  default = true
}

variable "IRIPSB_BWV_S3BucketObjectLockEnabled" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning#argument-reference
variable "IRIPSB_BWV_S3BucketVersioningConfigurationStatus" {
  type = string
  validation {
    condition = contains([
      "Enabled",
      "Suspended",
      "Disabled"
    ], var.IRIPSB_BWV_S3BucketVersioningConfigurationStatus)
    error_message = "Valid inputs for | variable: var.IRIPSB_BWV_S3BucketVersioningConfigurationStatus | are: Enabled, Suspended, or Disabled"
  }
}

variable "IRIPSB_BWV_S3BucketVersioningConfigurationMfaDelete" {
  type = string
  validation {
    condition = var.IRIPSB_BWV_S3BucketVersioningConfigurationMfaDelete == null || can(contains([
      "Enabled",
      "Disabled"
    ], var.IRIPSB_BWV_S3BucketVersioningConfigurationMfaDelete))
    error_message = "Valid inputs for | variable: var.IRIPSB_BWV_S3BucketVersioningConfigurationMfaDelete | are: Enabled, or Disabled"
  }
  default = null
}

variable "IRIPSB_BWV_S3BucketVersioningExpectedBucketOwner" {
  type    = string
  default = null
}

variable "IRIPSB_BWV_S3BucketVersioningMfa" {
  type    = string
  default = null
}

#---
