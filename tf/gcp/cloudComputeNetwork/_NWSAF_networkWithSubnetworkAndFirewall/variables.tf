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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_NWSAF_Network#argument-reference

variable "NWSAF_NetworkObjects" {
  type = list(object({
    name                                            = string
    description                                     = optional(string, null)
    auto_create_subNWSAF_Networks                   = optional(bool, null)
    routing_mode                                    = optional(string, null)
    mtu                                             = optional(number, null)
    enable_ula_internal_ipv6                        = optional(bool, null)
    internal_ipv6_range                             = optional(string, null)
    NWSAF_Network_firewall_policy_enforcement_order = optional(string, null)
    delete_default_routes_on_create                 = optional(bool, null)
  }))
}

#---

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork#argument-reference

variable "subnetworkObjects" {
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

#---

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_NWSAF_Firewall#argument-reference

variable "NWSAF_FirewallObjects" {
  type = list(object({
    name = string

    allow = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_NWSAF_Firewall#nested_allow
      protocol = string
      ports    = optional(list(string), null)
    }), null)

    deny = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_NWSAF_Firewall#nested_deny
      protocol = string
      ports    = optional(list(string), null)
    }), null)

    description        = optional(string, null)
    destination_ranges = optional(list(string), null)
    direction          = optional(string, null)
    disabled           = optional(bool, null)

    log_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_NWSAF_Firewall#nested_log_config
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
