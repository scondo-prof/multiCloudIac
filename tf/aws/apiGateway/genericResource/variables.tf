variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_resource#argument-reference

variable "resourceRestApiId" {
  type = string
}

variable "resourceParentId" {
  type = string
}

variable "resourcePathPart" {
  type = string
}