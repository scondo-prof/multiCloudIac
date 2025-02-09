provider "aws" {
  region = var.awsRegion
}

provider "google" {
  project = var.gcpProjectId
  region  = var.gcpRegion
}

module "globalAddress" {
  source = "../../gcp/cloudComputeNetwork/genericGlobalAddress"

  gcpProjectId              = var.gcpProjectId
  gcpRegion                 = var.gcpRegion
  resourceName              = var.resourceName
  globalAddressAddress      = var.CRLBR53D_GlobalAddressAddress
  globalAddressDescription  = var.CRLBR53D_GlobalAddressDescription
  projectName               = var.projectName
  deployedDate              = var.deployedDate
  createdBy                 = var.createdBy
  additionalLabels          = var.additionalLabels
  globalAddressIpVersion    = var.CRLBR53D_GlobalAddressIpVersion
  globalAddressPrefixLength = var.CRLBR53D_GlobalAddressPrefixLength
  globalAddressType         = var.CRLBR53D_GlobalAddressType
  globalAddressPurpose      = var.CRLBR53D_GlobalAddressPurpose
  globalAddressNetwork      = var.CRLBR53D_GlobalAddressNetwork
}

module "route53DnsARecord" {
  source = "../../aws/route53/genericRoute53Record"

  awsRegion                           = var.awsRegion
  recordZoneId                        = var.CRLBR53D_Route53DnsARecordZoneId
  recordName                          = var.CRLBR53D_Route53DnsARecordName
  recordType                          = "A"
  recordTtl                           = var.CRLBR53D_Route53DnsARecordTtl
  recordRecords                       = concat([module.globalAddress.globalAddress], var.CRLBR53D_Route53DnsARecordAdditionalRecords)
  recordSetIdentifier                 = var.CRLBR53D_Route53DnsARecordSetIdentifier
  recordHealthCheckId                 = var.CRLBR53D_Route53DnsARecordHealthCheckId
  recordAlias                         = var.CRLBR53D_Route53DnsARecordAlias
  recordCidrRoutingPolicy             = var.CRLBR53D_Route53DnsARecordCidrRoutingPolicy
  recordFailoverRoutingPolicy         = var.CRLBR53D_Route53DnsARecordFailoverRoutingPolicy
  recordGeolocationRoutingPolicy      = var.CRLBR53D_Route53DnsARecordGeolocationRoutingPolicy
  recordGeoproximityRoutingPolicy     = var.CRLBR53D_Route53DnsARecordGeoproximityRoutingPolicy
  recordLatencyRoutingPolicy          = var.CRLBR53D_Route53DnsARecordLatencyRoutingPolicy
  recordMultivalueAnswerRoutingPolicy = var.CRLBR53D_Route53DnsARecordMultivalueAnswerRoutingPolicy
  recordWeightedRoutingPolicy         = var.CRLBR53D_Route53DnsARecordWeightedRoutingPolicy
  recordAllowOverwrite                = var.CRLBR53D_Route53DnsARecordAllowOverwrite
}

module "route53DnsTxtRecord" {
  source = "../../aws/route53/genericRoute53Record"

  awsRegion                           = var.awsRegion
  recordZoneId                        = var.CRLBR53D_Route53DnsARecordZoneId
  recordName                          = var.CRLBR53D_Route53DnsARecordName
  recordType                          = "TXT"
  recordTtl                           = var.CRLBR53D_Route53DnsTxtRecordTtl
  recordRecords                       = var.CRLBR53D_Route53DnsTxtRecordRecords
  recordSetIdentifier                 = var.CRLBR53D_Route53DnsTxtRecordSetIdentifier
  recordHealthCheckId                 = var.CRLBR53D_Route53DnsTxtRecordHealthCheckId
  recordAlias                         = var.CRLBR53D_Route53DnsTxtRecordAlias
  recordCidrRoutingPolicy             = var.CRLBR53D_Route53DnsTxtRecordCidrRoutingPolicy
  recordFailoverRoutingPolicy         = var.CRLBR53D_Route53DnsTxtRecordFailoverRoutingPolicy
  recordGeolocationRoutingPolicy      = var.CRLBR53D_Route53DnsTxtRecordGeolocationRoutingPolicy
  recordGeoproximityRoutingPolicy     = var.CRLBR53D_Route53DnsTxtRecordGeoproximityRoutingPolicy
  recordLatencyRoutingPolicy          = var.CRLBR53D_Route53DnsTxtRecordLatencyRoutingPolicy
  recordMultivalueAnswerRoutingPolicy = var.CRLBR53D_Route53DnsTxtRecordMultivalueAnswerRoutingPolicy
  recordWeightedRoutingPolicy         = var.CRLBR53D_Route53DnsTxtRecordWeightedRoutingPolicy
  recordAllowOverwrite                = var.CRLBR53D_Route53DnsTxtRecordAllowOverwrite
}

