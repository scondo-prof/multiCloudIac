

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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#argument-reference
variable "backendServiceAffinityCookieTtlSec" {
  type    = number
  default = null
}

variable "backendServiceBackend" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_backend
  type = object({
    balancing_mode               = optional(string, null)
    capacity_scaler              = optional(number, null)
    description                  = optional(string, null)
    group                        = string
    max_connections              = optional(number, null)
    max_connections_per_instance = optional(number, null)
    max_connections_per_endpoint = optional(number, null)
    max_rate                     = optional(number, null)
    max_rate_per_instance        = optional(number, null)
    max_rate_per_endpoint        = optional(number, null)
    max_utilization              = optional(number, null)
  })
  default = null
}

variable "backendServiceCircuitBreakers" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_circuit_breakers
  type = object({
    max_requests_per_connection = optional(number, null)
    max_connections             = optional(number, null)
    max_pending_requests        = optional(number, null)
    max_requests                = optional(number, null)
    max_retries                 = optional(number, null)
  })
  default = null
}

variable "backendServiceCompressionMode" {
  type = string
  validation {
    condition = var.backendServiceCompressionMode == null || can(contains([
      "AUTOMATIC",
      "DISABLED"
    ], var.backendServiceCompressionMode))
    error_message = "Valid inputs for | variable: backendServiceCompressionMode | are: AUTOMATIC, DISABLED"
  }
  default = null
}

variable "backendServiceConsistentHash" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_consistent_hash
  type = object({
    http_cookie = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_http_cookie

      ttl = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_ttl
        seconds = number
        nanos   = optional(number, null)
      }), null)

      name = optional(string, null)
      path = optional(string, null)
    }), null)

    http_header_name  = optional(string, null)
    minimum_ring_size = optional(number, null)
  })
  default = null
}

variable "backendServiceCdnPolicy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_cdn_policy
  type = object({

    cache_key_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_cache_key_policy
      include_host           = optional(bool, null)
      include_protocol       = optional(bool, null)
      include_query_string   = optional(bool, null)
      query_string_blacklist = optional(list(string), null)
      query_string_whitelist = optional(list(string), null)
      include_http_headers   = optional(bool, null)
      include_named_cookies  = optional(list(string), null)
    }), null)

    signed_url_cache_max_age_sec = optional(number, null)
    default_ttl                  = optional(number, null)
    max_ttl                      = optional(number, null)
    client_ttl                   = optional(number, null)
    negative_caching             = optional(bool, null)

    negative_caching_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_negative_caching_policy
      code = optional(number, null)
      ttl  = optional(number, null)
    }), null)

    cache_mode        = optional(string, null)
    serve_while_stale = optional(bool, null)

    bypass_cache_on_request_headers = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_bypass_cache_on_request_headers
      header_name = string
    }), null)
  })
  default = null
}

variable "backendServiceConnectionDrainingTimeoutSec" {
  type    = number
  default = null
}

variable "backendServiceCustomRequestHeaders" {
  type    = list(string)
  default = null
}

variable "backendServiceCustomResponseHeaders" {
  type    = list(string)
  default = null
}

variable "backendServiceDescription" {
  type    = string
  default = null
}

variable "backendServiceEnableCdn" {
  type    = bool
  default = null
}

variable "backendServiceHealthChecks" {
  type    = list(string)
  default = null
}

variable "backendServiceIap" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_iap
  type = object({
    enabled              = bool
    oauth2_client_id     = optional(string, null)
    oauth2_client_secret = optional(string, null)
  })
  default = null
}

variable "backendServiceLoadBalancingScheme" {
  type = string
  validation {
    condition = contains([
      "EXTERNAL",
      "INTERNAL_SELF_MANAGED",
      "INTERNAL_MANAGED",
      "EXTERNAL_MANAGED"
    ], var.backendServiceLoadBalancingScheme)
    error_message = "Valid inputs for | variable: backendServiceLoadBalancingScheme | are: EXTERNAL, INTERNAL_SELF_MANAGED, INTERNAL_MANAGED, EXTERNAL_MANAGED"
  }
  default = "EXTERNAL"
}

