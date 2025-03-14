
    module "ingressFirewall" {
  source = "../genericFirewall"
gcpProjectId = var.gcpProjectId
gcpRegion = var.gcpRegion
resourceName = var.resourceName
firewallNetwork = var.NWSAF_IngressFirewallNetwork
firewallRulesAllow = var.NWSAF_IngressFirewallRulesAllow
firewallDeny = var.NWSAF_IngressFirewallDeny
firewallDescription = var.NWSAF_IngressFirewallDescription
firewallDestinationRanges = var.NWSAF_IngressFirewallDestinationRanges
firewallDirection = var.NWSAF_IngressFirewallDirection
firewallDisabled = var.NWSAF_IngressFirewallDisabled
firewallLogConfig = var.NWSAF_IngressFirewallLogConfig
firewallPriority = var.NWSAF_IngressFirewallPriority
firewallSourceRanges = var.NWSAF_IngressFirewallSourceRanges
firewallSourceServiceAccounts = var.NWSAF_IngressFirewallSourceServiceAccounts
firewallSourceTags = var.NWSAF_IngressFirewallSourceTags
firewallTargetServiceAccounts = var.NWSAF_IngressFirewallTargetServiceAccounts
firewallTargetTags = var.NWSAF_IngressFirewallTargetTags
}

#---

    module "egressFirewall" {
  source = "../genericFirewall"
gcpProjectId = var.gcpProjectId
gcpRegion = var.gcpRegion
resourceName = var.resourceName
firewallNetwork = var.NWSAF_EgressFirewallNetwork
firewallRulesAllow = var.NWSAF_EgressFirewallRulesAllow
firewallDeny = var.NWSAF_EgressFirewallDeny
firewallDescription = var.NWSAF_EgressFirewallDescription
firewallDestinationRanges = var.NWSAF_EgressFirewallDestinationRanges
firewallDirection = var.NWSAF_EgressFirewallDirection
firewallDisabled = var.NWSAF_EgressFirewallDisabled
firewallLogConfig = var.NWSAF_EgressFirewallLogConfig
firewallPriority = var.NWSAF_EgressFirewallPriority
firewallSourceRanges = var.NWSAF_EgressFirewallSourceRanges
firewallSourceServiceAccounts = var.NWSAF_EgressFirewallSourceServiceAccounts
firewallSourceTags = var.NWSAF_EgressFirewallSourceTags
firewallTargetServiceAccounts = var.NWSAF_EgressFirewallTargetServiceAccounts
firewallTargetTags = var.NWSAF_EgressFirewallTargetTags
}

#---
