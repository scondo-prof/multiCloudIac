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

resource "aws_route_table_association" "routeTableAssociation" {
  subnet_id = var.routeTableAssociationSubnetId
  gateway_id = var.routeTableAssociationGatewayId
  route_table_id = var.routeTableAssociationRouteTableId
}