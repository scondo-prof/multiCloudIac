module "network" {
  source                                = "../genericNetwork"
  gcpProjectId                          = var.gcpProjectId
  gcpRegion                             = var.gcpRegion
  resourceName                          = var.resourceName
  networkDescription                    = var.NWSAF_NetworkDescription
  networkAutoCreateSubNetworks          = var.NWSAF_NetworkAutoCreateSubNetworks
  networkRoutingMode                    = var.NWSAF_NetworkRoutingMode
  networkMaximumTransmissionUnitBytes   = var.NWSAF_NetworkMaximumTransmissionUnitBytes
  networkEnableUlaInternalIpv6          = var.NWSAF_NetworkEnableUlaInternalIpv6
  networkInternalIpv6Range              = var.NWSAF_NetworkInternalIpv6Range
  networkFirewallPolicyEnforcementOrder = var.NWSAF_NetworkFirewallPolicyEnforcementOrder
  networkDeleteDefaultRoutesOnCreate    = var.NWSAF_NetworkDeleteDefaultRoutesOnCreate
}

module "subnetwork" {
  source                                = "../genericSubnetwork"
  gcpProjectId                          = var.gcpProjectId
  gcpRegion                             = var.gcpRegion
  resourceName                          = var.resourceName
  subnetworkNetwork                     = var.NWSAF_SubnetworkNetwork
  subnetworkDescription                 = var.NWSAF_SubnetworkDescription
  subnetworkIpCidrRange                 = var.NWSAF_SubnetworkIpCidrRange
  subnetworkReservedInternalRange       = var.NWSAF_SubnetworkReservedInternalRange
  subnetworkPurpose                     = var.NWSAF_SubnetworkPurpose
  subnetworkRole                        = var.NWSAF_SubnetworkRole
  subnetworkSecondaryIpRange            = var.NWSAF_SubnetworkSecondaryIpRange
  subnetworkPrivateIpGoogleAccess       = var.NWSAF_SubnetworkPrivateIpGoogleAccess
  subnetworkPrivateIpv6GoogleAccess     = var.NWSAF_SubnetworkPrivateIpv6GoogleAccess
  subnetworkLogConfig                   = var.NWSAF_SubnetworkLogConfig
  subnetworkStackType                   = var.NWSAF_SubnetworkStackType
  subnetworkIpv6AccessType              = var.NWSAF_SubnetworkIpv6AccessType
  subnetworkExternalIpv6Prefix          = var.NWSAF_SubnetworkExternalIpv6Prefix
  subnetworkSendSecondaryIpRangeIfEmpty = var.NWSAF_SubnetworkSendSecondaryIpRangeIfEmpty
}

module "ingressFirewall" {
  source                        = "../genericFirewall"
  gcpProjectId                  = var.gcpProjectId
  gcpRegion                     = var.gcpRegion
  resourceName                  = var.resourceName
  firewallNetwork               = var.NWSAF_IngressFirewallNetwork
  firewallRulesAllow            = var.NWSAF_IngressFirewallRulesAllow
  firewallDeny                  = var.NWSAF_IngressFirewallDeny
  firewallDescription           = var.NWSAF_IngressFirewallDescription
  firewallDestinationRanges     = var.NWSAF_IngressFirewallDestinationRanges
  firewallDirection             = var.NWSAF_IngressFirewallDirection
  firewallDisabled              = var.NWSAF_IngressFirewallDisabled
  firewallLogConfig             = var.NWSAF_IngressFirewallLogConfig
  firewallPriority              = var.NWSAF_IngressFirewallPriority
  firewallSourceRanges          = var.NWSAF_IngressFirewallSourceRanges
  firewallSourceServiceAccounts = var.NWSAF_IngressFirewallSourceServiceAccounts
  firewallSourceTags            = var.NWSAF_IngressFirewallSourceTags
  firewallTargetServiceAccounts = var.NWSAF_IngressFirewallTargetServiceAccounts
  firewallTargetTags            = var.NWSAF_IngressFirewallTargetTags
}

#---

module "egressFirewall" {
  source                        = "../genericFirewall"
  gcpProjectId                  = var.gcpProjectId
  gcpRegion                     = var.gcpRegion
  resourceName                  = var.resourceName
  firewallNetwork               = var.NWSAF_EgressFirewallNetwork
  firewallRulesAllow            = var.NWSAF_EgressFirewallRulesAllow
  firewallDeny                  = var.NWSAF_EgressFirewallDeny
  firewallDescription           = var.NWSAF_EgressFirewallDescription
  firewallDestinationRanges     = var.NWSAF_EgressFirewallDestinationRanges
  firewallDirection             = var.NWSAF_EgressFirewallDirection
  firewallDisabled              = var.NWSAF_EgressFirewallDisabled
  firewallLogConfig             = var.NWSAF_EgressFirewallLogConfig
  firewallPriority              = var.NWSAF_EgressFirewallPriority
  firewallSourceRanges          = var.NWSAF_EgressFirewallSourceRanges
  firewallSourceServiceAccounts = var.NWSAF_EgressFirewallSourceServiceAccounts
  firewallSourceTags            = var.NWSAF_EgressFirewallSourceTags
  firewallTargetServiceAccounts = var.NWSAF_EgressFirewallTargetServiceAccounts
  firewallTargetTags            = var.NWSAF_EgressFirewallTargetTags
}