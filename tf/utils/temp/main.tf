
module "VFSI" {
  source                                   = "../_VFSI_vpcFlowlogSubnetIg"
  awsRegion                                = var.awsRegion
  VFSI_VpcCidrBlock                        = var.VEN_VFSI_VpcCidrBlock
  VFSI_VpcInstanceTenancy                  = var.VEN_VFSI_VpcInstanceTenancy
  VFSI_VpcIpv4IpamPoolId                   = var.VEN_VFSI_VpcIpv4IpamPoolId
  VFSI_VpcIpv4NetmaskLength                = var.VEN_VFSI_VpcIpv4NetmaskLength
  VFSI_VpcIpv6CidrBlock                    = var.VEN_VFSI_VpcIpv6CidrBlock
  VFSI_VpcIpv6IpamPoolId                   = var.VEN_VFSI_VpcIpv6IpamPoolId
  VFSI_VpcIpv6NetmaskLength                = var.VEN_VFSI_VpcIpv6NetmaskLength
  VFSI_VpcIpv6CidrBlockNetworkBorderGroup  = var.VEN_VFSI_VpcIpv6CidrBlockNetworkBorderGroup
  VFSI_VpcEnableDnsSupport                 = var.VEN_VFSI_VpcEnableDnsSupport
  VFSI_VpcEnableNetworkAddressUsageMetrics = var.VEN_VFSI_VpcEnableNetworkAddressUsageMetrics
  VFSI_VpcEnableDnsHostnames               = var.VEN_VFSI_VpcEnableDnsHostnames
  VFSI_VpcAssignGeneratedIpv6CidrBlock     = var.VEN_VFSI_VpcAssignGeneratedIpv6CidrBlock
  projectName                              = var.projectName
  createdBy                                = var.createdBy
  deployedDate                             = var.deployedDate
  tfModule                                 = var.tfModule
  resourceName                             = var.resourceName
  additionalTags                           = var.additionalTags
  VFSI_SubnetPublicSubnetObject            = var.VEN_VFSI_SubnetPublicSubnetObject
  VFSI_SubnetPrivateSubnetObject           = var.VEN_VFSI_SubnetPrivateSubnetObject
  VFSI_SubnetObjects                       = var.VEN_VFSI_SubnetObjects
  VFSI_PublicRouteTableRoutes              = var.VEN_VFSI_PublicRouteTableRoutes
  VFSI_PrivateRouteTableRoutes             = var.VEN_VFSI_PrivateRouteTableRoutes
  VFSI_RouteTableObjects                   = var.VEN_VFSI_RouteTableObjects
  VFSI_RouteTableAssociationObjects        = var.VEN_VFSI_RouteTableAssociationObjects
  VFSI_LogGroupFlowLogsNamePrefix          = var.VEN_VFSI_LogGroupFlowLogsNamePrefix
  VFSI_LogGroupFlowLogsSkipDestroy         = var.VEN_VFSI_LogGroupFlowLogsSkipDestroy
  VFSI_LogGroupFlowLogsClass               = var.VEN_VFSI_LogGroupFlowLogsClass
  VFSI_LogGroupFlowLogsRetentionInDays     = var.VEN_VFSI_LogGroupFlowLogsRetentionInDays
  VFSI_LogGroupFlowLogsKmsKeyId            = var.VEN_VFSI_LogGroupFlowLogsKmsKeyId
  VFSI_RWP_IamRoleAssumeRolePolicyVersion  = var.VEN_VFSI_RWP_IamRoleAssumeRolePolicyVersion
  VFSI_RWP_IamRoleAssumeRolePolicy         = var.VEN_VFSI_RWP_IamRoleAssumeRolePolicy
  VFSI_RWP_IamRoleDescription              = var.VEN_VFSI_RWP_IamRoleDescription
  VFSI_RWP_IamRoleForceDetatchPolicies     = var.VEN_VFSI_RWP_IamRoleForceDetatchPolicies
  VFSI_RWP_IamRoleMaxSessionDuration       = var.VEN_VFSI_RWP_IamRoleMaxSessionDuration
  VFSI_RWP_IamRoleNamePrefix               = var.VEN_VFSI_RWP_IamRoleNamePrefix
  VFSI_RWP_IamRolePath                     = var.VEN_VFSI_RWP_IamRolePath
  VFSI_RWP_IamRolePermissionsBoundary      = var.VEN_VFSI_RWP_IamRolePermissionsBoundary
  VFSI_RWP_IamPolicyDescription            = var.VEN_VFSI_RWP_IamPolicyDescription
  VFSI_RWP_IamPolicyNamePrefix             = var.VEN_VFSI_RWP_IamPolicyNamePrefix
  VFSI_RWP_IamPolicyPath                   = var.VEN_VFSI_RWP_IamPolicyPath
  VFSI_RWP_IamPolicyVersion                = var.VEN_VFSI_RWP_IamPolicyVersion
  VFSI_RWP_IamPolicyDocumentStatements     = var.VEN_VFSI_RWP_IamPolicyDocumentStatements
  VFSI_FlowLogTrafficType                  = var.VEN_VFSI_FlowLogTrafficType
  VFSI_FlowLogdeliverCrossAccountRole      = var.VEN_VFSI_FlowLogdeliverCrossAccountRole
  VFSI_FlowLogEniId                        = var.VEN_VFSI_FlowLogEniId
  VFSI_FlowLogSubnetId                     = var.VEN_VFSI_FlowLogSubnetId
  VFSI_FlowLogtransitGatewayId             = var.VEN_VFSI_FlowLogtransitGatewayId
  VFSI_FlowLogTransitGatewayAttatchmentId  = var.VEN_VFSI_FlowLogTransitGatewayAttatchmentId
  VFSI_FlowLogLogFormat                    = var.VEN_VFSI_FlowLogLogFormat
  VFSI_FlowLogMaxAggregationInterval       = var.VEN_VFSI_FlowLogMaxAggregationInterval
  VFSI_FlowLogDestinationOptions           = var.VEN_VFSI_FlowLogDestinationOptions
}

