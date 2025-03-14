variable "projectId" {
  type = string
}

variable "region" {
  type    = string
  default = "us-east1"
}

variable "resourceName" {
  type = string
}

variable "subnetworkIpCidrRange" {
  type    = string
  default = "10.142.0.0/20"
}


variable "subnetworkNetworkId" {
  type = string
}