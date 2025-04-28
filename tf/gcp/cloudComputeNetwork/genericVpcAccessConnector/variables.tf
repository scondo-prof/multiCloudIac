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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/vpc_access_connector#argument-reference

variable "vpcAccessConnectorObject" {
  type = object({
    network        = optional(string, null)
    ip_cidr_range  = optional(string, null)
    machine_type   = optional(string, null)
    min_throughput = optional(number, null)
    min_instances  = optional(number, null)
    max_instances  = optional(number, null)
    max_throughput = optional(number, null)

    subnet = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/vpc_access_connector#nested_subnet
      name       = optional(string, null)
      project_id = optional(string, null)
    }), null)
  })
}