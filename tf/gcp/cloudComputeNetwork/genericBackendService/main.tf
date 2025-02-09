terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.12.0"
    }
  }
}

provider "google" {
  project = var.gcpProjectId
  region  = var.gcpRegion
}

resource "google_compute_backend_service" "backendService" {
  name                    = "${var.resourceName}-backend-service"
  affinity_cookie_ttl_sec = var.backendServiceAffinityCookieTtlSec

  dynamic "backend" {
    for_each = var.backendServiceBackend != null ? [var.backendServiceBackend] : []
    content {
      balancing_mode               = backend.value["balancing_mode"]
      capacity_scaler              = backend.value["capacity_scaler"]
      description                  = backend.value["description"]
      group                        = backend.value["group"]
      max_connections              = backend.value["max_connections"]
      max_connections_per_instance = backend.value["max_connections_per_instance"]
      max_connections_per_endpoint = backend.value["max_connections_per_endpoint"]
      max_rate                     = backend.value["max_rate"]
      max_rate_per_instance        = backend.value["max_rate_per_instance"]
      max_rate_per_endpoint        = backend.value["max_rate_per_endpoint"]
      max_utilization              = backend.value["max_utilization"]
    }
  }

  dynamic "circuit_breakers" {
    for_each = var.backendServiceCircuitBreakers != null ? [var.backendServiceCircuitBreakers] : []
    content {
      max_requests_per_connection = circuit_breakers.value["max_requests_per_connection"]
      max_connections             = circuit_breakers.value["max_connections"]
      max_pending_requests        = circuit_breakers.value["max_pending_requests"]
      max_requests                = circuit_breakers.value["max_requests"]
      max_retries                 = circuit_breakers.value["max_retries"]
    }
  }

  compression_mode = var.backendServiceCompressionMode

  dynamic "consistent_hash" {
    for_each = var.backendServiceConsistentHash != null ? [var.backendServiceConsistentHash] : []
    content {

      dynamic "http_cookie" {
        for_each = consistent_hash.value["http_cookie"] != null ? [consistent_hash.value["http_cookie"]] : []
        content {

          dynamic "ttl" {
            for_each = http_cookie.value["ttl"] != null ? [http_cookie.value["ttl"]] : []
            content {
              seconds = ttl.value["seconds"]
              nanos   = ttl.value["nanos"]
            }
          }

          name = http_cookie.value["name"]
          path = http_cookie.value["path"]
        }
      }

      http_header_name  = consistent_hash.value["http_header_name"]
      minimum_ring_size = consistent_hash.value["minimum_ring_size"]
    }
  }

  dynamic "cdn_policy" {
    for_each = var.backendServiceCdnPolicy != null ? [var.backendServiceCdnPolicy] : []
    content {

      dynamic "cache_key_policy" {
        for_each = try(cdn_policy["cache_key_policy"], null) != null ? [cdn_policy["cache_key_policy"]] : []
        content {
          include_host           = cache_key_policy.value["include_host"]
          include_protocol       = cache_key_policy.value["include_protocol"]
          include_query_string   = cache_key_policy.value["include_query_string"]
          query_string_blacklist = cache_key_policy.value["query_string_blacklist"]
          query_string_whitelist = cache_key_policy.value["query_string_whitelist"]
          include_http_headers   = cache_key_policy.value["include_http_headers"]
          include_named_cookies  = cache_key_policy.value["include_named_cookies"]
        }
      }

      signed_url_cache_max_age_sec = cdn_policy["signed_url_cache_max_age_sec"]
      default_ttl                  = cdn_policy["default_ttl"]
      max_ttl                      = cdn_policy["max_ttl"]
      client_ttl                   = cdn_policy["client_ttl"]
      negative_caching             = cdn_policy["negative_caching"]

      dynamic "negative_caching_policy" {
        for_each = try(cdn_policy.value["negative_caching_policy"], null) != null ? [cdn_policy.value["negative_caching_policy"]] : []
        content {
          code = negative_caching_policy.value["code"]
          ttl  = negative_caching_policy.value["ttl"]
        }
      }

      cache_mode        = cdn_policy["negative_caching"]
      serve_while_stale = cdn_policy["negative_caching"]

      dynamic "bypass_cache_on_request_headers" {
        for_each = try(cdn_policy["bypass_cache_on_request_headers"], null) != null ? [cdn_policy["bypass_cache_on_request_headers"]] : []
        content {
          header_name = bypass_cache_on_request_headers.value["header_name"]
        }
      }
    }
  }

  connection_draining_timeout_sec = var.backendServiceConnectionDrainingTimeoutSec
  custom_request_headers          = var.backendServiceCustomRequestHeaders
  custom_response_headers         = var.backendServiceCustomResponseHeaders
  description                     = var.backendServiceDescription
  enable_cdn                      = var.backendServiceEnableCdn
  health_checks                   = var.backendServiceHealthChecks

  dynamic "iap" {
    for_each = var.backendServiceIap != null ? [var.backendServiceIap] : []
    content {
      enabled              = iap.value["enabled"]
      oauth2_client_id     = iap.value["oauth2_client_id"]
      oauth2_client_secret = iap.value["oauth2_client_secret"]
    }
  }

  load_balancing_scheme = var.backendServiceLoadBalancingScheme
  locality_lb_policy    = var.backendServicelocalityLbPolicy

  dynamic "locality_lb_policies" {
    for_each = var.backendServiceLocalityLbPolicies != null ? [var.backendServiceLocalityLbPolicies] : []
    content {

      dynamic "policy" {
        for_each = locality_lb_policies.value["policy"] != null ? [locality_lb_policies.value["policy"]] : []
        content {
          name = policy.value["name"]
        }
      }

      dynamic "custom_policy" {
        for_each = locality_lb_policies.value["custom_policy"] != null ? [locality_lb_policies.value["custom_policy"]] : []
        content {
          name = custom_policy.value["name"]
          data = jsonencode(custom_policy.value["data"])
        }
      }
    }
  }

  dynamic "outlier_detection" {
    for_each = var.backendServiceOutlierDetection != null ? [var.backendServiceOutlierDetection] : []
    content {

      dynamic "base_ejection_time" {
        for_each = outlier_detection.value["base_ejection_time"] != null ? [outlier_detection.value["base_ejection_time"]] : []
        content {
          seconds = base_ejection_time.value["seconds"]
          nanos   = base_ejection_time.value["nanos"]
        }
      }

      consecutive_errors                    = outlier_detection.value["consecutive_errors"]
      consecutive_gateway_failure           = outlier_detection.value["consecutive_gateway_failure"]
      enforcing_consecutive_errors          = "${outlier_detection.value["enforcing_consecutive_errors"]}%"
      enforcing_consecutive_gateway_failure = "${outlier_detection.value["enforcing_consecutive_gateway_failure"]}%"
      enforcing_success_rate                = "${outlier_detection.value["enforcing_success_rate"]}%"

      dynamic "interval" {
        for_each = outlier_detection.value["interval"] != null ? [outlier_detection.value["interval"]] : []
        content {
          seconds = interval.value["seconds"]
          nanos   = interval.value["nanos"]
        }
      }

      max_ejection_percent        = "${outlier_detection.value["max_ejection_percent"]}%"
      success_rate_minimum_hosts  = outlier_detection.value["success_rate_minimum_hosts"]
      success_rate_request_volume = outlier_detection.value["success_rate_request_volume"]
      success_rate_stdev_factor   = outlier_detection.value["success_rate_stdev_factor"]
    }
  }

  port_name            = var.backendServicePortName
  protocol             = var.backendServiceProtocol
  security_policy      = var.backendServiceSecurityPolicy
  edge_security_policy = var.backendServiceEdgeSecurityPolicy

  dynamic "security_settings" {
    for_each = var.backendServiceSecuritySettings != null ? [var.backendServiceSecuritySettings] : []
    content {
      client_tls_policy = security_settings.value["client_tls_policy"]
      subject_alt_names = security_settings.value["subject_alt_names"]

      dynamic "aws_v4_authentication" {
        for_each = security_settings.value["aws_v4_authentication"] != null ? [security_settings.value["aws_v4_authentication"]] : []
        content {
          access_key_id      = aws_v4_authentication.value["access_key_id"]
          access_key         = aws_v4_authentication.value["access_key"]
          access_key_version = aws_v4_authentication.value["access_key_version"]
          origin_region      = aws_v4_authentication.value["origin_region"]
        }
      }
    }
  }

  session_affinity = var.backendServiceSessionAffinity

  dynamic "strong_session_affinity_cookie" {
    for_each = var.backendServiceStrongSessionAffinityCookie != null ? [var.backendServiceStrongSessionAffinityCookie] : []
    content {

      dynamic "ttl" {
        for_each = strong_session_affinity_cookie.value["ttl"] != null ? [strong_session_affinity_cookie.value["ttl"]] : []
        content {
          seconds = ttl.value["seconds"]
          nanos   = ttl.value["nanos"]
        }
      }

      name = strong_session_affinity_cookie.value["name"]
      path = strong_session_affinity_cookie.value["path"]
    }
  }

  timeout_sec = var.backendServiceTimeoutSec

  dynamic "log_config" {
    for_each = var.backendServiceLogConfig != null ? [var.backendServiceLogConfig] : []
    content {
      enable      = log_config.value["enable"]
      sample_rate = log_config.value["sample_rate"]
    }
  }

  service_lb_policy = var.backendServiceServiceLbPolicy
  project           = var.gcpProjectId
}