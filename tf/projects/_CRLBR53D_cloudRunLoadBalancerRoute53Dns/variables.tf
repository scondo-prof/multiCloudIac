#https://search.google.com/search-console

variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

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

variable "projectName" {
  type = string
}

variable "deployedDate" {
  type    = string
  default = null
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_address#argument-reference
variable "CRLBR53D_GlobalAddressAddress" {
  type    = string
  default = null
}

variable "CRLBR53D_GlobalAddressDescription" {
  type    = string
  default = null
}

variable "CRLBR53D_GlobalAddressIpVersion" {
  type = string
  validation {
    condition = var.CRLBR53D_GlobalAddressIpVersion == null || can(contains([
      "IPV4",
      "IPV6"
    ], var.CRLBR53D_GlobalAddressIpVersion))
    error_message = "Valid inputs for | variable: var.CRLBR53D_GlobalAddressIpVersion | are: IPV4, IPV6"
  }
  default = null
}

variable "CRLBR53D_GlobalAddressPrefixLength" {
  type    = number
  default = null
}

variable "CRLBR53D_GlobalAddressType" {
  type = string
  validation {
    condition = contains([
      "EXTERNAL",
      "INTERNAL"
    ], var.CRLBR53D_GlobalAddressType)
    error_message = "Valid inputs for | variable: var.CRLBR53D_GlobalAddressType | are: EXTERNAL, INTERNAL"
  }
  default = "EXTERNAL"
}

variable "CRLBR53D_GlobalAddressPurpose" {
  type = string
  validation {
    condition = var.CRLBR53D_GlobalAddressPurpose == null || can(contains([
      "VPC_PEERING",
      "PRIVATE_SERVICE_CONNECT"
    ], var.CRLBR53D_GlobalAddressPurpose))
    error_message = "Valid inputs for | variable: var.CRLBR53D_GlobalAddressPurpose | are: VPC_PEERING , PRIVATE_SERVICE_CONNECT "
  }
  default = null
}

variable "CRLBR53D_GlobalAddressNetwork" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_CRLBR53D_Route53DnsARecord#argument-reference
variable "CRLBR53D_Route53DnsARecordZoneId" {
  type = string
}

variable "CRLBR53D_Route53DnsARecordName" {
  type = string
}

variable "CRLBR53D_Route53DnsARecordType" {
  type = string
  validation {
    condition = contains([
      "A",
      "AAAA",
      "CAA",
      "CNAME",
      "DS",
      "MX",
      "NAPTR",
      "NS",
      "PTR",
      "SOA",
      "SPF",
      "SRV",
      "TXT"
    ], var.CRLBR53D_Route53DnsARecordType)
    error_message = "Valid inputs for | variable: CRLBR53D_Route53DnsARecordType | are: A, AAAA, CAA, CNAME, DS, MX, NAPTR, NS, PTR, SOA, SPF, SRV TXT"
  }
}

variable "CRLBR53D_Route53DnsARecordTtl" {
  type    = number
  default = null
}

variable "CRLBR53D_Route53DnsARecordRecords" {
  type    = list(string)
  default = null
}

variable "CRLBR53D_Route53DnsARecordSetIdentifier" {
  type    = string
  default = null
}

variable "CRLBR53D_Route53DnsARecordHealthCheckId" {
  type    = string
  default = null
}

variable "CRLBR53D_Route53DnsARecordAlias" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_CRLBR53D_Route53DnsARecord#alias
  type = object({
    name                   = string
    zone_id                = string
    evaluate_target_health = bool
  })
  default = null
}

variable "CRLBR53D_Route53DnsARecordCidrRoutingPolicy" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_CRLBR53D_Route53DnsARecord#cidr-routing-policy
  type = object({
    collection_id = string
    location_name = string
  })
  default = null
}

variable "CRLBR53D_Route53DnsARecordFailoverRoutingPolicy" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_CRLBR53D_Route53DnsARecord#failover-routing-policy
  type = object({
    type = string
  })
  default = null
}

variable "CRLBR53D_Route53DnsARecordGeolocationRoutingPolicy" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_CRLBR53D_Route53DnsARecord#geolocation-routing-policy
  type = object({
    continent   = optional(string, null)
    country     = optional(string, null)
    subdivision = optional(string, null)
  })
  default = null
}

