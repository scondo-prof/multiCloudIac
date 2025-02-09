variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission#argument-reference
variable "lambdaPermissionAction" {
  type = string
}

#The Event Source Token to validate. Used with Alexa Skills.
variable "lambdaPermissionEventSourceToken" {
  type    = string
  default = null
}

variable "lambdaPermissionFunctionName" {
  type = string
}

#Only supported for lambda:InvokeFunctionUrl action.
variable "lambdaPermissionUrlAuthType" {
  type = string
  validation {
    condition = var.lambdaPermissionUrlAuthType == null || can(contains([
      "AWS_IAM",
      "NONE"
    ], var.lambdaPermissionUrlAuthType))
    error_message = "Valid inputs for | variable: var.lambdaPermissionUrlAuthType | are: AWS_IAM, and NONE"
  }
  default = null
}

variable "lambdaPermissionPrincipal" {
  type = string
}

variable "lambdaPermissionQualifier" {
  type    = string
  default = null
}

variable "lambdaPermissionSourceAccount" {
  type    = number
  default = null
}

variable "lambdaPermissionSourceArn" {
  type    = string
  default = null
}

variable "lambdaPermissionStatementId" {
  type    = string
  default = null
}

variable "lambdaPermissionStatementIdPrefix" {
  type    = string
  default = null
}

variable "lambdaPermissionPrincipalOrgId" {
  type    = string
  default = null
}