
module "vpc" {
  source                              = "../../aws/vpc/genericVpc"
  awsRegion                           = var.awsRegion
  vpcCidrBlock                        = var.VFSI_VpcCidrBlock
  vpcInstanceTenancy                  = var.VFSI_VpcInstanceTenancy
  vpcIpv4IpamPoolId                   = var.VFSI_VpcIpv4IpamPoolId
  vpcIpv4NetmaskLength                = var.VFSI_VpcIpv4NetmaskLength
  vpcIpv6CidrBlock                    = var.VFSI_VpcIpv6CidrBlock
  vpcIpv6IpamPoolId                   = var.VFSI_VpcIpv6IpamPoolId
  vpcIpv6NetmaskLength                = var.VFSI_VpcIpv6NetmaskLength
  vpcIpv6CidrBlockNetworkBorderGroup  = var.VFSI_VpcIpv6CidrBlockNetworkBorderGroup
  vpcEnableDnsSupport                 = var.VFSI_VpcEnableDnsSupport
  vpcEnableNetworkAddressUsageMetrics = var.VFSI_VpcEnableNetworkAddressUsageMetrics
  vpcEnableDnsHostnames               = var.VFSI_VpcEnableDnsHostnames
  vpcAssignGeneratedIpv6CidrBlock     = var.VFSI_VpcAssignGeneratedIpv6CidrBlock
  projectName                         = var.projectName
  createdBy                           = var.createdBy
  deployedDate                        = var.deployedDate
  tfModule                            = var.tfModule
  resourceName                        = var.resourceName
  additionalTags                      = var.additionalTags
}

#---

module "subnet" {
  source         = "../../aws/vpc/genericSubnet"
  awsRegion      = var.awsRegion
  subnetObjects  = var.VFSI_SubnetObjects
  subnetVpcId    = var.VFSI_SubnetVpcId
  projectName    = var.projectName
  createdBy      = var.createdBy
  deployedDate   = var.deployedDate
  tfModule       = var.tfModule
  additionalTags = var.additionalTags
}

#---

module "routeTable" {
  source                    = "../../aws/vpc/genericRouteTable"
  awsRegion                 = var.awsRegion
  routeTableVpcId           = var.VFSI_RouteTableVpcId
  routeTableRoutes          = var.VFSI_RouteTableRoutes
  projectName               = var.projectName
  createdBy                 = var.createdBy
  deployedDate              = var.deployedDate
  tfModule                  = var.tfModule
  additionalTags            = var.additionalTags
  routeTablePropagatingVgws = var.VFSI_RouteTablePropagatingVgws
}

#---

module "routeTableAssociation" {
  source                            = "../../aws/vpc/genericRouteTableAssociation"
  awsRegion                         = var.awsRegion
  routeTableAssociationSubnetId     = var.VFSI_RouteTableAssociationSubnetId
  routeTableAssociationGatewayId    = var.VFSI_RouteTableAssociationGatewayId
  routeTableAssociationRouteTableId = var.VFSI_RouteTableAssociationRouteTableId
}

#---

module "Ig" {
  source         = "../../aws/vpc/genericInternetGateway"
  awsRegion      = var.awsRegion
  igVpcId        = var.VFSI_IgVpcId
  projectName    = var.projectName
  createdBy      = var.createdBy
  deployedDate   = var.deployedDate
  tfModule       = var.tfModule
  additionalTags = var.additionalTags
}

#---

module "flowLog" {
  source                             = "../../aws/vpc/genericFlowLog"
  awsRegion                          = var.awsRegion
  flowLogTrafficType                 = var.VFSI_FlowLogTrafficType
  flowLogdeliverCrossAccountRole     = var.VFSI_FlowLogdeliverCrossAccountRole
  flowLogEniId                       = var.VFSI_FlowLogEniId
  flowLogIamRoleArn                  = var.VFSI_FlowLogIamRoleArn
  flowLogDestinationType             = var.VFSI_FlowLogDestinationType
  flowLogDestination                 = var.VFSI_FlowLogDestination
  flowLogSubnetId                    = var.VFSI_FlowLogSubnetId
  flowLogtransitGatewayId            = var.VFSI_FlowLogtransitGatewayId
  flowLogTransitGatewayAttatchmentId = var.VFSI_FlowLogTransitGatewayAttatchmentId
  flowLogVpcId                       = var.VFSI_FlowLogVpcId
  flowLogLogFormat                   = var.VFSI_FlowLogLogFormat
  flowLogMaxAggregationInterval      = var.VFSI_FlowLogMaxAggregationInterval
  flowLogDestinationOptions          = var.VFSI_FlowLogDestinationOptions
  projectName                        = var.projectName
  createdBy                          = var.createdBy
  deployedDate                       = var.deployedDate
  tfModule                           = var.tfModule
  additionalTags                     = var.additionalTags
}

#---