variable "CRLBR53D_Route53DnsARecordGeoproximityRoutingPolicy" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_CRLBR53D_Route53DnsARecord#geoproximityrouting-policy
  type = object({
    aws_region = optional(string, null)
    bias       = optional(number, null)

    coordinates = optional(object({
      latitude  = number
      longitude = number
    }), null)

    local_zone_group = optional(string, null)
  })
  default = null
}

variable "CRLBR53D_Route53DnsARecordLatencyRoutingPolicy" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_CRLBR53D_Route53DnsARecord#latency-routing-policy
  type = object({
    region = string
  })
  default = null
}

variable "CRLBR53D_Route53DnsARecordMultivalueAnswerRoutingPolicy" {
  type    = bool
  default = null
}

variable "CRLBR53D_Route53DnsARecordWeightedRoutingPolicy" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_CRLBR53D_Route53DnsARecord#weighted-routing-policy-1
  type = object({
    weight = number
  })
  default = null
}

variable "CRLBR53D_Route53DnsARecordAllowOverwrite" {
  type    = bool
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_CRLBR53D_Route53DnsTxtRecord#argument-reference
variable "CRLBR53D_Route53DnsTxtRecordZoneId" {
  type = string
}

variable "CRLBR53D_Route53DnsTxtRecordName" {
  type = string
}

variable "CRLBR53D_Route53DnsTxtRecordType" {
  type = string
  validation {
    condition = contains([
      "A",
      "AAAA",
      "CAA",
      "CNAME",
      "DS",
      "MX",
      "NAPTR",
      "NS",
      "PTR",
      "SOA",
      "SPF",
      "SRV",
      "TXT"
    ], var.CRLBR53D_Route53DnsTxtRecordType)
    error_message = "Valid inputs for | variable: CRLBR53D_Route53DnsTxtRecordType | are: A, AAAA, CAA, CNAME, DS, MX, NAPTR, NS, PTR, SOA, SPF, SRV TXT"
  }
}

variable "CRLBR53D_Route53DnsTxtRecordTtl" {
  type    = number
  default = null
}

variable "CRLBR53D_Route53DnsTxtRecordRecords" {
  type    = list(string)
  default = null
}

variable "CRLBR53D_Route53DnsTxtRecordSetIdentifier" {
  type    = string
  default = null
}

variable "CRLBR53D_Route53DnsTxtRecordHealthCheckId" {
  type    = string
  default = null
}

variable "CRLBR53D_Route53DnsTxtRecordAlias" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_CRLBR53D_Route53DnsTxtRecord#alias
  type = object({
    name                   = string
    zone_id                = string
    evaluate_target_health = bool
  })
  default = null
}

variable "CRLBR53D_Route53DnsTxtRecordCidrRoutingPolicy" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_CRLBR53D_Route53DnsTxtRecord#cidr-routing-policy
  type = object({
    collection_id = string
    location_name = string
  })
  default = null
}

variable "CRLBR53D_Route53DnsTxtRecordFailoverRoutingPolicy" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_CRLBR53D_Route53DnsTxtRecord#failover-routing-policy
  type = object({
    type = string
  })
  default = null
}

variable "CRLBR53D_Route53DnsTxtRecordGeolocationRoutingPolicy" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_CRLBR53D_Route53DnsTxtRecord#geolocation-routing-policy
  type = object({
    continent   = optional(string, null)
    country     = optional(string, null)
    subdivision = optional(string, null)
  })
  default = null
}

variable "CRLBR53D_Route53DnsTxtRecordGeoproximityRoutingPolicy" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_CRLBR53D_Route53DnsTxtRecord#geoproximityrouting-policy
  type = object({
    aws_region = optional(string, null)
    bias       = optional(number, null)

    coordinates = optional(object({
      latitude  = number
      longitude = number
    }), null)

    local_zone_group = optional(string, null)
  })
  default = null
}

variable "CRLBR53D_Route53DnsTxtRecordLatencyRoutingPolicy" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_CRLBR53D_Route53DnsTxtRecord#latency-routing-policy
  type = object({
    region = string
  })
  default = null
}

variable "CRLBR53D_Route53DnsTxtRecordMultivalueAnswerRoutingPolicy" {
  type    = bool
  default = null
}

variable "CRLBR53D_Route53DnsTxtRecordWeightedRoutingPolicy" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_CRLBR53D_Route53DnsTxtRecord#weighted-routing-policy-1
  type = object({
    weight = number
  })
  default = null
}

