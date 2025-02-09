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

resource "aws_nat_gateway" "nat" {
  allocation_id                      = var.natAllocationId
  connectivity_type                  = var.natConnectivityType
  private_ip                         = var.natPrivateIp
  subnet_id                          = var.natSubnetId
  secondary_allocation_ids           = var.natSecondaryAllocationIds
  secondary_private_ip_address_count = var.natSecondaryPrivateIpAddressCount
  secondary_private_ip_addresses     = var.natSecondaryPrivateIpAddresses
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.creator
    DeployedDate = var.deployedDate
  }, var.additionalTags)
}