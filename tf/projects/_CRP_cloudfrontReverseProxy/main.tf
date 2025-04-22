#---

module "cachePolicy" {
  source             = "../aws/cloudfront/genericCachePolicy"
  awsRegion          = var.awsRegion
  cachePolicyObjects = concat([
    {
    name        = "${var.resourceName}-origin-cors"
    min_ttl     = 1
    max_ttl     = 31536000
    default_ttl = 86400

    cookies_config = {
      cookie_behavior = "none"
    }

    headers_config = {
      header_behavior = "whitelist"
      headers = {
        items = ["Origin", "Authorization"]
      }
    }

    query_strings_config = {
      query_string_behavior = "all"
    }

    enable_accept_encoding_brotli = true
    enable_accept_encoding_gzip   = true
  }
  ], var.CRP_CachePolicyObjects)
}

#---

module "orp" {
  source     = "../aws/cloudfront/genericOriginRequestPolicy"
  awsRegion  = var.awsRegion
  orpObjects = concat([
    {
    name    = "${var.resourceName}-origin-request-policy"

    cookies_config = {
      cookie_behavior = "none"
    }

    headers_config = {
      header_behavior = "whitelist"
      headers = {
        items = ["Origin"]
      }
    }

    query_strings_config = {
      query_string_behavior = "all"
    }
  }
  ], var.CRP_OrpObjects)
}

#---

module "orpDataSource" {
  source     = "../aws/cloudfront/genericOriginRequestPolicyDataSource"
  awsRegion  = var.awsRegion
  orpObjects = concat([
    {
      name = "Managed-CORS-CustomOrigin"
    }
  ], var.CRP_OrpDataSourceObjects)
}

#---


module "distribution" {
  source                                   = "../aws/cloudfront/genericDistribution"
  awsRegion                                = var.awsRegion
  distributionAliases                      = var.CRP_DistributionAliases
  distributionComment                      = var.CRP_DistributionComment
  distributionContinuousDeploymentPolicyId = var.CRP_DistributionContinuousDeploymentPolicyId
  distributionCustomErrorResponse          = var.CRP_DistributionCustomErrorResponse
  distributionDefaultCacheBehavior         = var.CRP_DistributionDefaultCacheBehavior
  distributionDefaultRootObject            = var.CRP_DistributionDefaultRootObject
  distributionEnabled                      = var.CRP_DistributionEnabled
  distributionIsIpv6Enabled                = var.CRP_DistributionIsIpv6Enabled
  distributionHttpVersion                  = var.CRP_DistributionHttpVersion
  distributionLoggingConfig                = var.CRP_DistributionLoggingConfig
  distributionOrderedCacheBehavior         = var.CRP_DistributionOrderedCacheBehavior
  distributionOrigin                       = var.CRP_DistributionOrigin
  distributionOriginGroup                  = var.CRP_DistributionOriginGroup
  distributionPriceClass                   = var.CRP_DistributionPriceClass
  distributionRestrictionsGeoRestrictions  = var.CRP_DistributionRestrictionsGeoRestrictions
  distributionStaging                      = var.CRP_DistributionStaging
  projectName                              = var.projectName
  createdBy                                = var.createdBy
  deployedDate                             = var.deployedDate
  tfModule                                 = var.tfModule
  additionalTags                           = var.additionalTags
  distributionViewerCertificate            = var.CRP_DistributionViewerCertificate
  distributionWebAclId                     = var.CRP_DistributionWebAclId
  distributionRetainOnDelete               = var.CRP_DistributionRetainOnDelete
  distributionWaitForDeployment            = var.CRP_DistributionWaitForDeployment
}