# module "subnet" {
#   source                                        = "../../aws/vpc/genericSubnet"
#   awsRegion                                     = var.awsRegion
#   resourceName                                  = var.resourceName
#   subnetAssignIpv6AddressOnCreation             = var.VFSI_SubnetAssignIpv6AddressOnCreation
#   subnetAvailabilityZone                        = var.VFSI_SubnetAvailabilityZone
#   subnetAvailabilityZoneId                      = var.VFSI_SubnetAvailabilityZoneId
#   subnetCidrBlock                               = var.VFSI_SubnetCidrBlock
#   subnetCustomerOwnedIpv4Pool                   = var.VFSI_SubnetCustomerOwnedIpv4Pool
#   subnetEnableDns64                             = var.VFSI_SubnetEnableDns64
#   subnetEnableLniAtDeviceIndex                  = var.VFSI_SubnetEnableLniAtDeviceIndex
#   subnetEnableResourceNameDnsAaaaRecordOnLaunch = var.VFSI_SubnetEnableResourceNameDnsAaaaRecordOnLaunch
#   subnetEnableResourceNameDnsARecordOnLaunch    = var.VFSI_SubnetEnableResourceNameDnsARecordOnLaunch
#   subnetIpv6CidrBlock                           = var.VFSI_SubnetIpv6CidrBlock
#   subnetIpv6Native                              = var.VFSI_SubnetIpv6Native
#   subnetMapCustomerOwnedIpOnLaunch              = var.VFSI_SubnetMapCustomerOwnedIpOnLaunch
#   subnetMapPublicIpOnLaunch                     = var.VFSI_SubnetMapPublicIpOnLaunch
#   subnetOutpustArn                              = var.VFSI_SubnetOutpustArn
#   subnetPrivateDnsHostnameTypeOnLaunch          = var.VFSI_SubnetPrivateDnsHostnameTypeOnLaunch
#   subnetVpcId                                   = module.vpc.vpcId
#   projectName                                   = var.projectName
#   creator                                       = var.createdBy
#   deployedDate                                  = var.deployedDate
#   additionalTags                                = var.additionalTags
# }

# #---

# module "routeTable" {
#   source          = "../../aws/vpc/genericRouteTable"
#   awsRegion       = var.awsRegion
#   routeTableVpcId = module.vpc.vpcId
#   routeTableRoutes = concat([merge({
#     cidr_block = "0.0.0.0/0"
#     gateway_id = module.ig.igId
#     }, var.VFSI_RouteTableIgRoute),
#     merge({
#       cidr_block = module.vpc.vpcCidrBlock
#       gateway_id = "local"
#   }, var.VFSI_RouteTableIgRoute)], var.VFSI_RouteTableRoutes)
#   projectName               = var.projectName
#   creator                   = var.createdBy
#   deployedDate              = var.deployedDate
#   additionalTags            = var.additionalTags
#   routeTablePropagatingVgws = var.VFSI_RouteTablePropagatingVgws
# }

# #---

# module "routeTableAssociation" {
#   source                            = "../../aws/vpc/genericRouteTableAssociation"
#   awsRegion                         = var.awsRegion
#   routeTableAssociationSubnetId     = module.subnet.subnetId
#   routeTableAssociationGatewayId    = var.VFSI_RouteTableAssociationGatewayId
#   routeTableAssociationRouteTableId = module.routeTable.routeTableId
# }

# #---

# module "ig" {
#   source         = "../../aws/vpc/genericInternetGateway"
#   awsRegion      = var.awsRegion
#   igVpcId        = module.vpc.vpcId
#   projectName    = var.projectName
#   creator        = var.createdBy
#   deployedDate   = var.deployedDate
#   additionalTags = var.additionalTags
# }

# #---

# module "flowLog" {
#   source                             = "../../aws/vpc/genericFlowLog"
#   awsRegion                          = var.awsRegion
#   flowLogTrafficType                 = var.VFSI_FlowLogTrafficType
#   flowLogdeliverCrossAccountRole     = var.VFSI_FlowLogdeliverCrossAccountRole
#   flowLogEniId                       = var.VFSI_FlowLogEniId
#   flowLogIamRoleArn                  = var.VFSI_FlowLogIamRoleArn
#   flowLogDestinationType             = var.VFSI_FlowLogDestinationType
#   flowLogDestination                 = var.VFSI_FlowLogDestination
#   flowLogSubnetId                    = var.VFSI_FlowLogSubnetId
#   flowLogtransitGatewayId            = var.VFSI_FlowLogtransitGatewayId
#   flowLogTransitGatewayAttatchmentId = var.VFSI_FlowLogTransitGatewayAttatchmentId
#   flowLogVpcId                       = module.vpc.vpcId
#   flowLogLogFormat                   = var.VFSI_FlowLogLogFormat
#   flowLogMaxAggregationInterval      = var.VFSI_FlowLogMaxAggregationInterval
#   flowLogDestinationOptions          = var.VFSI_FlowLogDestinationOptions
#   projectName                        = var.projectName
#   creator                            = var.createdBy
#   deployedDate                       = var.deployedDate
#   additionalTags                     = var.additionalTags
# }

# #---
