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
  count                                          = length(var.subnetObjects)
  assign_ipv6_address_on_creation                = var.subnetObjects[count.index]["assign_ipv6_address_on_creation"]
  availability_zone                              = var.subnetObjects[count.index]["availability_zone"]
  availability_zone_id                           = var.subnetObjects[count.index]["availability_zone_id"]
  cidr_block                                     = var.subnetObjects[count.index]["cidr_block"]
  customer_owned_ipv4_pool                       = var.subnetObjects[count.index]["customer_owned_ipv4_pool"]
  enable_dns64                                   = var.subnetObjects[count.index]["enable_dns64"]
  enable_lni_at_device_index                     = var.subnetObjects[count.index]["enable_lni_at_device_index"]
  enable_resource_name_dns_aaaa_record_on_launch = var.subnetObjects[count.index]["enable_resource_name_dns_aaaa_record_on_launch"]
  enable_resource_name_dns_a_record_on_launch    = var.subnetObjects[count.index]["enable_resource_name_dns_a_record_on_launch"]
  ipv6_cidr_block                                = var.subnetObjects[count.index]["ipv6_cidr_block"]
  ipv6_native                                    = var.subnetObjects[count.index]["ipv6_native"]
  map_customer_owned_ip_on_launch                = var.subnetObjects[count.index]["map_customer_owned_ip_on_launch"]
  map_public_ip_on_launch                        = var.subnetObjects[count.index]["map_public_ip_on_launch"]
  outpost_arn                                    = var.subnetObjects[count.index]["outpost_arn"]
  private_dns_hostname_type_on_launch            = var.subnetObjects[count.index]["private_dns_hostname_type_on_launch"]
  vpc_id                                         = var.subnetObjects[count.index]["vpc_id"]
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.createdBy
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
    Name         = "${var.subnetObjects[count.index]["name"]}-subnet"
  }, var.additionalTags)
}