variable "CRLBR53D_Route53DnsTxtRecordAllowOverwrite" {
  type    = bool
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_managed_ssl_certificate#argument-reference
variable "CRLBR53D_MscDescription" {
  type    = string
  default = null
}

variable "CRLBR53D_MscManaged" {
  type = object({
    domains = list(string)
  })
  default = null
}

variable "CRLBR53D_MscType" {
  type = string
  validation {
    condition = var.CRLBR53D_MscType == null || can(contains([
      "MANAGED"
    ], var.CRLBR53D_MscType))
    error_message = "Valid inputs for | variable: var.CRLBR53D_MscType | are: MANAGED"
  }
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_address#argument-reference
variable "CRLBR53D_GlobalAddressAddress" {
  type    = string
  default = null
}

variable "CRLBR53D_GlobalAddressDescription" {
  type    = string
  default = null
}

variable "CRLBR53D_GlobalAddressIpVersion" {
  type = string
  validation {
    condition = var.CRLBR53D_GlobalAddressIpVersion == null || can(contains([
      "IPV4",
      "IPV6"
    ], var.CRLBR53D_GlobalAddressIpVersion))
    error_message = "Valid inputs for | variable: var.CRLBR53D_GlobalAddressIpVersion | are: IPV4, IPV6"
  }
  default = null
}

variable "CRLBR53D_GlobalAddressPrefixLength" {
  type    = number
  default = null
}

variable "CRLBR53D_GlobalAddressType" {
  type = string
  validation {
    condition = contains([
      "EXTERNAL",
      "INTERNAL"
    ], var.CRLBR53D_GlobalAddressType)
    error_message = "Valid inputs for | variable: var.CRLBR53D_GlobalAddressType | are: EXTERNAL, INTERNAL"
  }
  default = "EXTERNAL"
}

variable "CRLBR53D_GlobalAddressPurpose" {
  type = string
  validation {
    condition = var.CRLBR53D_GlobalAddressPurpose == null || can(contains([
      "VPC_PEERING",
      "PRIVATE_SERVICE_CONNECT"
    ], var.CRLBR53D_GlobalAddressPurpose))
    error_message = "Valid inputs for | variable: var.CRLBR53D_GlobalAddressPurpose | are: VPC_PEERING , PRIVATE_SERVICE_CONNECT "
  }
  default = null
}

variable "CRLBR53D_GlobalAddressNetwork" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_network_endpoint_group#argument-reference

variable "CRLBR53D_RnegDescription" {
  type    = string
  default = null
}

variable "CRLBR53D_RnegNetworkEndpointType" {
  type = string
  validation {
    condition = contains([
      "SERVERLESS",
      "PRIVATE_SERVICE_CONNECT",
      "INTERNET_IP_PORT",
      "INTERNET_FQDN_PORT",
      "GCE_VM_IP_PORTMAP"
    ], var.CRLBR53D_RnegNetworkEndpointType)
    error_message = "Valid inputs for | variable: var.CRLBR53D_RnegNetworkEndpointType | are: SERVERLESS, PRIVATE_SERVICE_CONNECT, INTERNET_IP_PORT, INTERNET_FQDN_PORT, GCE_VM_IP_PORTMAP"
  }
  default = "SERVERLESS"
}

variable "CRLBR53D_RnegPscTargetService" {
  type    = string
  default = null
}

variable "CRLBR53D_RnegNetwork" {
  type    = string
  default = null
}

variable "CRLBR53D_RnegSubnetwork" {
  type    = string
  default = null
}

variable "CRLBR53D_RnegCloudRun" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_network_endpoint_group#nested_cloud_run
  type = object({
    service  = optional(string, null)
    tag      = optional(string, null)
    url_mask = optional(string, null)
  })
  default = null
}

variable "CRLBR53D_RnegAppEngine" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_network_endpoint_group#nested_app_engine
  type = object({
    service  = optional(string, null)
    version  = optional(string, null)
    url_mask = optional(string, null)
  })
  default = null
}

variable "CRLBR53D_RnegCloudFunction" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_network_endpoint_group#nested_cloud_function
  type = object({
    function = optional(string, null)
    url_mask = optional(string, null)
  })
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#argument-reference
variable "CRLBR53D_BackendServiceAffinityCookieTtlSec" {
  type    = number
  default = null
}

variable "CRLBR53D_BackendServiceBackend" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_backend
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

