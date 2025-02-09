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

resource "aws_eip_association" "eipAssociation" {
  allocation_id        = var.eipAssociationAllocationId
  allow_reassociation  = var.eipAssociationAllowReassociation
  instance_id          = var.eipAssociationInstanceId
  network_interface_id = var.eipAssociationNetworkInterfaceId
  private_ip_address   = var.eipAssociationPrivateIpAddress
}