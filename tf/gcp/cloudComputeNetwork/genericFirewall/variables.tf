variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall#argument-reference

variable "firewallObjects" {
  type = list(object({
    name    = string
    network = string

    allow = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall#nested_allow
      protocol = string
      ports    = optional(list(string), null)
    }), null)

    deny = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall#nested_deny
      protocol = string
      ports    = optional(list(string), null)
    }), null)

    description        = optional(string, null)
    destination_ranges = optional(list(string), null)
    direction          = optional(string, null)
    disabled           = optional(bool, null)

    log_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall#nested_log_config
      metadata = string
    }), null)

    priority                = optional(number, null)
    source_ranges           = optional(list(string), null)
    source_service_accounts = optional(list(string), null)
    source_tags             = optional(list(string), null)
    target_service_accounts = optional(list(string), null)
    target_tags             = optional(list(string), null)
  }))
}