variable "CRLBR53D_BackendServiceCircuitBreakers" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_circuit_breakers
  type = object({
    max_requests_per_connection = optional(number, null)
    max_connections             = optional(number, null)
    max_pending_requests        = optional(number, null)
    max_requests                = optional(number, null)
    max_retries                 = optional(number, null)
  })
  default = null
}

variable "CRLBR53D_BackendServiceCompressionMode" {
  type = string
  validation {
    condition = var.CRLBR53D_BackendServiceCompressionMode == null || can(contains([
      "AUTOMATIC",
      "DISABLED"
    ], var.CRLBR53D_BackendServiceCompressionMode))
    error_message = "Valid inputs for | variable: CRLBR53D_BackendServiceCompressionMode | are: AUTOMATIC, DISABLED"
  }
  default = null
}

variable "CRLBR53D_BackendServiceConsistentHash" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_consistent_hash
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

variable "CRLBR53D_BackendServiceCdnPolicy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_cdn_policy
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

variable "CRLBR53D_BackendServiceConnectionDrainingTimeoutSec" {
  type    = number
  default = null
}

variable "CRLBR53D_BackendServiceCustomRequestHeaders" {
  type    = list(string)
  default = null
}

variable "CRLBR53D_BackendServiceCustomResponseHeaders" {
  type    = list(string)
  default = null
}

variable "CRLBR53D_BackendServiceDescription" {
  type    = string
  default = null
}

variable "CRLBR53D_BackendServiceEnableCdn" {
  type    = bool
  default = null
}

variable "CRLBR53D_BackendServiceHealthChecks" {
  type    = list(string)
  default = null
}

variable "CRLBR53D_BackendServiceIap" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_iap
  type = object({
    enabled              = bool
    oauth2_client_id     = optional(string, null)
    oauth2_client_secret = optional(string, null)
  })
  default = null
}

variable "CRLBR53D_BackendServiceLoadBalancingScheme" {
  type = string
  validation {
    condition = contains([
      "EXTERNAL",
      "INTERNAL_SELF_MANAGED",
      "INTERNAL_MANAGED",
      "EXTERNAL_MANAGED"
    ], var.CRLBR53D_BackendServiceLoadBalancingScheme)
    error_message = "Valid inputs for | variable: CRLBR53D_BackendServiceLoadBalancingScheme | are: EXTERNAL, INTERNAL_SELF_MANAGED, INTERNAL_MANAGED, EXTERNAL_MANAGED"
  }
  default = "EXTERNAL"
}

variable "CRLBR53D_BackendServicelocalityLbPolicy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#locality_lb_policy-1
  type    = string
  default = null
}

variable "CRLBR53D_BackendServiceLocalityLbPolicies" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_locality_lb_policies
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

variable "CRLBR53D_BackendServiceOutlierDetection" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_outlier_detection
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

variable "CRLBR53D_BackendServicePortName" {
  type    = string
  default = null
}

variable "CRLBR53D_BackendServiceProtocol" {
  type = string
  validation {
    condition = var.CRLBR53D_BackendServiceProtocol == null || can(contains([
      "HTTP",
      "HTTPS",
      "HTTP2",
      "TCP",
      "SSL",
      "GRPC",
      "UNSPECIFIED"
    ], var.CRLBR53D_BackendServiceProtocol))
    error_message = "Valid inputs for | variable: CRLBR53D_BackendServiceProtocol | are: HTTP, HTTPS, HTTP2, TCP, SSL, GRPC, UNSPECIFIED"
  }
  default = null
}

variable "CRLBR53D_BackendServiceSecurityPolicy" {
  type    = string
  default = null
}

variable "CRLBR53D_BackendServiceEdgeSecurityPolicy" {
  type    = string
  default = null
}

variable "CRLBR53D_BackendServiceSecuritySettings" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_security_settings
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

variable "CRLBR53D_BackendServiceSessionAffinity" {
  type = string
  validation {
    condition = var.CRLBR53D_BackendServiceSessionAffinity == null || can(contains([
      "NONE",
      "CLIENT_IP",
      "CLIENT_IP_PORT_PROTO",
      "CLIENT_IP_PROTO",
      "GENERATED_COOKIE",
      "HEADER_FIELD",
      "HTTP_COOKIE",
      "STRONG_COOKIE_AFFINITY"
    ], var.CRLBR53D_BackendServiceSessionAffinity))
    error_message = "Valid inputs for | variable: CRLBR53D_BackendServiceSessionAffinity | are: NONE, CLIENT_IP, CLIENT_IP_PORT_PROTO, CLIENT_IP_PROTO, GENERATED_COOKIE, HEADER_FIELD, HTTP_COOKIE, STRONG_COOKIE_AFFINITY"
  }
  default = null
}

