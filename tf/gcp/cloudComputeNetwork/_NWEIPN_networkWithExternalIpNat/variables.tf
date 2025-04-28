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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network#argument-reference

variable "NWEIPN_NWSAF_NetworkObjects" {
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



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork#argument-reference

variable "NWEIPN_NWSAF_SubnetworkObjects" {
  type = list(object({
    name                    = string
    description             = optional(string, null)
    ip_cidr_range           = optional(string, null)
    reserved_internal_range = optional(string, null)
    purpose                 = optional(string, null)
    role                    = optional(string, null)

    secondary_ip_range = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork#nested_secondary_ip_range
      range_name              = string
      ip_cidr_range           = optional(string, null)
      reserved_internal_range = optional(string, null)
    }), null)

    private_ip_google_access   = optional(bool, null)
    private_ipv6_google_access = optional(string, null)

    log_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork#nested_log_config
      aggregation_interval = optional(string, null)
      flow_sampling        = optional(number, null)
      metadata             = optional(string, null)
      metadata_fields      = optional(list(string), null)
      filter_expr          = optional(string, null)
    }), null)

    stack_type                       = optional(string, null)
    ipv6_access_type                 = optional(string, null)
    external_ipv6_prefix             = optional(string, null)
    send_secondary_ip_range_if_empty = optional(bool, null)
  }))
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall#argument-reference

variable "NWEIPN_NWSAF_FirewallObjects" {
  type = list(object({
    name = string

    allow = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall#nested_allow
      protocol = string
      ports    = optional(list(string), null)
    }), null)

    deny = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall#nested_deny
      protocol = string
      ports    = optional(list(string), null)
    }), null)

    description        = optional(string, null)
    destination_ranges = optional(list(string), null)
    direction          = optional(string, null)
    disabled           = optional(bool, null)

    log_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall#nested_log_config
      metadata = string
    }), null)

    priority                = optional(number, null)
    source_ranges           = optional(list(string), null)
    source_service_accounts = optional(list(string), null)
    source_tags             = optional(list(string), null)
    target_service_accounts = optional(list(string), null)
    target_tags             = optional(list(string), null)
  }))
}




#---

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address#argument-reference

variable "NWEIPN_NWEA_NetworkAddressObject" {
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



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router#argument-reference

variable "NWEIPN_NWEA_NetworkRouterObjects" {
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

variable "NWEIPN_NWEA_NetworkRouterNetwork" {
  type = string
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat#argument-reference

variable "NWEIPN_NWEA_NatObject" {
  type = object({
    source_subnetwork_ip_ranges_to_nat = string
    nat_ip_allocate_option             = optional(string, null)
    initial_nat_ips                    = optional(list(string), null)
    drain_nat_ips                      = optional(list(string), null)

    subnetwork = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat#nested_subnetwork
      name                     = string
      source_ip_ranges_to_nat  = list(string)
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

    log_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat#nested_log_config
      enable = bool
      filter = string
    }), null)

    endpoint_types = optional(list(string), null)

    rules = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat#nested_rules
      rule_number = number
      description = optional(string, null)
      match       = string

      action = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat#nested_rules_rules_action
        source_nat_active_ips = optional(list(string), null)
        source_nat_drain_ips  = optional(list(string), null)
      })
    }), null)

    enable_endpoint_independent_mapping = optional(bool, null)
    auto_network_tier                   = optional(string, null)
  })
}

variable "natNatIps" {
  type    = list(string)
  default = []
}



#---

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/vpc_access_connector#argument-reference

variable "NWEIPN_VpcAccessConnectorObject" {
  type = object({
    network        = optional(string, null)
    ip_cidr_range  = optional(string, null)
    machine_type   = optional(string, null)
    min_throughput = optional(number, null)
    min_instances  = optional(number, null)
    max_instances  = optional(number, null)
    max_throughput = optional(number, null)

    subnet = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/vpc_access_connector#nested_subnet
      name       = optional(string, null)
      project_id = optional(string, null)
    }), null)
  })
}

#---