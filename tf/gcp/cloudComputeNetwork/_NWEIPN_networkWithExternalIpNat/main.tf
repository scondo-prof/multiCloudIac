
module "NWSAF" {
  source                                      = "../_NWSAF_networkWithSubnetworkAndFirewall"
  gcpProjectId                                = var.gcpProjectId
  gcpRegion                                   = var.gcpRegion
  resourceName                                = var.resourceName
  NWSAF_NetworkDescription                    = var.NWEIPN_NWSAF_NetworkDescription
  NWSAF_NetworkAutoCreateSubNetworks          = var.NWEIPN_NWSAF_NetworkAutoCreateSubNetworks
  NWSAF_NetworkRoutingMode                    = var.NWEIPN_NWSAF_NetworkRoutingMode
  NWSAF_NetworkMaximumTransmissionUnitBytes   = var.NWEIPN_NWSAF_NetworkMaximumTransmissionUnitBytes
  NWSAF_NetworkEnableUlaInternalIpv6          = var.NWEIPN_NWSAF_NetworkEnableUlaInternalIpv6
  NWSAF_NetworkInternalIpv6Range              = var.NWEIPN_NWSAF_NetworkInternalIpv6Range
  NWSAF_NetworkFirewallPolicyEnforcementOrder = var.NWEIPN_NWSAF_NetworkFirewallPolicyEnforcementOrder
  NWSAF_NetworkDeleteDefaultRoutesOnCreate    = var.NWEIPN_NWSAF_NetworkDeleteDefaultRoutesOnCreate
  NWSAF_SubnetworkNetwork                     = var.NWEIPN_NWSAF_SubnetworkNetwork
  NWSAF_SubnetworkDescription                 = var.NWEIPN_NWSAF_SubnetworkDescription
  NWSAF_SubnetworkIpCidrRange                 = var.NWEIPN_NWSAF_SubnetworkIpCidrRange
  NWSAF_SubnetworkReservedInternalRange       = var.NWEIPN_NWSAF_SubnetworkReservedInternalRange
  NWSAF_SubnetworkPurpose                     = var.NWEIPN_NWSAF_SubnetworkPurpose
  NWSAF_SubnetworkRole                        = var.NWEIPN_NWSAF_SubnetworkRole
  NWSAF_SubnetworkSecondaryIpRange            = var.NWEIPN_NWSAF_SubnetworkSecondaryIpRange
  NWSAF_SubnetworkPrivateIpGoogleAccess       = var.NWEIPN_NWSAF_SubnetworkPrivateIpGoogleAccess
  NWSAF_SubnetworkPrivateIpv6GoogleAccess     = var.NWEIPN_NWSAF_SubnetworkPrivateIpv6GoogleAccess
  NWSAF_SubnetworkLogConfig                   = var.NWEIPN_NWSAF_SubnetworkLogConfig
  NWSAF_SubnetworkStackType                   = var.NWEIPN_NWSAF_SubnetworkStackType
  NWSAF_SubnetworkIpv6AccessType              = var.NWEIPN_NWSAF_SubnetworkIpv6AccessType
  NWSAF_SubnetworkExternalIpv6Prefix          = var.NWEIPN_NWSAF_SubnetworkExternalIpv6Prefix
  NWSAF_SubnetworkSendSecondaryIpRangeIfEmpty = var.NWEIPN_NWSAF_SubnetworkSendSecondaryIpRangeIfEmpty
  NWSAF_IngressFirewallNetwork                = var.NWEIPN_NWSAF_IngressFirewallNetwork
  NWSAF_IngressFirewallRulesAllow             = var.NWEIPN_NWSAF_IngressFirewallRulesAllow
  NWSAF_IngressFirewallDeny                   = var.NWEIPN_NWSAF_IngressFirewallDeny
  NWSAF_IngressFirewallDescription            = var.NWEIPN_NWSAF_IngressFirewallDescription
  NWSAF_IngressFirewallDestinationRanges      = var.NWEIPN_NWSAF_IngressFirewallDestinationRanges
  NWSAF_IngressFirewallDirection              = var.NWEIPN_NWSAF_IngressFirewallDirection
  NWSAF_IngressFirewallDisabled               = var.NWEIPN_NWSAF_IngressFirewallDisabled
  NWSAF_IngressFirewallLogConfig              = var.NWEIPN_NWSAF_IngressFirewallLogConfig
  NWSAF_IngressFirewallPriority               = var.NWEIPN_NWSAF_IngressFirewallPriority
  NWSAF_IngressFirewallSourceRanges           = var.NWEIPN_NWSAF_IngressFirewallSourceRanges
  NWSAF_IngressFirewallSourceServiceAccounts  = var.NWEIPN_NWSAF_IngressFirewallSourceServiceAccounts
  NWSAF_IngressFirewallSourceTags             = var.NWEIPN_NWSAF_IngressFirewallSourceTags
  NWSAF_IngressFirewallTargetServiceAccounts  = var.NWEIPN_NWSAF_IngressFirewallTargetServiceAccounts
  NWSAF_IngressFirewallTargetTags             = var.NWEIPN_NWSAF_IngressFirewallTargetTags
  NWSAF_EgressFirewallNetwork                 = var.NWEIPN_NWSAF_EgressFirewallNetwork
  NWSAF_EgressFirewallRulesAllow              = var.NWEIPN_NWSAF_EgressFirewallRulesAllow
  NWSAF_EgressFirewallDeny                    = var.NWEIPN_NWSAF_EgressFirewallDeny
  NWSAF_EgressFirewallDescription             = var.NWEIPN_NWSAF_EgressFirewallDescription
  NWSAF_EgressFirewallDestinationRanges       = var.NWEIPN_NWSAF_EgressFirewallDestinationRanges
  NWSAF_EgressFirewallDirection               = var.NWEIPN_NWSAF_EgressFirewallDirection
  NWSAF_EgressFirewallDisabled                = var.NWEIPN_NWSAF_EgressFirewallDisabled
  NWSAF_EgressFirewallLogConfig               = var.NWEIPN_NWSAF_EgressFirewallLogConfig
  NWSAF_EgressFirewallPriority                = var.NWEIPN_NWSAF_EgressFirewallPriority
  NWSAF_EgressFirewallSourceRanges            = var.NWEIPN_NWSAF_EgressFirewallSourceRanges
  NWSAF_EgressFirewallSourceServiceAccounts   = var.NWEIPN_NWSAF_EgressFirewallSourceServiceAccounts
  NWSAF_EgressFirewallSourceTags              = var.NWEIPN_NWSAF_EgressFirewallSourceTags
  NWSAF_EgressFirewallTargetServiceAccounts   = var.NWEIPN_NWSAF_EgressFirewallTargetServiceAccounts
  NWSAF_EgressFirewallTargetTags              = var.NWEIPN_NWSAF_EgressFirewallTargetTags
}