variable "backendServicelocalityLbPolicy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#locality_lb_policy-1
  type    = string
  default = null
}

variable "backendServiceLocalityLbPolicies" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_locality_lb_policies
  type = object({

    policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#policy-1
      name = string
    }), null)

    custom_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#custom_policy-1
      name = string
      data = optional(string, null)
    }), null)
  })
  default = null
}

variable "backendServiceOutlierDetection" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_outlier_detection
  type = object({

    base_ejection_time = optional(object({
      seconds = number
      nanos   = optional(number, null)
    }), null)

    consecutive_errors                    = optional(number, null)
    consecutive_gateway_failure           = optional(number, null)
    enforcing_consecutive_errors          = optional(number, null)
    enforcing_consecutive_gateway_failure = optional(number, null)
    enforcing_success_rate                = optional(number, null)

    interval = optional(object({
      seconds = number
      nanos   = optional(number, null)
    }), null)

    max_ejection_percent        = optional(number, null)
    success_rate_minimum_hosts  = optional(number, null)
    success_rate_request_volume = optional(number, null)
    success_rate_stdev_factor   = optional(number, null)
  })
  default = null
}

variable "backendServicePortName" {
  type    = string
  default = null
}

variable "backendServiceProtocol" {
  type = string
  validation {
    condition = var.backendServiceProtocol == null || can(contains([
      "HTTP",
      "HTTPS",
      "HTTP2",
      "TCP",
      "SSL",
      "GRPC",
      "UNSPECIFIED"
    ], var.backendServiceProtocol))
    error_message = "Valid inputs for | variable: backendServiceProtocol | are: HTTP, HTTPS, HTTP2, TCP, SSL, GRPC, UNSPECIFIED"
  }
  default = null
}

variable "backendServiceSecurityPolicy" {
  type    = string
  default = null
}

variable "backendServiceEdgeSecurityPolicy" {
  type    = string
  default = null
}

variable "backendServiceSecuritySettings" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_security_settings
  type = object({
    client_tls_policy = optional(string, null)
    subject_alt_names = optional(list(string), null)

    aws_v4_authentication = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_aws_v4_authentication
      access_key_id      = optional(string, null)
      access_key         = optional(string, null)
      access_key_version = optional(string, null)
      origin_region      = optional(string, null)
    }), null)
  })
  default = null
}

variable "backendServiceSessionAffinity" {
  type = string
  validation {
    condition = var.backendServiceSessionAffinity == null || can(contains([
      "NONE",
      "CLIENT_IP",
      "CLIENT_IP_PORT_PROTO",
      "CLIENT_IP_PROTO",
      "GENERATED_COOKIE",
      "HEADER_FIELD",
      "HTTP_COOKIE",
      "STRONG_COOKIE_AFFINITY"
    ], var.backendServiceSessionAffinity))
    error_message = "Valid inputs for | variable: backendServiceSessionAffinity | are: NONE, CLIENT_IP, CLIENT_IP_PORT_PROTO, CLIENT_IP_PROTO, GENERATED_COOKIE, HEADER_FIELD, HTTP_COOKIE, STRONG_COOKIE_AFFINITY"
  }
  default = null
}

variable "backendServiceStrongSessionAffinityCookie" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_strong_session_affinity_cookie
  type = object({

    ttl = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#ttl-3
      seconds = number
      nanos   = optional(number, null)
    }), null)

    name = optional(string, null)
    path = optional(string, null)
  })
  default = null
}

variable "backendServiceTimeoutSec" {
  type = number
  validation {
    condition     = var.backendServiceTimeoutSec == null || can((var.backendServiceTimeoutSec >= 1 && var.backendServiceTimeoutSec <= 2147483647))
    error_message = "Variable backendServiceTimeoutSec must be greater than or equal to 1 or less than or equal to 2,147,483,647"
  }
  default = null
}

variable "backendServiceLogConfig" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_log_config
  type = object({
    enable      = optional(bool, null)
    sample_rate = optional(number, null)
  })
  default = null
}

variable "backendServiceServiceLbPolicy" {
  type    = string
  default = null
}