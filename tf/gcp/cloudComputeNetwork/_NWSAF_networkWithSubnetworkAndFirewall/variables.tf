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

variable "NWSAF_NetworkDescription" {
  type    = string
  default = null
}

variable "NWSAF_NetworkAutoCreateSubNetworks" {
  type    = bool
  default = null
}

variable "NWSAF_NetworkRoutingMode" {
  type = string
  validation {
    condition = var.NWSAF_NetworkRoutingMode == null || can(contains([
      "REGIONAL",
      "GLOBAL"
    ], var.NWSAF_NetworkRoutingMode))
    error_message = "Valid inputs for | variable: var.NWSAF_NetworkRoutingMode | are: REGIONAL, GLOBAL"
  }
  default = null
}

variable "NWSAF_NetworkMaximumTransmissionUnitBytes" {
  type = number
  validation {
    condition     = var.NWSAF_NetworkMaximumTransmissionUnitBytes == null || can(var.NWSAF_NetworkMaximumTransmissionUnitBytes >= 1300 && var.NWSAF_NetworkMaximumTransmissionUnitBytes <= 8896)
    error_message = "var.NWSAF_NetworkMaximumTransmissionUnitBytes must be Greater than or Equal to 1300 AND Less Than or Equal to 8896"
  }
  default = null
}

variable "NWSAF_NetworkEnableUlaInternalIpv6" {
  type    = bool
  default = null
}

variable "NWSAF_NetworkInternalIpv6Range" {
  type    = string
  default = null
}

variable "NWSAF_NetworkFirewallPolicyEnforcementOrder" {
  type = string
  validation {
    condition = var.NWSAF_NetworkFirewallPolicyEnforcementOrder == null || can(contains([
      "BEFORE_CLASSIC_FIREWALL",
      "AFTER_CLASSIC_FIREWALL"
    ], var.NWSAF_NetworkFirewallPolicyEnforcementOrder))
    error_message = "Valid inputs for | variable: var.NWSAF_NetworkFirewallPolicyEnforcementOrder | are: BEFORE_CLASSIC_FIREWALL, AFTER_CLASSIC_FIREWALL"
  }
  default = null
}

variable "NWSAF_NetworkDeleteDefaultRoutesOnCreate" {
  type    = bool
  default = false
}

#---

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_NWSAF_Subnetwork#argument-reference

variable "NWSAF_SubnetworkNetwork" {
  type = string
}

variable "NWSAF_SubnetworkDescription" {
  type    = string
  default = null
}

variable "NWSAF_SubnetworkIpCidrRange" {
  type    = string
  default = null
}

variable "NWSAF_SubnetworkReservedInternalRange" {
  type    = string
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
    range_name              = string
    ip_cidr_range           = optional(string, null)
    reserved_internal_range = optional(string, null)
  })
  default = null
}

variable "NWSAF_SubnetworkPrivateIpGoogleAccess" {
  type    = bool
  default = null
}

variable "NWSAF_SubnetworkPrivateIpv6GoogleAccess" {
  type    = string
  default = null
}

variable "NWSAF_SubnetworkLogConfig" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_NWSAF_Subnetwork#nested_log_config
    aggregation_interval = optional(string, null)
    flow_sampling        = optional(number, null)
    metadata             = optional(string, null)
    metadata_fields      = optional(list(string), null)
    filter_expr          = optional(string, null)
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
  type    = string
  default = null
}

variable "NWSAF_SubnetworkSendSecondaryIpRangeIfEmpty" {
  type    = bool
  default = null
}

#---


#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_NWSAF_IngressFirewall#argument-reference

variable "NWSAF_IngressFirewallNetwork" {
  type = string
}

variable "NWSAF_IngressFirewallRulesAllow" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_NWSAF_IngressFirewall#nested_allow
  type = list(object({
    protocol = string
    ports    = optional(list(string), null)
  }))
  default = null
}

variable "NWSAF_IngressFirewallDeny" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_NWSAF_IngressFirewall#nested_deny
  type = list(object({
    protocol = string
    ports    = optional(list(string), null)
  }))
  default = null
}

variable "NWSAF_IngressFirewallDescription" {
  type    = string
  default = null
}

