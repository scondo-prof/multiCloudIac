terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = var.awsRegion
}

resource "aws_internet_gateway_attachment" "iga" {
  internet_gateway_id = var.igaInternetGatewayId
  vpc_id              = var.igaVpcId
}  