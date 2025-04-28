gcpProjectId = "dev-env-433017"

resourceName = "cool-wow-test"

projectName = "test"

deployedDate = "2025-04-29"

tfModule = "nwea"

NWEA_NetworkRouterObjects = [ 
    {
  name = "wide-open"
}
 ]

NWEA_NetworkRouterNetwork = "waynes-world-network"

NWEA_NatObject = {
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
  nat_ip_allocate_option = "MANUAL_ONLY"
}