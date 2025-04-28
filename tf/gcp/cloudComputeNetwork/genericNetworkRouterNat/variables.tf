variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat#argument-reference

variable "natObject" {
  type = object({
    name                               = string
    source_subnetwork_ip_ranges_to_nat = string
    router                             = string
    nat_ip_allocate_option             = optional(string, null)
    initial_nat_ips                    = optional(list(string), null)
    nat_ips                            = optional(list(string), null)
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
  })
}

variable "natTcpTimeWaitTimeoutSec" {
  type    = number
  default = null
}

variable "natLogConfig" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat#nested_log_config
    enable = bool
    filter = string
  })
  default = null
}

variable "natEndpointTypes" {
  type    = list(string)
  default = null
}

variable "natRules" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat#nested_rules
    rule_number = number
    description = optional(string, null)
    match       = string

    action = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat#nested_rules_rules_action
      source_nat_active_ips = optional(list(string), null)
      source_nat_drain_ips  = optional(list(string), null)
    })
  })
  default = null
}

variable "natEnableEndpointIndependentMapping" {
  type    = bool
  default = null
}

variable "natAutoNetworkTier" {
  type = string
  validation {
    condition = var.natAutoNetworkTier == null || can(contains([
      "PREMIUM",
      "STANDARD"
    ], var.natAutoNetworkTier))
    error_message = "Valid inputs for | variable: var.natAutoNetworkTier | are: PREMIUM, STANDARD"
  }
  default = null
}




