output "VFSNI_VFSI_VpcArn" {
  value = module.VFSI.VFSI_VpcArn
}

output "VFSNI_VFSI_VpcId" {
  value = module.VFSI.VFSI_VpcId
}

output "VFSNI_VFSI_VpcCidrBlock" {
  value = module.VFSI.VFSI_VpcCidrBlock
}

output "VFSNI_VFSI_VpcInstanceTenancy" {
  value = module.VFSI.VFSI_VpcInstanceTenancy
}

output "VFSNI_VFSI_VpcDhcpOptionsId" {
  value = module.VFSI.VFSI_VpcDhcpOptionsId
}

output "VFSNI_VFSI_VpcEnableDnsSupport" {
  value = module.VFSI.VFSI_VpcEnableDnsSupport
}

output "VFSNI_VFSI_VpcEnableNetworkAddressUsageMetrics" {
  value = module.VFSI.VFSI_VpcEnableNetworkAddressUsageMetrics
}

output "VFSNI_VFSI_VpcDnsHostnames" {
  value = module.VFSI.VFSI_VpcDnsHostnames
}

output "VFSNI_VFSI_VpcMainrouteTableId" {
  value = module.VFSI.VFSI_VpcMainrouteTableId
}

output "VFSNI_VFSI_VpcDefaultNetworkAclId" {
  value = module.VFSI.VFSI_VpcDefaultNetworkAclId
}

output "VFSNI_VFSI_VpcDefaultSecurityGroupId" {
  value = module.VFSI.VFSI_VpcDefaultSecurityGroupId
}

output "VFSNI_VFSI_VpcDefaultRouteTableId" {
  value = module.VFSI.VFSI_VpcDefaultRouteTableId
}

output "VFSNI_VFSI_VpcIpv6AssociationId" {
  value = module.VFSI.VFSI_VpcIpv6AssociationId
}

output "VFSNI_VFSI_VpcIpv6CidrBlockNetworkBorderGroup" {
  value = module.VFSI.VFSI_VpcIpv6CidrBlockNetworkBorderGroup
}

output "VFSNI_VFSI_VpcOwnerId" {
  value = module.VFSI.VFSI_VpcOwnerId
}

output "VFSNI_VFSI_VpcTagsAll" {
  value = module.VFSI.VFSI_VpcTagsAll
}


output "VFSNI_VFSI_SubnetArn" {
  value = module.VFSI.VFSI_SubnetArn
}

output "VFSNI_VFSI_SubnetCidrBlock" {
  value = module.VFSI.VFSI_SubnetCidrBlock
}

output "VFSNI_VFSI_SubnetIpv6CidrBlockAssociationId" {
  value = module.VFSI.VFSI_SubnetIpv6CidrBlockAssociationId
}

output "VFSNI_VFSI_SubnetId" {
  value = module.VFSI.VFSI_SubnetId
}

output "VFSNI_VFSI_SubnetOwnerId" {
  value = module.VFSI.VFSI_SubnetOwnerId
}

output "VFSNI_VFSI_SubnetTagsAll" {
  value = module.VFSI.VFSI_SubnetTagsAll
}


output "VFSNI_VFSI_RouteTableArn" {
  value = module.VFSI.VFSI_RouteTableArn
}

output "VFSNI_VFSI_RouteTableId" {
  value = module.VFSI.VFSI_RouteTableId
}

output "VFSNI_VFSI_RouteTableOwnerId" {
  value = module.VFSI.VFSI_RouteTableOwnerId
}

output "VFSNI_VFSI_RouteTableTagsAll" {
  value = module.VFSI.VFSI_RouteTableTagsAll
}



output "VFSNI_VFSI_RouteTableAssociationId" {
  value = module.VFSI.VFSI_RouteTableAssociationId
}


output "VFSNI_VFSI_IgArn" {
  value = module.VFSI.VFSI_IgArn
}

output "VFSNI_VFSI_IgId" {
  value = module.VFSI.VFSI_IgId
}

output "VFSNI_VFSI_IgOwnerId" {
  value = module.VFSI.VFSI_IgOwnerId
}

output "VFSNI_VFSI_IgTagsAll" {
  value = module.VFSI.VFSI_IgTagsAll
}


output "VFSNI_VFSI_FlowLogArn" {
  value = module.VFSI.VFSI_FlowLogArn
}

output "VFSNI_VFSI_FlowLogId" {
  value = module.VFSI.VFSI_FlowLogId
}

output "VFSNI_VFSI_FlowLogTagsAll" {
  value = module.VFSI.VFSI_FlowLogTagsAll
}




#---
output "VFSNI_NatSubnetArn" {
  value = module.natSubnet.subnetArn
}

output "VFSNI_NatSubnetCidrBlock" {
  value = module.natSubnet.subnetCidrBlock
}

output "VFSNI_NatSubnetIpv6CidrBlockAssociationId" {
  value = module.natSubnet.subnetIpv6CidrBlockAssociationId
}

output "VFSNI_NatSubnetId" {
  value = module.natSubnet.subnetId
}

output "VFSNI_NatSubnetOwnerId" {
  value = module.natSubnet.subnetOwnerId
}

output "VFSNI_NatSubnetTagsAll" {
  value = module.natSubnet.subnetTagsAll
}

#---
output "VFSNI_NatRouteTableArn" {
  value = module.natRouteTable.routeTableArn
}

output "VFSNI_NatRouteTableId" {
  value = module.natRouteTable.routeTableId
}

output "VFSNI_NatRouteTableOwnerId" {
  value = module.natRouteTable.routeTableOwnerId
}

output "VFSNI_NatRouteTableTagsAll" {
  value = module.natRouteTable.routeTableTagsAll
}

#---
output "VFSNI_NatSubnetRouteTableAssociationId" {
  value = module.natSubnetRouteTableAssociation.routeTableAssociationId
}

#---

output "VFSNI_NatEipAllocationId" {
  value = module.natEip.eipAllocationId
}

output "VFSNI_NatEipAssociationId" {
  value = module.natEip.eipAssociationId
}

output "VFSNI_NatEipId" {
  value = module.natEip.eipId
}

output "VFSNI_NatEipPublicIp" {
  value = module.natEip.eipPublicIp
}

#---

output "VFSNI_NatId" {
  value = module.nat.natId
}

#---
