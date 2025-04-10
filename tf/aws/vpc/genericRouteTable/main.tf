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
  count  = length(var.routeTableObjects)
  vpc_id = var.routeTableVpcId
  route  = var.routeTableObjects[count.index]["route"]
  tags = merge({
    Name         = "${var.routeTableObjects[count.index]["name"]}-rt"
    Project      = var.projectName
    CreatedBy    = var.createdBy
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)
  propagating_vgws = var.routeTableObjects[count.index]["propagating_vgws"]
}