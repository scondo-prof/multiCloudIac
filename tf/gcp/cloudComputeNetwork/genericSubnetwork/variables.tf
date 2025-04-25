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

variable "subnetworkNetwork" {
  type = string
}