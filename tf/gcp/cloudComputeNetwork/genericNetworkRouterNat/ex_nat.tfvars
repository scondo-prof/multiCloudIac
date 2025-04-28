gcpProjectId = "dev-env-433017"

natObject = {
  name = "test-wow"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES"
  router = "test-router-network-router"
  nat_ip_allocate_option = "AUTO_ONLY"
}