variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_network_endpoint_group#argument-reference
variable "resourceName" {
  type = string
}

variable "rnegDescription" {
  type    = string
  default = null
}

variable "rnegNetworkEndpointType" {
  type = string
  validation {
    condition = contains([
      "SERVERLESS",
      "PRIVATE_SERVICE_CONNECT",
      "INTERNET_IP_PORT",
      "INTERNET_FQDN_PORT",
      "GCE_VM_IP_PORTMAP"
    ], var.rnegNetworkEndpointType)
    error_message = "Valid inputs for | variable: var.rnegNetworkEndpointType | are: SERVERLESS, PRIVATE_SERVICE_CONNECT, INTERNET_IP_PORT, INTERNET_FQDN_PORT, GCE_VM_IP_PORTMAP"
  }
  default = "SERVERLESS"
}

variable "rnegPscTargetService" {
  type    = string
  default = null
}

variable "rnegNetwork" {
  type    = string
  default = null
}

variable "rnegSubnetwork" {
  type    = string
  default = null
}

variable "rnegCloudRun" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_network_endpoint_group#nested_cloud_run
  type = object({
    service  = optional(string, null)
    tag      = optional(string, null)
    url_mask = optional(string, null)
  })
  default = null
}

variable "rnegAppEngine" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_network_endpoint_group#nested_app_engine
  type = object({
    service  = optional(string, null)
    version  = optional(string, null)
    url_mask = optional(string, null)
  })
  default = null
}

variable "rnegCloudFunction" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_network_endpoint_group#nested_cloud_function
  type = object({
    function = optional(string, null)
    url_mask = optional(string, null)
  })
  default = null
}