variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway_attachment#argument-reference

variable "igaInternetGatewayId" {
  type = string
}

variable "igaVpcId" {
  type = string
}