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

resource "aws_eip" "eip" {
  address                   = var.eipAddress
  associate_with_private_ip = var.eipAssociateWithPrivateIp
  customer_owned_ipv4_pool  = var.eipCustomerOwnedIpv4Pool
  domain                    = var.eipDomain
  instance                  = var.eipInstance
  ipam_pool_id              = var.eipIpamPoolId
  network_border_group      = var.eipNetworkBorderGroup
  network_interface         = var.eipNetworkInterface
  public_ipv4_pool          = var.eipPublicIpv4Pool
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.creator
    DeployedDate = var.deployedDate
  }, var.additionalTags)
}