module "msc" {
  source = "../../gcp/cloudComputeNetwork/genericManagedSslCertificate"

  gcpProjectId   = var.gcpProjectId
  gcpRegion      = var.gcpRegion
  mscDescription = var.CRLBR53D_MscDescription
  resourceName   = var.resourceName
  mscManaged = {
    domains = concat([var.CRLBR53D_Route53DnsARecordName], var.CRLBR53D_MscAdditionalDomains)
  }
  mscType = var.CRLBR53D_MscType
}

module "rneg" {
  source = "../../gcp/cloudComputeNetwork/genericRegionNetworkEndpointGroup"

  gcpProjectId            = var.gcpProjectId
  gcpRegion               = var.gcpRegion
  resourceName            = var.resourceName
  rnegDescription         = var.CRLBR53D_RnegDescription
  rnegNetworkEndpointType = var.CRLBR53D_RnegNetworkEndpointType
  rnegPscTargetService    = var.CRLBR53D_RnegPscTargetService
  rnegNetwork             = var.CRLBR53D_RnegNetwork
  rnegSubnetwork          = var.CRLBR53D_RnegSubnetwork
  rnegCloudRun            = var.CRLBR53D_RnegCloudRun
  rnegAppEngine           = var.CRLBR53D_RnegAppEngine
  rnegCloudFunction       = var.CRLBR53D_RnegCloudFunction
}

module "backendService" {
  source = "../../gcp/cloudComputeNetwork/genericBackendService"

  gcpProjectId                       = var.gcpProjectId
  gcpRegion                          = var.gcpRegion
  resourceName                       = var.resourceName
  backendServiceAffinityCookieTtlSec = var.CRLBR53D_BackendServiceAffinityCookieTtlSec
  backendServiceBackend = merge({
    group = module.rneg.rnegId
  }, var.CRLBR53D_BackendServiceBackend)
  backendServiceCircuitBreakers              = var.CRLBR53D_BackendServiceCircuitBreakers
  backendServiceCompressionMode              = var.CRLBR53D_BackendServiceCompressionMode
  backendServiceConsistentHash               = var.CRLBR53D_BackendServiceConsistentHash
  backendServiceCdnPolicy                    = var.CRLBR53D_BackendServiceCdnPolicy
  backendServiceConnectionDrainingTimeoutSec = var.CRLBR53D_BackendServiceConnectionDrainingTimeoutSec
  backendServiceCustomRequestHeaders         = var.CRLBR53D_BackendServiceCustomRequestHeaders
  backendServiceCustomResponseHeaders        = var.CRLBR53D_BackendServiceCustomResponseHeaders
  backendServiceDescription                  = var.CRLBR53D_BackendServiceDescription
  backendServiceEnableCdn                    = var.CRLBR53D_BackendServiceEnableCdn
  backendServiceHealthChecks                 = var.CRLBR53D_BackendServiceHealthChecks
  backendServiceIap                          = var.CRLBR53D_BackendServiceIap
  backendServiceLoadBalancingScheme          = var.CRLBR53D_BackendServiceLoadBalancingScheme
  backendServicelocalityLbPolicy             = var.CRLBR53D_BackendServicelocalityLbPolicy
  backendServiceLocalityLbPolicies           = var.CRLBR53D_BackendServiceLocalityLbPolicies
  backendServiceOutlierDetection             = var.CRLBR53D_BackendServiceOutlierDetection
  backendServicePortName                     = var.CRLBR53D_BackendServicePortName
  backendServiceProtocol                     = var.CRLBR53D_BackendServiceProtocol
  backendServiceSecurityPolicy               = var.CRLBR53D_BackendServiceSecurityPolicy
  backendServiceEdgeSecurityPolicy           = var.CRLBR53D_BackendServiceEdgeSecurityPolicy
  backendServiceSecuritySettings             = var.CRLBR53D_BackendServiceSecuritySettings
  backendServiceSessionAffinity              = var.CRLBR53D_BackendServiceSessionAffinity
  backendServiceStrongSessionAffinityCookie  = var.CRLBR53D_BackendServiceStrongSessionAffinityCookie
  backendServiceTimeoutSec                   = var.CRLBR53D_BackendServiceTimeoutSec
  backendServiceLogConfig                    = var.CRLBR53D_BackendServiceLogConfig
  backendServiceServiceLbPolicy              = var.CRLBR53D_BackendServiceServiceLbPolicy
}