variable "CRLBR53D_BackendServiceStrongSessionAffinityCookie" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_strong_session_affinity_cookie
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

variable "CRLBR53D_BackendServiceTimeoutSec" {
  type = number
  validation {
    condition     = var.CRLBR53D_BackendServiceTimeoutSec == null || can((var.CRLBR53D_BackendServiceTimeoutSec >= 1 && var.CRLBR53D_BackendServiceTimeoutSec <= 2147483647))
    error_message = "Variable CRLBR53D_BackendServiceTimeoutSec must be greater than or equal to 1 or less than or equal to 2,147,483,647"
  }
  default = null
}

variable "CRLBR53D_BackendServiceLogConfig" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service#nested_log_config
  type = object({
    enable      = optional(bool, null)
    sample_rate = optional(number, null)
  })
  default = null
}

variable "CRLBR53D_BackendServiceServiceLbPolicy" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#argument-reference
variable "CRLBR53D_UrlMapDefaultService" {
  type    = string
  default = null
}

variable "CRLBR53D_UrlMapDescription" {
  type    = string
  default = null
}

variable "CRLBR53D_UrlMapHeaderAction" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_header_action
  type = object({

    request_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_headers_to_add
      header_name  = string
      header_value = string
      replace      = bool
    }), null)

    request_headers_to_remove = optional(list(string), null)

    response_headers_to_add = optional(object({
      header_name  = string
      header_value = string
      replace      = bool
    }), null)

    response_headers_to_remove = optional(list(string), null)
  })
  default = null
} #good

variable "CRLBR53D_UrlMapHostRule" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_host_rule
  type = object({
    description  = optional(string, null)
    hosts        = list(string)
    path_matcher = string
  })
  default = null
} #good

