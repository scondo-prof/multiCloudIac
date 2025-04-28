variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router#argument-reference

variable "networkRouterObjects" {
  type = list(object({
    name        = string
    network     = string
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

  }))
}

variable "networkRouterBgp" {
  type = object({
    asn               = string
    advertise_mode    = optional(string, null)
    advertised_groups = optional(list(string), null)
    advertised_ip_ranges = optional(object({
      range       = string
      description = optional(string, null)
    }), null)
    keepalive_interval = optional(number, null)
    identifier_range   = optional(string, null)
  })
  default = null
}

variable "networkRouterEncryptedInterconnectRouter" {
  type    = bool
  default = null
}