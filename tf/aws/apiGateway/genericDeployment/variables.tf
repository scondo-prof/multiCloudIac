variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_deployment#argument-reference

variable "deploymentDescription" {
  type    = string
  default = null
}

variable "deploymentRestApiId" {
  type = string
}

variable "deploymentTriggers" {
  type    = map(string)
  default = null
}

variable "deploymentVariables" {
  type    = map(string)
  default = null
}