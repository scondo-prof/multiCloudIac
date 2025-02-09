
module "VFSI" {
  source                                             = "../_VFSI_vpcFlowlogSubnetIg"
  awsRegion                                          = var.awsRegion
  resourceName                                       = var.resourceName
  VFSI_VpcCidrBlock                                  = var.VFSNI_VFSI_VpcCidrBlock
  VFSI_VpcInstanceTenancy                            = var.VFSNI_VFSI_VpcInstanceTenancy
  VFSI_VpcIpv4IpamPoolId                             = var.VFSNI_VFSI_VpcIpv4IpamPoolId
  VFSI_VpcIpv4NetmaskLength                          = var.VFSNI_VFSI_VpcIpv4NetmaskLength
  VFSI_VpcIpv6CidrBlock                              = var.VFSNI_VFSI_VpcIpv6CidrBlock
  VFSI_VpcIpv6IpamPoolId                             = var.VFSNI_VFSI_VpcIpv6IpamPoolId
  VFSI_VpcIpv6NetmaskLength                          = var.VFSNI_VFSI_VpcIpv6NetmaskLength
  VFSI_VpcIpv6CidrBlockNetworkBorderGroup            = var.VFSNI_VFSI_VpcIpv6CidrBlockNetworkBorderGroup
  VFSI_VpcEnableDnsSupport                           = var.VFSNI_VFSI_VpcEnableDnsSupport
  VFSI_VpcEnableNetworkAddressUsageMetrics           = var.VFSNI_VFSI_VpcEnableNetworkAddressUsageMetrics
  VFSI_VpcEnableDnsHostnames                         = var.VFSNI_VFSI_VpcEnableDnsHostnames
  VFSI_VpcAssignGeneratedIpv6CidrBlock               = var.VFSNI_VFSI_VpcAssignGeneratedIpv6CidrBlock
  projectName                                        = var.projectName
  creator                                            = var.creator
  deployedDate                                       = var.deployedDate
  additionalTags                                     = var.additionalTags
  VFSI_SubnetAssignIpv6AddressOnCreation             = var.VFSNI_VFSI_SubnetAssignIpv6AddressOnCreation
  VFSI_SubnetAvailabilityZone                        = var.VFSNI_VFSI_SubnetAvailabilityZone
  VFSI_SubnetAvailabilityZoneId                      = var.VFSNI_VFSI_SubnetAvailabilityZoneId
  VFSI_SubnetCidrBlock                               = var.VFSNI_VFSI_SubnetCidrBlock
  VFSI_SubnetCustomerOwnedIpv4Pool                   = var.VFSNI_VFSI_SubnetCustomerOwnedIpv4Pool
  VFSI_SubnetEnableDns64                             = var.VFSNI_VFSI_SubnetEnableDns64
  VFSI_SubnetEnableLniAtDeviceIndex                  = var.VFSNI_VFSI_SubnetEnableLniAtDeviceIndex
  VFSI_SubnetEnableResourceNameDnsAaaaRecordOnLaunch = var.VFSNI_VFSI_SubnetEnableResourceNameDnsAaaaRecordOnLaunch
  VFSI_SubnetEnableResourceNameDnsARecordOnLaunch    = var.VFSNI_VFSI_SubnetEnableResourceNameDnsARecordOnLaunch
  VFSI_SubnetIpv6CidrBlock                           = var.VFSNI_VFSI_SubnetIpv6CidrBlock
  VFSI_SubnetIpv6Native                              = var.VFSNI_VFSI_SubnetIpv6Native
  VFSI_SubnetMapCustomerOwnedIpOnLaunch              = var.VFSNI_VFSI_SubnetMapCustomerOwnedIpOnLaunch
  VFSI_SubnetMapPublicIpOnLaunch                     = var.VFSNI_VFSI_SubnetMapPublicIpOnLaunch
  VFSI_SubnetOutpustArn                              = var.VFSNI_VFSI_SubnetOutpustArn
  VFSI_SubnetPrivateDnsHostnameTypeOnLaunch          = var.VFSNI_VFSI_SubnetPrivateDnsHostnameTypeOnLaunch
  VFSI_RouteTableIgRoute                             = var.VFSNI_VFSI_RouteTableIgRoute
  VFSI_RouteTablePropagatingVgws                     = var.VFSNI_VFSI_RouteTablePropagatingVgws
  VFSI_RouteTableAssociationGatewayId                = var.VFSNI_VFSI_RouteTableAssociationGatewayId
  VFSI_FlowLogTrafficType                            = var.VFSNI_VFSI_FlowLogTrafficType
  VFSI_FlowLogdeliverCrossAccountRole                = var.VFSNI_VFSI_FlowLogdeliverCrossAccountRole
  VFSI_FlowLogEniId                                  = var.VFSNI_VFSI_FlowLogEniId
  VFSI_FlowLogIamRoleArn                             = var.VFSNI_VFSI_FlowLogIamRoleArn
  VFSI_FlowLogDestinationType                        = var.VFSNI_VFSI_FlowLogDestinationType
  VFSI_FlowLogDestination                            = var.VFSNI_VFSI_FlowLogDestination
  VFSI_FlowLogSubnetId                               = var.VFSNI_VFSI_FlowLogSubnetId
  VFSI_FlowLogtransitGatewayId                       = var.VFSNI_VFSI_FlowLogtransitGatewayId
  VFSI_FlowLogTransitGatewayAttatchmentId            = var.VFSNI_VFSI_FlowLogTransitGatewayAttatchmentId
  VFSI_FlowLogLogFormat                              = var.VFSNI_VFSI_FlowLogLogFormat
  VFSI_FlowLogMaxAggregationInterval                 = var.VFSNI_VFSI_FlowLogMaxAggregationInterval
  VFSI_FlowLogDestinationOptions                     = var.VFSNI_VFSI_FlowLogDestinationOptions
}

