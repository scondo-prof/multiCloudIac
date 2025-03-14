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

resource "aws_subnet" "subnet" {
  assign_ipv6_address_on_creation                = var.subnetAssignIpv6AddressOnCreation
  availability_zone                              = var.subnetAvailabilityZone
  availability_zone_id                           = var.subnetAvailabilityZoneId
  cidr_block                                     = var.subnetCidrBlock
  customer_owned_ipv4_pool                       = var.subnetCustomerOwnedIpv4Pool
  enable_dns64                                   = var.subnetEnableDns64
  enable_lni_at_device_index                     = var.subnetEnableLniAtDeviceIndex
  enable_resource_name_dns_aaaa_record_on_launch = var.subnetEnableResourceNameDnsAaaaRecordOnLaunch
  enable_resource_name_dns_a_record_on_launch    = var.subnetEnableResourceNameDnsARecordOnLaunch
  ipv6_cidr_block                                = var.subnetIpv6CidrBlock
  ipv6_native                                    = var.subnetIpv6Native
  map_customer_owned_ip_on_launch                = var.subnetMapCustomerOwnedIpOnLaunch
  map_public_ip_on_launch                        = var.subnetMapPublicIpOnLaunch
  outpost_arn                                    = var.subnetOutpustArn
  private_dns_hostname_type_on_launch            = var.subnetPrivateDnsHostnameTypeOnLaunch
  vpc_id                                         = var.subnetVpcId
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.creator
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
    Name         = "${var.resourceName}-subnet"
  }, var.additionalTags)
}