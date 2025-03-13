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