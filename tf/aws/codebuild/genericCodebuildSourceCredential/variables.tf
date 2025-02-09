variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_source_credential#argument-reference
variable "credentialsAuthType" {
  type = string
  validation {
    condition = contains([
    "OAUTH",
    "BASIC_AUTH",
    "PERSONAL_ACCESS_TOKEN",
    "CODECONNECTIONS",
    "SECRETS_MANAGER"
], var.credentialsAuthType)
    error_message = "Valid inputs for | variable: var.credentialsAuthType | are: OAUTH, BASIC_AUTH, PERSONAL_ACCESS_TOKEN, CODECONNECTIONS, SECRETS_MANAGER"
  }
}

variable "credentialsServerType" {
  type = string
}

variable "credentialsToken" {
  type = string
}

variable "credentialsUserName" {
  type    = string
  default = null
}