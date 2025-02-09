variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_model#argument-reference

variable "modelRestApiId" {
  type = string
}

variable "modelName" {
  type = string
}

variable "modelDescription" {
  type    = string
  default = null
}

variable "modelContentType" {
  type = string
}

variable "modelSchemaFile" {
  type = string
}