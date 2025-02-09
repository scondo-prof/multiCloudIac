variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method_settings#argument-reference

variable "methodSettingsRestApiId" {
  type = string
}

variable "methodSettingsStageName" {
  type = string
}

variable "methodSettingsMethodPath" {
  type = string
}

variable "methodSettingsMetricsEnabled" {
  type    = bool
  default = null
}

variable "methodSettingsLoggingLevel" {
  type = string
  validation {
    condition = var.methodSettingsLoggingLevel == null || can(contains([
      "OFF",
      "ERROR",
      "INFO"
    ], var.methodSettingsLoggingLevel))
    error_message = "Valid inputs for | variable: var.methodSettingsLoggingLevel | are: OFF, ERROR, and INFO"
  }
  default = null
}

variable "methodSettingsDataTraceEnabled" {
  type    = bool
  default = null
}

variable "methodSettingsThrottlingBurstLimit" {
  type    = number
  default = null
}

variable "methodSettingsThrottlingRateLimit" {
  type    = number
  default = null
}

variable "methodSettingsCachingEnabled" {
  type    = bool
  default = null
}

variable "methodSettingsCacheTtlInSeconds" {
  type    = number
  default = null
}

variable "methodSettingsCacheDataEncrypted" {
  type    = bool
  default = null
}

variable "methodSettingsRequireAuthorizationForCacheControl" {
  type    = bool
  default = null
}

variable "methodSettingsUnauthorizedCacheControlHeaderStrategy" {
  type = string
  validation {
    condition = var.methodSettingsUnauthorizedCacheControlHeaderStrategy == null || can(contains([
      "FAIL_WITH_403",
      "SUCCEED_WITH_RESPONSE_HEADER",
      "SUCCEED_WITHOUT_RESPONSE_HEADER"
    ], var.methodSettingsUnauthorizedCacheControlHeaderStrategy))
    error_message = "Valid inputs for | variable: var.methodSettingsUnauthorizedCacheControlHeaderStrategy | are: FAIL_WITH_403, SUCCEED_WITH_RESPONSE_HEADER, SUCCEED_WITHOUT_RESPONSE_HEADER"
  }
  default = null
}