#---

module "NWEA" {
  source                                        = "../_NWEA_natWithExternalAddress"
  gcpProjectId                                  = var.gcpProjectId
  gcpRegion                                     = var.gcpRegion
  resourceName                                  = var.resourceName
  deployedDate                                  = var.deployedDate
  projectName                                   = var.projectName
  createdBy                                     = var.createdBy
  tfModule                                      = var.tfModule
  additionalTags                                = var.additionalTags
  NWEA_NetworkAddressAddress                    = var.NWEIPN_NWEA_NetworkAddressAddress
  NWEA_NetworkAddressType                       = var.NWEIPN_NWEA_NetworkAddressType
  NWEA_NetworkAddressNetworkTier                = var.NWEIPN_NWEA_NetworkAddressNetworkTier
  NWEA_NetworkRouterNetwork                     = var.NWEIPN_NWEA_NetworkRouterNetwork
  NWEA_NetworkRouterDescription                 = var.NWEIPN_NWEA_NetworkRouterDescription
  NWEA_NetworkRouterBgp                         = var.NWEIPN_NWEA_NetworkRouterBgp
  NWEA_NetworkRouterEncryptedInterconnectRouter = var.NWEIPN_NWEA_NetworkRouterEncryptedInterconnectRouter
  NWEA_NatSourceSubnetworkIpRangesToNat         = var.NWEIPN_NWEA_NatSourceSubnetworkIpRangesToNat
  NWEA_NatIpAllocateOption                      = var.NWEIPN_NWEA_NatIpAllocateOption
  NWEA_NatInitialNatIps                         = var.NWEIPN_NWEA_NatInitialNatIps
  NWEA_NatDrainNatIps                           = var.NWEIPN_NWEA_NatDrainNatIps
  NWEA_NatSubnetwork                            = var.NWEIPN_NWEA_NatSubnetwork
  NWEA_NatMinPortsPerVm                         = var.NWEIPN_NWEA_NatMinPortsPerVm
  NWEA_NatMaxPortsPerVm                         = var.NWEIPN_NWEA_NatMaxPortsPerVm
  NWEA_NatEnableDynamicPortAllocation           = var.NWEIPN_NWEA_NatEnableDynamicPortAllocation
  NWEA_NatUdpIdleTimeoutSec                     = var.NWEIPN_NWEA_NatUdpIdleTimeoutSec
  NWEA_NatIcmpIdleTimeoutSec                    = var.NWEIPN_NWEA_NatIcmpIdleTimeoutSec
  NWEA_NatTcpEstablishedIdleTimeoutSec          = var.NWEIPN_NWEA_NatTcpEstablishedIdleTimeoutSec
  NWEA_NatTcpTransitoryIdleTimeoutSec           = var.NWEIPN_NWEA_NatTcpTransitoryIdleTimeoutSec
  NWEA_NatTcpTimeWaitTimeoutSec                 = var.NWEIPN_NWEA_NatTcpTimeWaitTimeoutSec
  NWEA_NatLogConfig                             = var.NWEIPN_NWEA_NatLogConfig
  NWEA_NatEndpointTypes                         = var.NWEIPN_NWEA_NatEndpointTypes
  NWEA_NatRules                                 = var.NWEIPN_NWEA_NatRules
  NWEA_NatEnableEndpointIndependentMapping      = var.NWEIPN_NWEA_NatEnableEndpointIndependentMapping
  NWEA_NatAutoNetworkTier                       = var.NWEIPN_NWEA_NatAutoNetworkTier
}

#---

module "vpcAccessConnector" {
  source                          = "../genericVpcAccessConnector"
  gcpProjectId                    = var.gcpProjectId
  gcpRegion                       = var.gcpRegion
  resourceName                    = var.resourceName
  vpcAccessConnectorNetwork       = var.NWEIPN_VpcAccessConnectorNetwork
  vpcAccessConnectorIpCidrRange   = var.NWEIPN_VpcAccessConnectorIpCidrRange
  vpcAccessConnectorMachineType   = var.NWEIPN_VpcAccessConnectorMachineType
  vpcAccessConnectorMinThroughput = var.NWEIPN_VpcAccessConnectorMinThroughput
  vpcAccessConnectorMinInstances  = var.NWEIPN_VpcAccessConnectorMinInstances
  vpcAccessConnectorMaxInstances  = var.NWEIPN_VpcAccessConnectorMaxInstances
  vpcAccessConnectorMaxThroughput = var.NWEIPN_VpcAccessConnectorMaxThroughput
  vpcAccessConnectorSubnet        = var.NWEIPN_VpcAccessConnectorSubnet
}

#---
