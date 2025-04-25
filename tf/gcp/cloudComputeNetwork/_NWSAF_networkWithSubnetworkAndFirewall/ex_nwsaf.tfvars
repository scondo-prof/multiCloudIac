gcpProjectId = "dev-env-433017"

NWSAF_NetworkObjects = [
  {
    name                          = "another-test"
    description                   = "can also be for testing porpoises"
    auto_create_subnetworks = false
  }
]

NWSAF_SubnetworkObjects = [
  {
    name          = "wow"
    description   = "a sick nasty test"
    ip_cidr_range = "10.24.0.0/24"
  },
  {
    name          = "wow2"
    description   = "a sick nasty test"
    ip_cidr_range = "10.24.1.0/24"
  }
]

NWSAF_FirewallObjects = [
  {
    name    = "wow-cool-ingress"
    allow = {
      protocol = "tcp"
    }
    allow = {
      protocol = "icmp"
    }
    description   = "ingress for waynes world"
    direction     = "INGRESS"
    disabled      = false
    source_ranges = ["0.0.0.0/0"]
  },
  {
    name    = "wow-cool-egress"
    allow = {
      protocol = "tcp"
    }
    description   = "egress for waynes world"
    direction     = "EGRESS"
    disabled      = false
    source_ranges = ["0.0.0.0/0"]
  }
]