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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_NWEA_Nat#argument-reference

variable "NWEA_NatSourceSubnetworkIpRangesToNat" {
  type = string
  validation {
    condition = contains([
    "ALL_SUBNETWORKS_ALL_IP_RANGES",
    "ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES",
    "LIST_OF_SUBNETWORKS"
], var.NWEA_NatSourceSubnetworkIpRangesToNat)
    error_message = "Valid inputs for | variable: var.NWEA_NatSourceSubnetworkIpRangesToNat | are: ALL_SUBNETWORKS_ALL_IP_RANGES, ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, LIST_OF_SUBNETWORKS"
  }
}

variable "NWEA_NatRouterName" {
  type = string
}

variable "NWEA_NatIpAllocateOption" {
  type = string
  validation {
    condition = var.NWEA_NatIpAllocateOption == null || can(contains([
    "ALL_SUBNETWORKS_ALL_IP_RANGES",
    "ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES",
    "LIST_OF_SUBNETWORKS"
], var.NWEA_NatIpAllocateOption))
    error_message = "Valid inputs for | variable: var.NWEA_NatIpAllocateOption | are: ALL_SUBNETWORKS_ALL_IP_RANGES, ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, LIST_OF_SUBNETWORKS"
  }
  default = null
}

variable "NWEA_NatInitialNatIps" {
  type = list(string)
  default = null
}


variable "NWEA_NatIps" {
  type    = list(string)
  default = null
}

variable "NWEA_NatDrainNatIps" {
  type = list(string)
  default = null
}

variable "NWEA_NatSubnetwork" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_NWEA_Nat#nested_subnetwork
  type = object({
    name = string
    source_ip_ranges_to_NWEA_Nat = list(string)
    secondary_ip_range_names = optional(list(string), null)
  })
  default = null
}

variable "NWEA_NatMinPortsPerVm" {
  type    = number
  default = null
}

variable "NWEA_NatMaxPortsPerVm" {
  type = number
  default = null
}

variable "NWEA_NatEnableDynamicPortAllocation" {
  type = bool
  default = null
}

variable "NWEA_NatUdpIdleTimeoutSec" {
  type = number
  default = null
}

variable "NWEA_NatIcmpIdleTimeoutSec" {
  type = number
  default = null
}

variable "NWEA_NatTcpEstablishedIdleTimeoutSec" {
  type = number
  default = null
}

variable "NWEA_NatTcpTransitoryIdleTimeoutSec" {
  type = number
  default = null
}

variable "NWEA_NatTcpTimeWaitTimeoutSec" {
  type = number
  default = null
}

variable "NWEA_NatLogConfig" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_NWEA_Nat#nested_log_config
    enable = bool
    filter = string
  })
  default = null
}

variable "NWEA_NatEndpointTypes" {
  type = list(string)
  default = null
}

variable "NWEA_NatRules" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_NWEA_Nat#nested_rules
    rule_number = number
    description = optional(string, null)
    match = string

    action = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_NWEA_Nat#nested_rules_rules_action
      source_NWEA_Nat_active_ips = optional(list(string), null)
      source_NWEA_Nat_drain_ips = optional(list(string), null)
    })
  })
  default = null
}

variable "NWEA_NatEnableEndpointIndependentMapping" {
  type = bool
  default = null
}

variable "NWEA_NatAutoNetworkTier" {
  type = string
  validation {
    condition = var.NWEA_NatAutoNetworkTier == null || can(contains([
    "PREMIUM",
    "STANDARD"
], var.NWEA_NatAutoNetworkTier))
    error_message = "Valid inputs for | variable: var.NWEA_NatAutoNetworkTier | are: PREMIUM, STANDARD"
  }
  default = null
}






#---
