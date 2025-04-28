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

variable "projectName" {
  type = string
}

variable "deployedDate" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address#argument-reference

variable "NWEA_NetworkAddressObject" {
  type = object({
    address            = optional(string, null)
    address_type       = optional(string, null)
    description        = optional(string, null)
    purpose            = optional(string, null)
    network_tier       = optional(string, null)
    subnetwork         = optional(string, null)
    network            = optional(string, null)
    prefix_length      = optional(number, null)
    ip_version         = optional(string, null)
    ipv6_endpoint_type = optional(string, null)
  })
  default = {}
}

#---

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router#argument-reference

variable "NWEA_NetworkRouterObjects" {
  type = list(object({
    name        = string
    description = optional(string, null)

    bgp = optional(object({
      asn               = string
      advertise_mode    = optional(string, null)
      advertised_groups = optional(list(string), null)
      advertised_ip_ranges = optional(object({
        range       = string
        description = optional(string, null)
      }), null)
      keepalive_interval = optional(number, null)
      identifier_range   = optional(string, null)
    }), null)

    encrypted_interconnect_router = optional(bool, null)
  }))
}

variable "NWEA_NetworkRouterNetwork" {
  type = string
}

#---

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_NWEA_Nat#argument-reference

variable "NWEA_NatObject" {
  type = object({
    source_subnetwork_ip_ranges_to_NWEA_Nat = string
    router                             = string
    NWEA_Nat_ip_allocate_option             = optional(string, null)
    initial_NWEA_Nat_ips                    = optional(list(string), null)
    NWEA_Nat_ips                            = optional(list(string), null)
    drain_NWEA_Nat_ips                      = optional(list(string), null)

    subnetwork = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_NWEA_Nat#nested_subnetwork
      name                     = string
      source_ip_ranges_to_NWEA_Nat  = list(string)
      secondary_ip_range_names = optional(list(string), null)
    }), null)

    min_ports_per_vm                 = optional(number, null)
    max_ports_per_vm                 = optional(number, null)
    enable_dynamic_port_allocation   = optional(bool, null)
    udp_idle_timeout_sec             = optional(number, null)
    icmp_idle_timeout_sec            = optional(number, null)
    tcp_established_idle_timeout_sec = optional(number, null)
    tcp_transitory_idle_timeout_sec  = optional(number, null)
    tcp_time_wait_timeout_sec        = optional(number, null)

    log_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_NWEA_Nat#nested_log_config
      enable = bool
      filter = string
    }), null)

    endpoint_types = optional(list(string), null)

    rules = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_NWEA_Nat#nested_rules
      rule_number = number
      description = optional(string, null)
      match       = string

      action = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_NWEA_Nat#nested_rules_rules_action
        source_NWEA_Nat_active_ips = optional(list(string), null)
        source_NWEA_Nat_drain_ips  = optional(list(string), null)
      })
    }), null)

    enable_endpoint_independent_mapping = optional(bool, null)
    auto_network_tier                   = optional(string, null)
  })
}

#---
