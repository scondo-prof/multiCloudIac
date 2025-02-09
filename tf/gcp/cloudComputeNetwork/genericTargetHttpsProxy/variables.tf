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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_target_https_proxy#argument-reference
variable "thpUrlMap" {
  type = string
}

variable "thpDescription" {
  type    = string
  default = null
}

variable "thpQuicOverride" {
  type = string
  validation {
    condition = contains([
      "NONE",
      "ENABLE",
      "DISABLE"
    ], var.thpQuicOverride)
    error_message = "Valid inputs for | variable: thpQuicOverride | are: NONE, ENABLE, DISABLE"
  }
  default = "NONE"
}

variable "thpTlsEarlyData" {
  type = string
  validation {
    condition = var.thpTlsEarlyData == null || can(contains([
      "STRICT",
      "PERMISSIVE",
      "DISABLED"
    ], var.thpTlsEarlyData))
    error_message = "Valid inputs for | variable: var.thpTlsEarlyData | are: STRICT, PERMISSIVE, DISABLED"
  }
  default = null
}

variable "thpCertificateManagerCertificates" {
  type    = list(string)
  default = null
}

variable "thpSslCertificates" {
  type    = list(string)
  default = null
}

variable "thpCertificateMap" {
  type    = string
  default = null
}

variable "thpSslPolicy" {
  type    = string
  default = null
}

variable "thpProxyBind" {
  type    = bool
  default = null
}

variable "thpHttpKeepAliveTimeoutSec" {
  type = number
  validation {
    condition     = var.thpHttpKeepAliveTimeoutSec == null || can(var.thpHttpKeepAliveTimeoutSec >= 5 && var.thpHttpKeepAliveTimeoutSec <= 1200)
    error_message = "var.thpHttpKeepAliveTimeoutSec must be Greater than or Equal to 5 AND Less Than or Equal to 1200"
  }
  default = null
}

variable "thpServerTlsPolicy" {
  type    = string
  default = null
}