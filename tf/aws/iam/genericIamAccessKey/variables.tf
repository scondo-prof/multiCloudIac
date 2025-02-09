variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key#argument-reference

variable "iamAccessKeyPgpKey" {
  type    = string
  default = null
}

variable "iamAccessKeyStatus" {
  type = string
  validation {
    condition = var.iamAccessKeyStatus == null || can(contains([
      "Active",
      "Inactive"
    ], var.iamAccessKeyStatus))
    error_message = "Valid inputs for | variable: var.iamAccessKeyStatus | are: Active, and Inactive"
  }
  default = null
}

variable "iamAccessKeyUser" {
  type = string
}