variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#argument-reference
variable "resourceName" {
  type = string
}

variable "s3BucketPrefix" {
  type    = string
  default = null
}

variable "s3BucketForceDestroy" {
  type    = bool
  default = true
}

variable "s3BucketObjectLockEnabled" {
  type    = bool
  default = null
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