#---

module "eipNat" {
  source                    = "../../aws/ec2/genericEip"
  awsRegion                 = var.awsRegion
  eipAddress                = var.VEN_EipNatAddress
  eipAssociateWithPrivateIp = var.VEN_EipNatAssociateWithPrivateIp
  eipCustomerOwnedIpv4Pool  = var.VEN_EipNatCustomerOwnedIpv4Pool
  eipDomain                 = var.VEN_EipNatDomain
  eipInstance               = var.VEN_EipNatInstance
  eipIpamPoolId             = var.VEN_EipNatIpamPoolId
  eipNetworkBorderGroup     = var.VEN_EipNatNetworkBorderGroup
  eipNetworkInterface       = var.VEN_EipNatNetworkInterface
  eipPublicIpv4Pool         = var.VEN_EipNatPublicIpv4Pool
  projectName               = var.projectName
  createdBy                 = var.createdBy
  deployedDate              = var.deployedDate
  tfModule                  = var.tfModule
  additionalTags            = var.additionalTags
}

#---

module "nat" {
  source                            = "../../aws/vpc/genericNatGateway"
  awsRegion                         = var.awsRegion
  natAllocationId                   = var.VEN_NatAllocationId
  natConnectivityType               = var.VEN_NatConnectivityType
  natPrivateIp                      = var.VEN_NatPrivateIp
  natSubnetId                       = var.VEN_NatSubnetId
  natSecondaryAllocationIds         = var.VEN_NatSecondaryAllocationIds
  natSecondaryPrivateIpAddressCount = var.VEN_NatSecondaryPrivateIpAddressCount
  natSecondaryPrivateIpAddresses    = var.VEN_NatSecondaryPrivateIpAddresses
  projectName                       = var.projectName
  createdBy                         = var.createdBy
  deployedDate                      = var.deployedDate
  tfModule                          = var.tfModule
  additionalTags                    = var.additionalTags
}

#---
