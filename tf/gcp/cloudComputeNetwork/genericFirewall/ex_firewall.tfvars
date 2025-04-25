gcpProjectId = "dev-env-433017"

firewallObjects = [
  {
    name    = "wow-cool-ingress"
    allow = {
      protocol = "tcp"
    }
    allow = {
        protocol = "icmp"
    }
    description        = "ingress for waynes world"
    direction          = "INGRESS"
    disabled           = false
    source_ranges = [ "0.0.0.0/0" ]
  },
  {
    name    = "wow-cool-egress"
    allow = {
      protocol = "tcp"
    }
    description        = "egress for waynes world"
    direction          = "EGRESS"
    disabled           = false
    source_ranges = [ "0.0.0.0/0" ]
  }
]

firewallNetwork = "waynes-world-network"