variable "CRLBR53D_UrlMapPathMatcher" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_path_matcher
  type = object({
    default_service = optional(string, null)
    description     = optional(string, null)

    header_action = optional(object({            #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_header_action
      request_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_headers_to_add
        header_name  = string
        header_value = string
        replace      = bool
      }), null)

      request_headers_to_remove = optional(list(string), null)

      response_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_response_headers_to_add
        header_name  = string
        header_value = string
        replace      = bool
      }), null)

      response_headers_to_remove = optional(list(string), null)
    }), null) #good

    name = string

    path_rule = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_path_rule
      service = optional(string, null)
      paths   = list(string)

      route_action = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_route_action

        cors_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_cors_policy
          allow_credentials    = optional(bool, null)
          allow_headers        = optional(list(string), null)
          allow_methods        = optional(list(string), null)
          allow_origin_regexes = optional(list(string), null)
          allow_origins        = optional(list(string), null)
          disabled             = bool
          expose_headers       = optional(list(string), null)
          max_age              = optional(number, null)
        }), null) #good

        fault_injection_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_fault_injection_policy

          abort = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_abort
            http_status = number
            percentage  = number
          }), null)

          delay = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_delay

            fixed_delay = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_fixed_delay
              nanos   = optional(number, null)
              seconds = number
            })

            percentage = number
          }), null)
        }), null) #good

        request_mirror_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_mirror_policy
          backend_service = string
        }), null) #good

        retry_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_retry_policy
          num_retries = optional(number, null)

          per_try_timeout = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_per_try_timeout
            nanos   = optional(number, null)
            seconds = number
          }), null)

          retry_conditions = optional(string, null)
        }), null) #good

        timeout = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_timeout
          nanos   = optional(number, null)
          seconds = number
        }), null) #good

        url_rewrite = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_url_rewrite
          host_rewrite        = optional(string, null)
          path_prefix_rewrite = optional(string, null)
        }), null) #good

        weighted_backend_services = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_weighted_backend_services
          backend_service = string

          header_action = optional(object({            #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_header_action
            request_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_headers_to_add
              header_name  = string
              header_value = string
              replace      = bool
            }), null)

            request_headers_to_remove = optional(list(string), null)

            response_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_response_headers_to_add
              header_name  = string
              header_value = string
              replace      = bool
            }), null)

            response_headers_to_remove = optional(list(string), null)
          }), null) #good

          weight = number
        }), null)

      }), null) #good

      url_redirect = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_url_redirect
        host_redirect          = optional(string, null)
        https_redirect         = optional(bool, null)
        path_redirect          = optional(string, null)
        prefix_redirect        = optional(string, null)
        redirect_response_code = optional(string, null)
        strip_query            = bool
      }), null) #good

    }) #good

    route_rules = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_route_rules
      priority = number
      service  = optional(string, null)

      header_action = optional(object({            #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_header_action
        request_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_headers_to_add
          header_name  = string
          header_value = string
          replace      = bool
        }), null)

        request_headers_to_remove = optional(list(string), null)

        response_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_response_headers_to_add
          header_name  = string
          header_value = string
          replace      = bool
        }), null)

        response_headers_to_remove = optional(list(string), null)
      }), null)

      match_rules = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_match_rules
        full_path_match = optional(string, null)

        header_matches = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_header_matches
          exact_match   = optional(string, null)
          header_name   = string
          invert_match  = optional(string, null)
          prefix_match  = optional(string, null)
          present_match = optional(string, null)

          range_match = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_range_match
            range_end   = number
            range_start = number
          }), null)

          regex_match  = optional(string, null)
          suffix_match = optional(string, null)
        }), null) #good

        ignore_case = optional(bool, null)

        metadata_filters = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_metadata_filters
          filter_labels = object({           #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_filter_labels
            name  = string
            value = string
          })

          filter_match_criteria = string
        }), null) #good

        prefix_match = optional(string, null)

        query_parameter_matches = optional(object({
          exact_match   = optional(string, null)
          name          = string
          present_match = optional(bool, null)
          regex_match   = optional(string, null)
        }), null)

        regex_match         = optional(string, null)
        path_template_match = optional(string, null)
      }), null) #good

      route_action = optional(object({  #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_route_action
        cors_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_cors_policy
          allow_credentials    = optional(bool, null)
          allow_headers        = optional(list(string), null)
          allow_methods        = optional(list(string), null)
          allow_origin_regexes = optional(list(string), null)
          allow_origins        = optional(list(string), null)
          disabled             = bool
          expose_headers       = optional(list(string), null)
          max_age              = optional(number, null)
        }), null)

        fault_injection_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_fault_injection_policy

          abort = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_abort
            http_status = number
            percentage  = number
          }), null)

          delay = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_delay

            fixed_delay = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_fixed_delay
              nanos   = optional(number, null)
              seconds = number
            })

            percentage = number
          }), null)
        }), null)

        request_mirror_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_mirror_policy
          backend_service = string
        }), null)

        retry_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_retry_policy
          num_retries = optional(number, null)

          per_try_timeout = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_per_try_timeout
            nanos   = optional(number, null)
            seconds = number
          }), null)

          retry_conditions = optional(string, null)
        }), null)

        timeout = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_timeout
          nanos   = optional(number, null)
          seconds = number
        }), null)

        url_rewrite = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_url_rewrite
          host_rewrite        = optional(string, null)
          path_prefix_rewrite = optional(string, null)
        }), null)

        weighted_backend_services = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_weighted_backend_services
          backend_service = string

          header_action = optional(object({            #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_header_action
            request_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_headers_to_add
              header_name  = string
              header_value = string
              replace      = bool
            }), null)

            request_headers_to_remove = optional(list(string), null)

            response_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_response_headers_to_add
              header_name  = string
              header_value = string
              replace      = bool
            }), null)

            response_headers_to_remove = optional(list(string), null)
          }), null)

          weight = number
        }), null)

      }), null) #good

      url_redirect = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_url_redirect
        host_redirect          = optional(string, null)
        https_redirect         = optional(bool, null)
        path_redirect          = optional(string, null)
        prefix_redirect        = optional(string, null)
        redirect_response_code = optional(string, null)
        strip_query            = bool
      }), null)
    }), null) #good

    default_url_redirect = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_default_url_redirect
      host_redirect          = optional(string, null)
      https_redirect         = optional(bool, null)
      path_redirect          = optional(string, null)
      prefix_redirect        = optional(string, null)
      redirect_response_code = optional(string, null)
      strip_query            = bool
    }), null) #good

    default_route_action = optional(object({        #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_default_route_action
      weighted_backend_services = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_weighted_backend_services
        backend_service = string

        header_action = optional(object({            #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_header_action
          request_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_headers_to_add
            header_name  = string
            header_value = string
            replace      = bool
          }), null)

          request_headers_to_remove = optional(list(string), null)

          response_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_response_headers_to_add
            header_name  = string
            header_value = string
            replace      = bool
          }), null)

          response_headers_to_remove = optional(list(string), null)
        }), null)

        weight = number
      }), null)

      url_rewrite = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_url_rewrite
        host_rewrite        = optional(string, null)
        path_prefix_rewrite = optional(string, null)
      }), null)

      timeout = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_timeout
        nanos   = optional(number, null)
        seconds = number
      }), null)

      retry_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_retry_policy
        num_retries = optional(number, null)

        per_try_timeout = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_per_try_timeout
          nanos   = optional(number, null)
          seconds = number
        }), null)

        retry_conditions = optional(string, null)
      }), null)

      request_mirror_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_mirror_policy
        backend_service = string
      }), null)

      cors_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_cors_policy
        allow_credentials    = optional(bool, null)
        allow_headers        = optional(list(string), null)
        allow_methods        = optional(list(string), null)
        allow_origin_regexes = optional(list(string), null)
        allow_origins        = optional(list(string), null)
        disabled             = bool
        expose_headers       = optional(list(string), null)
        max_age              = optional(number, null)
      }), null)

      fault_injection_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_fault_injection_policy

        abort = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_abort
          http_status = number
          percentage  = number
        }), null)

        delay = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_delay

          fixed_delay = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_fixed_delay
            nanos   = optional(number, null)
            seconds = number
          })

          percentage = number
        }), null)
      }), null)
    }), null) #good
  })
  default = null
}

