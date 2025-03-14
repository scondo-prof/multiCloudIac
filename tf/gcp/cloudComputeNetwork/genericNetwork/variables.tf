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

variable "networkAutoCreateSubNetworks" {
  type    = bool
  default = false
}

variable "networkRoutingMode" {
  type = string
  validation {
    condition     = contains(["REGIONAL", "GLOBAL"], var.networkRoutingMode)
    error_message = "Value put for networkRoutingMode is not in values: REGIONAL, GLOBAL."
  }
  default = "REGIONAL"
}

variable "networkMaximumTransmissionUnitBytes" {
  type = number
  validation {
    condition     = var.networkMaximumTransmissionUnitBytes > 1300 && var.networkMaximumTransmissionUnitBytes < 8896
    error_message = "Value set for networkMaximumTransmissionUnitBytes must: greater than 1300 bytes, but less than 8896 bytes."
  }
  default = 1460
}

variable "networkDeleteDefaultRoutesOnCreate" {
  type    = bool
  default = false
}