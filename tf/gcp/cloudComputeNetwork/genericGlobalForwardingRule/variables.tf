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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_forwarding_rule#argument-reference
variable "gfrTarget" {
  type = string
}

variable "gfrDescription" {
  type    = string
  default = null
}

variable "gfrIpAddress" {
  type    = string
  default = null
}

variable "gfrIpProtocol" {
  type = string
  validation {
    condition = var.gfrIpProtocol == null || can(contains([
      "TCP",
      "UDP",
      "ESP",
      "AH",
      "SCTP",
      "ICMP L3_DEFAULT"
    ], var.gfrIpProtocol))
    error_message = "Valid inputs for | variable: gfrIpProtocol | are: TCP, UDP, ESP, AH, SCTP, ICMP L3_DEFAULT"
  }
  default = null
}

variable "gfrIpVersion" {
  type = string
  validation {
    condition = var.gfrIpVersion == null || can(contains([
      "IPV4",
      "IPV6"
    ], var.gfrIpVersion))
    error_message = "Valid inputs for | variable: gfrIpVersion | are: IPV4, IPV6"
  }
  default = null
}

variable "gfrLoadBalancingScheme" {
  type = string
  validation {
    condition = contains([
      "EXTERNAL",
      "EXTERNAL_MANAGED",
      "INTERNAL",
      "INTERNAL_MANAGED"
    ], var.gfrLoadBalancingScheme)
    error_message = "Valid inputs for | variable: gfrLoadBalancingScheme | are: EXTERNAL, EXTERNAL_MANAGED, INTERNAL, INTERNAL_MANAGED"
  }
  default = "EXTERNAL"
}

variable "gfrMetadataFilters" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_forwarding_rule#nested_metadata_filters
  type = object({
    filter_match_criteria = string
    filter_labels = object({
      name  = string
      value = string
    })
  })
  default = null
}

variable "gfrNetwork" {
  type    = string
  default = null
}

variable "gfrPortRange" {
  type    = string
  default = null
}

variable "gfrSubnetwork" {
  type    = string
  default = null
}

variable "gfrServiceDirectoryRegistrations" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_forwarding_rule#nested_service_directory_registrations
  type = object({
    namespace                = optional(string, null)
    service_directory_region = optional(string, null)
  })
  default = null
}

variable "gfrSourceIpRanges" {
  type    = list(string)
  default = null
}

variable "gfrNoAutomateDnsZone" {
  type    = bool
  default = null
}