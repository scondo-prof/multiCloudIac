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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_NWSAF_Subnetwork#argument-reference

variable "NWSAF_SubnetworkNetwork" {
  type = string
}

variable "NWSAF_SubnetworkDescription" {
  type = string
  default = null
}

variable "NWSAF_SubnetworkIpCidrRange" {
  type    = string
  default = null
}

variable "NWSAF_SubnetworkReservedInternalRange" {
  type = string
  default = null
}

variable "NWSAF_SubnetworkPurpose" {
  type = string
  validation {
    condition = var.NWSAF_SubnetworkPurpose == null || can(contains([
    "PRIVATE",
    "REGIONAL_MANAGED_PROXY",
    "GLOBAL_MANAGED_PROXY",
    "PRIVATE_SERVICE_CONNECT",
    "PEER_MIGRATION"
], var.NWSAF_SubnetworkPurpose))
    error_message = "Valid inputs for | variable: var.NWSAF_SubnetworkPurpose | are: PRIVATE, REGIONAL_MANAGED_PROXY, GLOBAL_MANAGED_PROXY, PRIVATE_SERVICE_CONNECT, PEER_MIGRATION"
  }
  default = null
}

variable "NWSAF_SubnetworkRole" {
  type = string
  validation {
    condition = var.NWSAF_SubnetworkRole == null || can(contains([
    "ACTIVE",
    "BACKUP"
], var.NWSAF_SubnetworkRole))
    error_message = "Valid inputs for | variable: var.NWSAF_SubnetworkRole | are: ACTIVE, BACKUP"
  }
  default = null
}

variable "NWSAF_SubnetworkSecondaryIpRange" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_NWSAF_Subnetwork#nested_secondary_ip_range
    range_name = string
    ip_cidr_range = optional(string, null)
    reserved_internal_range = optional(string, null)
  })
  default = null
}

variable "NWSAF_SubnetworkPrivateIpGoogleAccess" {
  type = bool
  default = null
}

variable "NWSAF_SubnetworkPrivateIpv6GoogleAccess" {
  type = string
  default = null
}

variable "NWSAF_SubnetworkLogConfig" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_NWSAF_Subnetwork#nested_log_config
    aggregation_interval = optional(string, null)
    flow_sampling = optional(number, null)
    metadata = optional(string, null)
    metadata_fields = optional(list(string), null)
    filter_expr = optional(string, null)
  })
  default = null
}

variable "NWSAF_SubnetworkStackType" {
  type = string
  validation {
    condition = var.NWSAF_SubnetworkStackType == null || can(contains([
    "IPV4_ONLY",
    "IPV4_IPV6",
    "IPV6_ONLY"
], var.NWSAF_SubnetworkStackType))
    error_message = "Valid inputs for | variable: var.NWSAF_SubnetworkStackType | are: IPV4_ONLY, IPV4_IPV6, IPV6_ONLY"
  }
  default = null
}

variable "NWSAF_SubnetworkIpv6AccessType" {
  type = string
  validation {
    condition = var.NWSAF_SubnetworkIpv6AccessType == null || can(contains([
    "EXTERNAL",
    "INTERNAL"
], var.NWSAF_SubnetworkIpv6AccessType))
    error_message = "Valid inputs for | variable: var.NWSAF_SubnetworkIpv6AccessType | are: EXTERNAL, INTERNAL"
  }
  default = null
}

variable "NWSAF_SubnetworkExternalIpv6Prefix" {
  type = string
  default = null
}

variable "NWSAF_SubnetworkSendSecondaryIpRangeIfEmpty" {
  type = bool
  default = null
}

#---
