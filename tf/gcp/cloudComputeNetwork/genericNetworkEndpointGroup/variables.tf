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

variable "negNetwork" {
  type    = string
  default = "default"
}

variable "negDescription" {
  type    = string
  default = null
}

variable "negNetworkEndpointType" {
  type = string
  validation {
    condition = var.negNetworkEndpointType == null || can(contains([
      "GCE_VM_IP",
      "GCE_VM_IP_PORT",
      "NON_GCP_PRIVATE_IP_PORT",
      "INTERNET_IP_PORT",
      "INTERNET_FQDN_PORT",
      "SERVERLESS",
      "PRIVATE_SERVICE_CONNECT"
    ], var.negNetworkEndpointType))
    error_message = "Valid inputs for | variable: negNetworkEndpointType | are: GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_IP_PORT, INTERNET_FQDN_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT"
  }
  default = "GCE_VM_IP_PORT"
}

variable "negSubnetwork" {
  type    = string
  default = null
}

variable "negDefaultPort" {
  type    = number
  default = null
}

variable "negZone" {
  type    = string
  default = null
}