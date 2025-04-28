
    module "NWSAF" {
  source = "../_NWSAF_networkWithSubnetworkAndFirewall"
gcpProjectId = var.gcpProjectId
gcpRegion = var.gcpRegion
NWSAF_NetworkObjects = var.NWEIPN_NWSAF_NetworkObjects
resourceName = var.resourceName
NWSAF_SubnetworkObjects = var.NWEIPN_NWSAF_SubnetworkObjects
NWSAF_FirewallObjects = var.NWEIPN_NWSAF_FirewallObjects
}

#---

    module "NWEA" {
  source = "../_NWEA_natWithExternalAddress"
gcpProjectId = var.gcpProjectId
gcpRegion = var.gcpRegion
resourceName = var.resourceName
NWEA_NetworkAddressObject = var.NWEIPN_NWEA_NetworkAddressObject
projectName = var.projectName
deployedDate = var.deployedDate
createdBy = var.createdBy
tfModule = var.tfModule
additionalTags = var.additionalTags
NWEA_NetworkRouterObjects = var.NWEIPN_NWEA_NetworkRouterObjects
NWEA_NetworkRouterNetwork = var.NWEIPN_NWEA_NetworkRouterNetwork
natNatIps = var.natNatIps
NWEA_NatObject = var.NWEIPN_NWEA_NatObject
}

#---

    module "vpcAccessConnector" {
  source = "../genericVpcAccessConnector"
gcpProjectId = var.gcpProjectId
gcpRegion = var.gcpRegion
resourceName = var.resourceName
vpcAccessConnectorObject = var.NWEIPN_VpcAccessConnectorObject
}

#---
