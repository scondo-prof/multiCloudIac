gcpProjectId = "dev-env-433017"

subnetworkObjects = [
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

subnetworkNetwork = "waynes-world-network"