variable "CRLBR53D_UrlMapTest" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_test
  type = object({
    description = optional(string, null)
    host        = string
    path        = string
    service     = string
  })
  default = null
} #good

variable "CRLBR53D_UrlMapDefaultUrlRedirect" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_default_url_redirect
    host_redirect          = optional(string, null)
    https_redirect         = optional(bool, null)
    path_redirect          = optional(string, null)
    prefix_redirect        = optional(string, null)
    redirect_response_code = optional(string, null)
    strip_query            = bool
  })
  default = null
} #good

variable "CRLBR53D_UrlMapDefaultRouteAction" {
  type = object({                                 #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_default_route_action
    weighted_backend_services = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_weighted_backend_services
      backend_service = string

      header_action = optional(object({            #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_header_action
        request_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_headers_to_add
          header_name  = string
          header_value = string
          replace      = bool
        }), null)

        request_headers_to_remove = optional(list(string), null)

        response_headers_to_add = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_response_headers_to_add
          header_name  = string
          header_value = string
          replace      = bool
        }), null)

        response_headers_to_remove = optional(list(string), null)
      }), null)

      weight = number
    }), null)

    url_rewrite = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_url_rewrite
      host_rewrite        = optional(string, null)
      path_prefix_rewrite = optional(string, null)
    }), null)

    timeout = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_timeout
      nanos   = optional(number, null)
      seconds = number
    }), null)

    retry_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_retry_policy
      num_retries = optional(number, null)

      per_try_timeout = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_per_try_timeout
        nanos   = optional(number, null)
        seconds = number
      }), null)

      retry_conditions = optional(string, null)
    }), null)

    request_mirror_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_request_mirror_policy
      backend_service = string
    }), null)

    cors_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_cors_policy
      allow_credentials    = optional(bool, null)
      allow_headers        = optional(list(string), null)
      allow_methods        = optional(list(string), null)
      allow_origin_regexes = optional(list(string), null)
      allow_origins        = optional(list(string), null)
      disabled             = bool
      expose_headers       = optional(list(string), null)
      max_age              = optional(number, null)
    }), null)

    fault_injection_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_fault_injection_policy

      abort = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_abort
        http_status = number
        percentage  = number
      }), null)

      delay = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_delay

        fixed_delay = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map#nested_fixed_delay
          nanos   = optional(number, null)
          seconds = number
        })

        percentage = number
      }), null)
    }), null)
  })
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_target_https_proxy#argument-reference
variable "CRLBR53D_ThpUrlMap" {
  type = string
}

variable "CRLBR53D_ThpDescription" {
  type    = string
  default = null
}

variable "CRLBR53D_ThpQuicOverride" {
  type = string
  validation {
    condition = contains([
      "NONE",
      "ENABLE",
      "DISABLE"
    ], var.CRLBR53D_ThpQuicOverride)
    error_message = "Valid inputs for | variable: CRLBR53D_ThpQuicOverride | are: NONE, ENABLE, DISABLE"
  }
  default = "NONE"
}

