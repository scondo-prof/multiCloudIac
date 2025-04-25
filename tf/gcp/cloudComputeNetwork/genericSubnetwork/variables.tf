variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork#argument-reference

variable "subnetworkObjects" {
  type = list(object({
    name                    = string
    network                 = string
    description             = optional(string, null)
    ip_cidr_range           = optional(string, null)
    reserved_internal_range = optional(string, null)
    purpose                 = optional(string, null)
    role                    = optinal(string, null)
  }))
}

variable "subnetworkSecondaryIpRange" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork#nested_secondary_ip_range
    range_name              = string
    ip_cidr_range           = optional(string, null)
    reserved_internal_range = optional(string, null)
  })
  default = null
}

variable "subnetworkPrivateIpGoogleAccess" {
  type    = bool
  default = null
}

variable "subnetworkPrivateIpv6GoogleAccess" {
  type    = string
  default = null
}

variable "subnetworkLogConfig" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork#nested_log_config
    aggregation_interval = optional(string, null)
    flow_sampling        = optional(number, null)
    metadata             = optional(string, null)
    metadata_fields      = optional(list(string), null)
    filter_expr          = optional(string, null)
  })
  default = null
}

variable "subnetworkStackType" {
  type = string
  validation {
    condition = var.subnetworkStackType == null || can(contains([
      "IPV4_ONLY",
      "IPV4_IPV6",
      "IPV6_ONLY"
    ], var.subnetworkStackType))
    error_message = "Valid inputs for | variable: var.subnetworkStackType | are: IPV4_ONLY, IPV4_IPV6, IPV6_ONLY"
  }
  default = null
}

variable "subnetworkIpv6AccessType" {
  type = string
  validation {
    condition = var.subnetworkIpv6AccessType == null || can(contains([
      "EXTERNAL",
      "INTERNAL"
    ], var.subnetworkIpv6AccessType))
    error_message = "Valid inputs for | variable: var.subnetworkIpv6AccessType | are: EXTERNAL, INTERNAL"
  }
  default = null
}

variable "subnetworkExternalIpv6Prefix" {
  type    = string
  default = null
}

variable "subnetworkSendSecondaryIpRangeIfEmpty" {
  type    = bool
  default = null
}