#---

module "natSubnet" {
  source                                        = "../../aws/vpc/genericSubnet"
  awsRegion                                     = var.awsRegion
  subnetAssignIpv6AddressOnCreation             = var.VFSNI_NatSubnetAssignIpv6AddressOnCreation
  subnetAvailabilityZone                        = var.VFSNI_NatSubnetAvailabilityZone
  subnetAvailabilityZoneId                      = var.VFSNI_NatSubnetAvailabilityZoneId
  subnetCidrBlock                               = var.VFSNI_NatSubnetCidrBlock
  subnetCustomerOwnedIpv4Pool                   = var.VFSNI_NatSubnetCustomerOwnedIpv4Pool
  subnetEnableDns64                             = var.VFSNI_NatSubnetEnableDns64
  subnetEnableLniAtDeviceIndex                  = var.VFSNI_NatSubnetEnableLniAtDeviceIndex
  subnetEnableResourceNameDnsAaaaRecordOnLaunch = var.VFSNI_NatSubnetEnableResourceNameDnsAaaaRecordOnLaunch
  subnetEnableResourceNameDnsARecordOnLaunch    = var.VFSNI_NatSubnetEnableResourceNameDnsARecordOnLaunch
  subnetIpv6CidrBlock                           = var.VFSNI_NatSubnetIpv6CidrBlock
  subnetIpv6Native                              = var.VFSNI_NatSubnetIpv6Native
  subnetMapCustomerOwnedIpOnLaunch              = var.VFSNI_NatSubnetMapCustomerOwnedIpOnLaunch
  subnetMapPublicIpOnLaunch                     = var.VFSNI_NatSubnetMapPublicIpOnLaunch
  subnetOutpustArn                              = var.VFSNI_NatSubnetOutpustArn
  subnetPrivateDnsHostnameTypeOnLaunch          = var.VFSNI_NatSubnetPrivateDnsHostnameTypeOnLaunch
  subnetVpcId                                   = module.VFSI.VFSI_VpcId
  projectName                                   = var.projectName
  creator                                       = var.creator
  deployedDate                                  = var.deployedDate
  resourceName                                  = var.resourceName
  additionalTags                                = var.additionalTags
}

#---

module "natRouteTable" {
  source          = "../../aws/vpc/genericRouteTable"
  awsRegion       = var.awsRegion
  routeTableVpcId = module.VFSI.VFSI_VpcId
  routeTableRoutes = concat([merge({
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = module.nat.natId
    }, var.VFSNI_NatRouteTableNatRoute),
    merge({
      cidr_block = module.VFSI.VFSI_VpcCidrBlock
      gateway_id = "local"
  }, var.VFSNI_NatRouteTableLocalRoute)], var.VFSNI_NatRouteTableRoutes)
  projectName               = var.projectName
  creator                   = var.creator
  deployedDate              = var.deployedDate
  additionalTags            = var.additionalTags
  routeTablePropagatingVgws = var.VFSNI_NatRouteTablePropagatingVgws
}

#---

module "natSubnetRouteTableAssociation" {
  source                            = "../../aws/vpc/genericRouteTableAssociation"
  awsRegion                         = var.awsRegion
  routeTableAssociationSubnetId     = module.natSubnet.subnetId
  routeTableAssociationGatewayId    = var.VFSNI_NatSubnetRouteTableAssociationGatewayId
  routeTableAssociationRouteTableId = module.natRouteTable.routeTableId
}

#---

module "natEip" {
  source                    = "../../aws/ec2/genericEip"
  awsRegion                 = var.awsRegion
  eipAddress                = var.VFSNI_NatEipAddress
  eipAssociateWithPrivateIp = var.VFSNI_NatEipAssociateWithPrivateIp
  eipCustomerOwnedIpv4Pool  = var.VFSNI_NatEipCustomerOwnedIpv4Pool
  eipDomain                 = var.VFSNI_NatEipDomain
  eipInstance               = var.VFSNI_NatEipInstance
  eipIpamPoolId             = var.VFSNI_NatEipIpamPoolId
  eipNetworkBorderGroup     = var.VFSNI_NatEipNetworkBorderGroup
  eipNetworkInterface       = var.VFSNI_NatEipNetworkInterface
  eipPublicIpv4Pool         = var.VFSNI_NatEipPublicIpv4Pool
  projectName               = var.projectName
  creator                   = var.creator
  deployedDate              = var.deployedDate
  additionalTags            = var.additionalTags
}

#---

module "nat" {
  source                            = "../../aws/vpc/genericNatGateway"
  awsRegion                         = var.awsRegion
  natAllocationId                   = module.natEip.eipAllocationId
  natConnectivityType               = var.VFSNI_NatConnectivityType
  natPrivateIp                      = var.VFSNI_NatPrivateIp
  natSubnetId                       = module.natSubnet.subnetId
  natSecondaryAllocationIds         = var.VFSNI_NatSecondaryAllocationIds
  natSecondaryPrivateIpAddressCount = var.VFSNI_NatSecondaryPrivateIpAddressCount
  natSecondaryPrivateIpAddresses    = var.VFSNI_NatSecondaryPrivateIpAddresses
  projectName                       = var.projectName
  creator                           = var.creator
  deployedDate                      = var.deployedDate
  additionalTags                    = var.additionalTags
}

#---
