
    module "networkRouter" {
  source = "../genericNetworkRouter"
gcpProjectId = var.gcpProjectId
gcpRegion = var.gcpRegion
resourceName = var.resourceName
networkRouterNetwork = var.NWEA_NetworkRouterNetwork
networkRouterDescription = var.NWEA_NetworkRouterDescription
networkRouterBgp = var.NWEA_NetworkRouterBgp
networkRouterEncryptedInterconnectRouter = var.NWEA_NetworkRouterEncryptedInterconnectRouter
}

#---
