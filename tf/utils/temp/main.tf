
    module "network" {
  source = "../genericNetwork"
gcpProjectId = var.gcpProjectId
gcpRegion = var.gcpRegion
resourceName = var.resourceName
networkDescription = var.NWSAF_NetworkDescription
networkAutoCreateSubNetworks = var.NWSAF_NetworkAutoCreateSubNetworks
networkRoutingMode = var.NWSAF_NetworkRoutingMode
networkMaximumTransmissionUnitBytes = var.NWSAF_NetworkMaximumTransmissionUnitBytes
networkEnableUlaInternalIpv6 = var.NWSAF_NetworkEnableUlaInternalIpv6
networkInternalIpv6Range = var.NWSAF_NetworkInternalIpv6Range
networkFirewallPolicyEnforcementOrder = var.NWSAF_NetworkFirewallPolicyEnforcementOrder
networkDeleteDefaultRoutesOnCreate = var.NWSAF_NetworkDeleteDefaultRoutesOnCreate
}

#---
