
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

# <-- Attention --> add module for subnet with private subnet 

#---

module "subnet" {
  source         = "../../aws/vpc/genericSubnet"
  awsRegion      = var.awsRegion
  subnetObjects  = [
    {
    name = "${var.resourceName}-public"
  }
  ]
  subnetVpcId    = module.vpc.vpcId
  projectName    = var.projectName
  createdBy      = var.createdBy
  deployedDate   = var.deployedDate
  tfModule       = var.tfModule
  additionalTags = var.additionalTags
}

#---

module "routeTable" {
  source    = "../../aws/vpc/genericRouteTable"
  awsRegion = var.awsRegion
  routeTableObjects = concat([{
    name = "${var.resourceName}-public"

    route = concat([{
      cidr_block = "0.0.0.0/0"
      gateway_id = module.Ig.igId
      },
      {
        cidr_block = module.vpc.vpcCidrBlock
        gateway_id = "local"
    }], var.VFSI_RouteTablePublicRoutes)
  }], var.VFSI_RouteTableObjects)

  routeTableVpcId = module.vpc.vpcId
  projectName     = var.projectName
  createdBy       = var.createdBy
  deployedDate    = var.deployedDate
  tfModule        = var.tfModule
  additionalTags  = var.additionalTags
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
  igVpcId        = module.vpc.vpcId
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
  flowLogVpcId                       = module.vpc.vpcId
  flowLogLogFormat                   = var.VFSI_FlowLogLogFormat
  flowLogMaxAggregationInterval      = var.VFSI_FlowLogMaxAggregationInterval
  flowLogDestinationOptions          = var.VFSI_FlowLogDestinationOptions
  projectName                        = var.projectName
  createdBy                          = var.createdBy
  deployedDate                       = var.deployedDate
  tfModule                           = var.tfModule
  additionalTags                     = var.additionalTags
}