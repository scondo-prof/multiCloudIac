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
  count = length(var.routeTableAssociationObjects)
  subnet_id      = var.routeTableAssociationObjects[count.index]["subnet_id"]
  gateway_id     = var.routeTableAssociationObjects[count.index]["gateway_id"]
  route_table_id = var.routeTableAssociationObjects[count.index]["route_table_id"]
}