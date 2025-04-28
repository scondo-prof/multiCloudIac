variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network#argument-reference

variable "networkObjects" {
  type = list(object({
    name                                      = string
    description                               = optional(string, null)
    auto_create_subnetworks                   = optional(bool, null)
    routing_mode                              = optional(string, null)
    mtu                                       = optional(number, null)
    enable_ula_internal_ipv6                  = optional(bool, null)
    internal_ipv6_range                       = optional(string, null)
    network_firewall_policy_enforcement_order = optional(string, null)
    delete_default_routes_on_create           = optional(bool, null)
  }))
}