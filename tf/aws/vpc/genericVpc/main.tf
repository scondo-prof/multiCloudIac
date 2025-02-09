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

resource "aws_vpc" "vpc" {
  cidr_block                           = var.vpcCidrBlock
  instance_tenancy                     = var.vpcInstanceTenancy
  ipv4_ipam_pool_id                    = var.vpcIpv4IpamPoolId
  ipv4_netmask_length                  = var.vpcIpv4NetmaskLength
  ipv6_cidr_block                      = var.vpcIpv6CidrBlock
  ipv6_ipam_pool_id                    = var.vpcIpv6IpamPoolId
  ipv6_netmask_length                  = var.vpcIpv6NetmaskLength
  ipv6_cidr_block_network_border_group = var.vpcIpv6CidrBlockNetworkBorderGroup
  enable_dns_support                   = var.vpcEnableDnsSupport
  enable_network_address_usage_metrics = var.vpcEnableNetworkAddressUsageMetrics
  enable_dns_hostnames                 = var.vpcEnableDnsHostnames
  assign_generated_ipv6_cidr_block     = var.vpcAssignGeneratedIpv6CidrBlock
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.creator
    DeployedDate = var.deployedDate
    Name = "${var.resourceName}-vpc"
  }, var.additionalTags)
}