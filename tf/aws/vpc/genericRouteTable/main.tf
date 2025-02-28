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

resource "aws_route_table" "routeTable" {
  vpc_id = var.routeTableVpcId
  route  = var.routeTableRoutes
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.creator
    DeployedDate = var.deployedDate
  }, var.additionalTags)
  propagating_vgws = var.routeTablePropagatingVgws
}