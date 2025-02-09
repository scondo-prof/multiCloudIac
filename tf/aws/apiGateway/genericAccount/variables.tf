variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_account#argument-reference

variable "accountCloudwatchRoleArn" {
  type    = string
  default = null
}