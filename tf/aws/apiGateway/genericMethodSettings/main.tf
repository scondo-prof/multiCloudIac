terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = var.awsRegion
}

resource "aws_api_gateway_method_settings" "methodSettings" {
  rest_api_id = var.methodSettingsRestApiId
  stage_name  = var.methodSettingsStageName
  method_path = var.methodSettingsMethodPath

  settings {
    metrics_enabled                            = var.methodSettingsMetricsEnabled
    logging_level                              = var.methodSettingsLoggingLevel
    data_trace_enabled                         = var.methodSettingsDataTraceEnabled
    throttling_burst_limit                     = var.methodSettingsThrottlingBurstLimit
    throttling_rate_limit                      = var.methodSettingsThrottlingRateLimit
    caching_enabled                            = var.methodSettingsCachingEnabled
    cache_ttl_in_seconds                       = var.methodSettingsCacheTtlInSeconds
    cache_data_encrypted                       = var.methodSettingsCacheDataEncrypted
    require_authorization_for_cache_control    = var.methodSettingsRequireAuthorizationForCacheControl
    unauthorized_cache_control_header_strategy = var.methodSettingsUnauthorizedCacheControlHeaderStrategy
  }
}