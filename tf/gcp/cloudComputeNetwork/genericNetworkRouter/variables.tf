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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router#argument-reference

variable "networkRouterObjects" {
  type = list(object({
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

variable "networkRouterNetwork" {
  type = string
}