output "vpcArn" {
  value = aws_vpc.vpc.arn
}

output "vpcId" {
  value = aws_vpc.vpc.id
}

output "vpcCidrBlock" {
  value = aws_vpc.vpc.cidr_block
}

output "vpcInstanceTenancy" {
  value = aws_vpc.vpc.instance_tenancy
}

output "vpcDhcpOptionsId" {
  value = aws_vpc.vpc.dhcp_options_id
}

output "vpcEnableDnsSupport" {
  value = aws_vpc.vpc.enable_dns_support
}

output "vpcEnableNetworkAddressUsageMetrics" {
  value = aws_vpc.vpc.enable_network_address_usage_metrics
}

output "vpcDnsHostnames" {
  value = aws_vpc.vpc.enable_dns_hostnames
}

output "vpcMainrouteTableId" {
  value = aws_vpc.vpc.main_route_table_id
}

output "vpcDefaultNetworkAclId" {
  value = aws_vpc.vpc.default_network_acl_id
}

output "vpcDefaultSecurityGroupId" {
  value = aws_vpc.vpc.default_security_group_id
}

output "vpcDefaultRouteTableId" {
  value = aws_vpc.vpc.default_route_table_id
}

output "vpcIpv6AssociationId" {
  value = aws_vpc.vpc.ipv6_association_id
}

output "vpcIpv6CidrBlockNetworkBorderGroup" {
  value = aws_vpc.vpc.ipv6_cidr_block_network_border_group
}

output "vpcOwnerId" {
  value = aws_vpc.vpc.owner_id
}

output "vpcTagsAll" {
  value = aws_vpc.vpc.tags_all
}