
module "networkAddress" {
  source               = "../genericNetworkAddress"
  gcpProjectId         = var.gcpProjectId
  gcpRegion            = var.gcpRegion
  resourceName         = var.resourceName
  networkAddressObject = var.NWEA_NetworkAddressObject
  projectName          = var.projectName
  deployedDate         = var.deployedDate
  createdBy            = var.createdBy
  tfModule             = var.tfModule
  additionalTags       = var.additionalTags
}

#---

module "networkRouter" {
  source               = "../genericNetworkRouter"
  gcpProjectId         = var.gcpProjectId
  gcpRegion            = var.gcpRegion
  networkRouterObjects = var.NWEA_NetworkRouterObjects
  resourceName         = var.resourceName
  networkRouterNetwork = var.NWEA_NetworkRouterNetwork
}

#---

module "nat" {
  source       = "../genericNetworkRouterNat"
  gcpProjectId = var.gcpProjectId
  gcpRegion    = var.gcpRegion
  resourceName = var.resourceName
  natObject    = var.NWEA_NatObject
}

#---

# module "nat" {
#   source                              = "../genericNetworkRouterNat"
#   gcpProjectId                        = var.gcpProjectId
#   gcpRegion                           = var.gcpRegion
#   resourceName                        = var.resourceName
#   natSourceSubnetworkIpRangesToNat    = var.NWEA_NatSourceSubnetworkIpRangesToNat
#   natRouterName                       = module.networkRouter.networkRouterName
#   natIpAllocateOption                 = var.NWEA_NatIpAllocateOption
#   natInitialNatIps                    = var.NWEA_NatInitialNatIps
#   natIps                              = [module.networkAddress.networkAddressSelfLink]
#   natDrainNatIps                      = var.NWEA_NatDrainNatIps
#   natSubnetwork                       = var.NWEA_NatSubnetwork
#   natMinPortsPerVm                    = var.NWEA_NatMinPortsPerVm
#   natMaxPortsPerVm                    = var.NWEA_NatMaxPortsPerVm
#   natEnableDynamicPortAllocation      = var.NWEA_NatEnableDynamicPortAllocation
#   natUdpIdleTimeoutSec                = var.NWEA_NatUdpIdleTimeoutSec
#   natIcmpIdleTimeoutSec               = var.NWEA_NatIcmpIdleTimeoutSec
#   natTcpEstablishedIdleTimeoutSec     = var.NWEA_NatTcpEstablishedIdleTimeoutSec
#   natTcpTransitoryIdleTimeoutSec      = var.NWEA_NatTcpTransitoryIdleTimeoutSec
#   natTcpTimeWaitTimeoutSec            = var.NWEA_NatTcpTimeWaitTimeoutSec
#   natLogConfig                        = var.NWEA_NatLogConfig
#   natEndpointTypes                    = var.NWEA_NatEndpointTypes
#   natRules                            = var.NWEA_NatRules
#   natEnableEndpointIndependentMapping = var.NWEA_NatEnableEndpointIndependentMapping
#   natAutoNetworkTier                  = var.NWEA_NatAutoNetworkTier
# }