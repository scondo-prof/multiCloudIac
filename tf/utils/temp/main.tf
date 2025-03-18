
    module "subnetwork" {
  source = "../genericSubnetwork"
gcpProjectId = var.gcpProjectId
gcpRegion = var.gcpRegion
resourceName = var.resourceName
subnetworkNetwork = var.NWSAF_SubnetworkNetwork
subnetworkDescription = var.NWSAF_SubnetworkDescription
subnetworkIpCidrRange = var.NWSAF_SubnetworkIpCidrRange
subnetworkReservedInternalRange = var.NWSAF_SubnetworkReservedInternalRange
subnetworkPurpose = var.NWSAF_SubnetworkPurpose
subnetworkRole = var.NWSAF_SubnetworkRole
subnetworkSecondaryIpRange = var.NWSAF_SubnetworkSecondaryIpRange
subnetworkPrivateIpGoogleAccess = var.NWSAF_SubnetworkPrivateIpGoogleAccess
subnetworkPrivateIpv6GoogleAccess = var.NWSAF_SubnetworkPrivateIpv6GoogleAccess
subnetworkLogConfig = var.NWSAF_SubnetworkLogConfig
subnetworkStackType = var.NWSAF_SubnetworkStackType
subnetworkIpv6AccessType = var.NWSAF_SubnetworkIpv6AccessType
subnetworkExternalIpv6Prefix = var.NWSAF_SubnetworkExternalIpv6Prefix
subnetworkSendSecondaryIpRangeIfEmpty = var.NWSAF_SubnetworkSendSecondaryIpRangeIfEmpty
}

#---