variable "CRLBR53D_ThpTlsEarlyData" {
  type = string
  validation {
    condition = var.CRLBR53D_ThpTlsEarlyData == null || can(contains([
      "STRICT",
      "PERMISSIVE",
      "DISABLED"
    ], var.CRLBR53D_ThpTlsEarlyData))
    error_message = "Valid inputs for | variable: var.CRLBR53D_ThpTlsEarlyData | are: STRICT, PERMISSIVE, DISABLED"
  }
  default = null
}

variable "CRLBR53D_ThpCertificateManagerCertificates" {
  type    = list(string)
  default = null
}

variable "CRLBR53D_ThpSslCertificates" {
  type    = list(string)
  default = null
}

variable "CRLBR53D_ThpCertificateMap" {
  type    = string
  default = null
}

variable "CRLBR53D_ThpSslPolicy" {
  type    = string
  default = null
}

variable "CRLBR53D_ThpProxyBind" {
  type    = bool
  default = null
}

variable "CRLBR53D_ThpHttpKeepAliveTimeoutSec" {
  type = number
  validation {
    condition     = var.CRLBR53D_ThpHttpKeepAliveTimeoutSec == null || can(var.CRLBR53D_ThpHttpKeepAliveTimeoutSec >= 5 && var.CRLBR53D_ThpHttpKeepAliveTimeoutSec <= 1200)
    error_message = "var.CRLBR53D_ThpHttpKeepAliveTimeoutSec must be Greater than or Equal to 5 AND Less Than or Equal to 1200"
  }
  default = null
}

variable "CRLBR53D_ThpServerTlsPolicy" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_forwarding_rule#argument-reference
variable "CRLBR53D_GfrTarget" {
  type = string
}

variable "CRLBR53D_GfrDescription" {
  type    = string
  default = null
}

variable "CRLBR53D_GfrIpAddress" {
  type    = string
  default = null
}

variable "CRLBR53D_GfrIpProtocol" {
  type = string
  validation {
    condition = var.CRLBR53D_GfrIpProtocol == null || can(contains([
      "TCP",
      "UDP",
      "ESP",
      "AH",
      "SCTP",
      "ICMP L3_DEFAULT"
    ], var.CRLBR53D_GfrIpProtocol))
    error_message = "Valid inputs for | variable: CRLBR53D_GfrIpProtocol | are: TCP, UDP, ESP, AH, SCTP, ICMP L3_DEFAULT"
  }
  default = null
}

variable "CRLBR53D_GfrIpVersion" {
  type = string
  validation {
    condition = var.CRLBR53D_GfrIpVersion == null || can(contains([
      "IPV4",
      "IPV6"
    ], var.CRLBR53D_GfrIpVersion))
    error_message = "Valid inputs for | variable: CRLBR53D_GfrIpVersion | are: IPV4, IPV6"
  }
  default = null
}

variable "CRLBR53D_GfrLoadBalancingScheme" {
  type = string
  validation {
    condition = contains([
      "EXTERNAL",
      "EXTERNAL_MANAGED",
      "INTERNAL",
      "INTERNAL_MANAGED"
    ], var.CRLBR53D_GfrLoadBalancingScheme)
    error_message = "Valid inputs for | variable: CRLBR53D_GfrLoadBalancingScheme | are: EXTERNAL, EXTERNAL_MANAGED, INTERNAL, INTERNAL_MANAGED"
  }
  default = "EXTERNAL"
}

variable "CRLBR53D_GfrMetadataFilters" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_forwarding_rule#nested_metadata_filters
  type = object({
    filter_match_criteria = string
    filter_labels = object({
      name  = string
      value = string
    })
  })
  default = null
}

variable "CRLBR53D_GfrNetwork" {
  type    = string
  default = null
}

variable "CRLBR53D_GfrPortRange" {
  type    = string
  default = null
}

variable "CRLBR53D_GfrSubnetwork" {
  type    = string
  default = null
}

variable "CRLBR53D_GfrServiceDirectoryRegistrations" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_forwarding_rule#nested_service_directory_registrations
  type = object({
    namespace                = optional(string, null)
    service_directory_region = optional(string, null)
  })
  default = null
}

variable "CRLBR53D_GfrSourceIpRanges" {
  type    = list(string)
  default = null
}

variable "CRLBR53D_GfrNoAutomateDnsZone" {
  type    = bool
  default = null
}

#---