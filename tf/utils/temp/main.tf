
    module "nat" {
  source = "../genericNetworkRouterNat"
gcpProjectId = var.gcpProjectId
gcpRegion = var.gcpRegion
resourceName = var.resourceName
natSourceSubnetworkIpRangesToNat = var.NWEA_NatSourceSubnetworkIpRangesToNat
natRouterName = var.NWEA_NatRouterName
natIpAllocateOption = var.NWEA_NatIpAllocateOption
natInitialNatIps = var.NWEA_NatInitialNatIps
natIps = var.NWEA_NatIps
natDrainNatIps = var.NWEA_NatDrainNatIps
natSubnetwork = var.NWEA_NatSubnetwork
natMinPortsPerVm = var.NWEA_NatMinPortsPerVm
natMaxPortsPerVm = var.NWEA_NatMaxPortsPerVm
natEnableDynamicPortAllocation = var.NWEA_NatEnableDynamicPortAllocation
natUdpIdleTimeoutSec = var.NWEA_NatUdpIdleTimeoutSec
natIcmpIdleTimeoutSec = var.NWEA_NatIcmpIdleTimeoutSec
natTcpEstablishedIdleTimeoutSec = var.NWEA_NatTcpEstablishedIdleTimeoutSec
natTcpTransitoryIdleTimeoutSec = var.NWEA_NatTcpTransitoryIdleTimeoutSec
natTcpTimeWaitTimeoutSec = var.NWEA_NatTcpTimeWaitTimeoutSec
natLogConfig = var.NWEA_NatLogConfig
natEndpointTypes = var.NWEA_NatEndpointTypes
natRules = var.NWEA_NatRules
natEnableEndpointIndependentMapping = var.NWEA_NatEnableEndpointIndependentMapping
natAutoNetworkTier = var.NWEA_NatAutoNetworkTier
}

#---
