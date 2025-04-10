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

variable "tfModule" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_forwarding_rule#argument-reference
variable "forwardingRuleIsMirroringCollector" {
  type    = bool
  default = null
}

variable "forwardingRuleDescription" {
  type    = string
  default = null
}

variable "forwardingRuleIpAddress" {
  type    = string
  default = null
}

variable "forwardingRuleIpProtocol" {
  type = string
  validation {
    condition = var.forwardingRuleIpProtocol == null || can(contains([
      "TCP",
      "UDP",
      "ESP",
      "AH",
      "SCTP",
      "ICMP L3_DEFAULT"
    ], var.forwardingRuleIpProtocol))
    error_message = "Valid inputs for | variable: forwardingRuleIpProtocol | are: TCP, UDP, ESP, AH, SCTP, ICMP L3_DEFAULT"
  }
  default = null
}

variable "forwardingRuleBackendService" {
  type    = string
  default = null
}

variable "forwardingRuleLoadBalancingScheme" {
  type = string
  validation {
    condition = contains([
      "EXTERNAL",
      "EXTERNAL_MANAGED",
      "INTERNAL",
      "INTERNAL_MANAGED"
    ], var.forwardingRuleLoadBalancingScheme)
    error_message = "Valid inputs for | variable: forwardingRuleLoadBalancingScheme | are: EXTERNAL, EXTERNAL_MANAGED, INTERNAL, INTERNAL_MANAGED"
  }
  default = "EXTERNAL"
}

variable "forwardingRuleNetwork" {
  type    = string
  default = null
}

variable "forwardingRulePortRange" {
  type    = string
  default = null
}

variable "forwardingRulePorts" {
  type    = list(string)
  default = null
}

variable "forwardingRuleSubnetwork" {
  type    = string
  default = null
}

variable "forwardingRuleTarget" {
  type    = string
  default = null
}

variable "forwardingRuleAllowGlobalAccess" {
  type    = bool
  default = null
}

variable "forwardingRuleAllPorts" {
  type    = bool
  default = null
}

variable "forwardingRuleNetworkTier" {
  type = string
  validation {
    condition = var.forwardingRuleNetworkTier == null || can(contains([
      "PREMIUM",
      "STANDARD"
    ], var.forwardingRuleNetworkTier))
    error_message = "Valid inputs for | variable: forwardingRuleNetworkTier | are: PREMIUM, STANDARD"
  }
  default = null
}

variable "forwardingRuleServiceDirectoryRegistrations" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_forwarding_rule#nested_service_directory_registrations
  type = object({
    namespace = optional(string, null)
    service   = optional(string, null)
  })
  default = null
}

variable "forwardingRuleServiceLabel" {
  type    = string
  default = null
}

variable "forwardingRuleSourceIpRanges" {
  type    = list(string)
  default = null
}

variable "forwardingRuleAllowPscGlobalAccess" {
  type    = bool
  default = null
}

variable "forwardingRuleNoAutomateDnsZone" {
  type    = bool
  default = null
}

variable "forwardingRuleIpVersion" {
  type = string
  validation {
    condition = var.forwardingRuleIpVersion == null || can(contains([
      "IPV4",
      "IPV6"
    ], var.forwardingRuleIpVersion))
    error_message = "Valid inputs for | variable: forwardingRuleIpVersion | are: IPV4, IPV6"
  }
  default = null
}

variable "forwardingRuleRecreateClosedPsc" {
  type    = bool
  default = null
}