variable "NWSAF_IngressFirewallDestinationRanges" {
  type    = list(string)
  default = null
}

variable "NWSAF_IngressFirewallDirection" {
  type = string
  validation {
    condition = var.NWSAF_IngressFirewallDirection == null || can(contains([
      "INGRESS",
      "EGRESS"
    ], var.NWSAF_IngressFirewallDirection))
    error_message = "Valid inputs for | variable: var.NWSAF_IngressFirewallDirection | are: INGRESS, EGRESS"
  }
  default = null
}

variable "NWSAF_IngressFirewallDisabled" {
  type    = bool
  default = null
}

variable "NWSAF_IngressFirewallLogConfig" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_NWSAF_IngressFirewall#nested_log_config
  type = object({
    metadata = string
  })
  default = null
}

variable "NWSAF_IngressFirewallPriority" {
  type = number
  validation {
    condition     = var.NWSAF_IngressFirewallPriority == null || can(var.NWSAF_IngressFirewallPriority >= 0 && var.NWSAF_IngressFirewallPriority <= 65535)
    error_message = "var.NWSAF_IngressFirewallPriority must be Greater than or Equal to 0 AND Less Than or Equal to 65535"
  }
  default = null
}

variable "NWSAF_IngressFirewallSourceRanges" {
  type    = list(string)
  default = null
}

variable "NWSAF_IngressFirewallSourceServiceAccounts" {
  type    = list(string)
  default = null
}

variable "NWSAF_IngressFirewallSourceTags" {
  type    = list(string)
  default = null
}

variable "NWSAF_IngressFirewallTargetServiceAccounts" {
  type    = list(string)
  default = null
}

variable "NWSAF_IngressFirewallTargetTags" {
  type    = list(string)
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_NWSAF_EgressFirewall#argument-reference

variable "NWSAF_EgressFirewallNetwork" {
  type = string
}

variable "NWSAF_EgressFirewallRulesAllow" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_NWSAF_EgressFirewall#nested_allow
  type = list(object({
    protocol = string
    ports    = optional(list(string), null)
  }))
  default = null
}

variable "NWSAF_EgressFirewallDeny" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_NWSAF_EgressFirewall#nested_deny
  type = list(object({
    protocol = string
    ports    = optional(list(string), null)
  }))
  default = null
}

variable "NWSAF_EgressFirewallDescription" {
  type    = string
  default = null
}

variable "NWSAF_EgressFirewallDestinationRanges" {
  type    = list(string)
  default = null
}

variable "NWSAF_EgressFirewallDirection" {
  type = string
  validation {
    condition = var.NWSAF_EgressFirewallDirection == null || can(contains([
      "INGRESS",
      "EGRESS"
    ], var.NWSAF_EgressFirewallDirection))
    error_message = "Valid inputs for | variable: var.NWSAF_EgressFirewallDirection | are: INGRESS, EGRESS"
  }
  default = null
}

variable "NWSAF_EgressFirewallDisabled" {
  type    = bool
  default = null
}

variable "NWSAF_EgressFirewallLogConfig" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_NWSAF_EgressFirewall#nested_log_config
  type = object({
    metadata = string
  })
  default = null
}

variable "NWSAF_EgressFirewallPriority" {
  type = number
  validation {
    condition     = var.NWSAF_EgressFirewallPriority == null || can(var.NWSAF_EgressFirewallPriority >= 0 && var.NWSAF_EgressFirewallPriority <= 65535)
    error_message = "var.NWSAF_EgressFirewallPriority must be Greater than or Equal to 0 AND Less Than or Equal to 65535"
  }
  default = null
}

variable "NWSAF_EgressFirewallSourceRanges" {
  type    = list(string)
  default = null
}

variable "NWSAF_EgressFirewallSourceServiceAccounts" {
  type    = list(string)
  default = null
}

variable "NWSAF_EgressFirewallSourceTags" {
  type    = list(string)
  default = null
}

variable "NWSAF_EgressFirewallTargetServiceAccounts" {
  type    = list(string)
  default = null
}

variable "NWSAF_EgressFirewallTargetTags" {
  type    = list(string)
  default = null
}

#---