module "urlMap" {
  source = "../../gcp/cloudComputeNetwork/genericUrlMap"

  gcpProjectId             = var.gcpProjectId
  gcpRegion                = var.gcpRegion
  resourceName             = var.resourceName
  urlMapDefaultService     = module.backendService.backendServiceSelfLink
  urlMapDescription        = var.CRLBR53D_UrlMapDescription
  urlMapHeaderAction       = var.CRLBR53D_UrlMapHeaderAction
  urlMapHostRule           = var.CRLBR53D_UrlMapHostRule
  urlMapPathMatcher        = var.CRLBR53D_UrlMapPathMatcher
  urlMapTest               = var.CRLBR53D_UrlMapTest
  urlMapDefaultUrlRedirect = var.CRLBR53D_UrlMapDefaultUrlRedirect
  urlMapDefaultRouteAction = var.CRLBR53D_UrlMapDefaultRouteAction
}

module "thp" {
  source = "../../gcp/cloudComputeNetwork/genericTargetHttpsProxy"

  gcpProjectId                      = var.gcpProjectId
  gcpRegion                         = var.gcpRegion
  resourceName                      = var.resourceName
  thpUrlMap                         = module.urlMap.urlMapSelfLink
  thpDescription                    = var.CRLBR53D_ThpDescription
  thpQuicOverride                   = var.CRLBR53D_ThpQuicOverride
  thpTlsEarlyData                   = var.CRLBR53D_ThpTlsEarlyData
  thpCertificateManagerCertificates = var.CRLBR53D_ThpCertificateManagerCertificates
  thpSslCertificates                = concat([module.msc.mscSelfLink], var.CRLBR53D_AdditionalThpSslCertificates)
  thpCertificateMap                 = var.CRLBR53D_ThpCertificateMap
  thpSslPolicy                      = var.CRLBR53D_ThpSslPolicy
  thpProxyBind                      = var.CRLBR53D_ThpProxyBind
  thpHttpKeepAliveTimeoutSec        = var.CRLBR53D_ThpHttpKeepAliveTimeoutSec
  thpServerTlsPolicy                = var.CRLBR53D_ThpServerTlsPolicy
}

module "gfr" {
  source = "../../gcp/cloudComputeNetwork/genericGlobalForwardingRule"

  gcpProjectId                     = var.gcpProjectId
  gcpRegion                        = var.gcpRegion
  resourceName                     = var.resourceName
  gfrTarget                        = module.thp.thpSelfLink
  gfrDescription                   = var.CRLBR53D_GfrDescription
  gfrIpAddress                     = module.globalAddress.globalAddress
  gfrIpProtocol                    = var.CRLBR53D_GfrIpProtocol
  gfrIpVersion                     = var.CRLBR53D_GfrIpVersion
  projectName                      = var.projectName
  deployedDate                     = var.deployedDate
  createdBy                        = var.createdBy
  additionalLabels                 = var.additionalLabels
  gfrLoadBalancingScheme           = var.CRLBR53D_GfrLoadBalancingScheme
  gfrMetadataFilters               = var.CRLBR53D_GfrMetadataFilters
  gfrNetwork                       = var.CRLBR53D_GfrNetwork
  gfrPortRange                     = var.CRLBR53D_GfrPortRange
  gfrSubnetwork                    = var.CRLBR53D_GfrSubnetwork
  gfrServiceDirectoryRegistrations = var.CRLBR53D_GfrServiceDirectoryRegistrations
  gfrSourceIpRanges                = var.CRLBR53D_GfrSourceIpRanges
  gfrNoAutomateDnsZone             = var.CRLBR53D_GfrNoAutomateDnsZone
}