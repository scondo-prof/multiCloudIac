output "VFSI_VpcArn" {
  value = module.vpc.vpcArn
}

output "VFSI_VpcId" {
  value = module.vpc.vpcId
}

output "VFSI_VpcCidrBlock" {
  value = module.vpc.vpcCidrBlock
}

output "VFSI_VpcInstanceTenancy" {
  value = module.vpc.vpcInstanceTenancy
}

output "VFSI_VpcDhcpOptionsId" {
  value = module.vpc.vpcDhcpOptionsId
}

output "VFSI_VpcEnableDnsSupport" {
  value = module.vpc.vpcEnableDnsSupport
}

output "VFSI_VpcEnableNetworkAddressUsageMetrics" {
  value = module.vpc.vpcEnableNetworkAddressUsageMetrics
}

output "VFSI_VpcDnsHostnames" {
  value = module.vpc.vpcDnsHostnames
}

output "VFSI_VpcMainrouteTableId" {
  value = module.vpc.vpcMainrouteTableId
}

output "VFSI_VpcDefaultNetworkAclId" {
  value = module.vpc.vpcDefaultNetworkAclId
}

output "VFSI_VpcDefaultSecurityGroupId" {
  value = module.vpc.vpcDefaultSecurityGroupId
}

output "VFSI_VpcDefaultRouteTableId" {
  value = module.vpc.vpcDefaultRouteTableId
}

output "VFSI_VpcIpv6AssociationId" {
  value = module.vpc.vpcIpv6AssociationId
}

output "VFSI_VpcIpv6CidrBlockNetworkBorderGroup" {
  value = module.vpc.vpcIpv6CidrBlockNetworkBorderGroup
}

output "VFSI_VpcOwnerId" {
  value = module.vpc.vpcOwnerId
}

output "VFSI_VpcTagsAll" {
  value = module.vpc.vpcTagsAll
}

#---
output "VFSI_SubnetArn" {
  value = module.subnet.subnetArn
}

output "VFSI_SubnetCidrBlock" {
  value = module.subnet.subnetCidrBlock
}

output "VFSI_SubnetIpv6CidrBlockAssociationId" {
  value = module.subnet.subnetIpv6CidrBlockAssociationId
}

output "VFSI_SubnetId" {
  value = module.subnet.subnetId
}

output "VFSI_SubnetOwnerId" {
  value = module.subnet.subnetOwnerId
}

output "VFSI_SubnetTagsAll" {
  value = module.subnet.subnetTagsAll
}

#---
output "VFSI_RouteTableArn" {
  value = module.routeTable.routeTableArn
}

output "VFSI_RouteTableId" {
  value = module.routeTable.routeTableId
}

output "VFSI_RouteTableOwnerId" {
  value = module.routeTable.routeTableOwnerId
}

output "VFSI_RouteTableTagsAll" {
  value = module.routeTable.routeTableTagsAll
}

#---
output "VFSI_RouteTableArn" {
  value = module.routeTable.routeTableArn
}

output "VFSI_RouteTableId" {
  value = module.routeTable.routeTableId
}

output "VFSI_RouteTableOwnerId" {
  value = module.routeTable.routeTableOwnerId
}

output "VFSI_RouteTableTagsAll" {
  value = module.routeTable.routeTableTagsAll
}

#---
output "VFSI_RouteTableAssociationId" {
  value = module.routeTableAssociation.routeTableAssociationId
}

#---
output "VFSI_IgArn" {
  value = module.Ig.igArn
}

output "VFSI_IgId" {
  value = module.Ig.igId
}

output "VFSI_IgOwnerId" {
  value = module.Ig.igOwnerId
}

output "VFSI_IgTagsAll" {
  value = module.Ig.igTagsAll
}

#---
output "VFSI_FlowLogArn" {
  value = module.flowLog.flowLogArn
}

output "VFSI_FlowLogId" {
  value = module.flowLog.flowLogId
}

output "VFSI_FlowLogTagsAll" {
  value = module.flowLog.flowLogTagsAll
}

#---
