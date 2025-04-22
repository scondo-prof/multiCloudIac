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
  ], var.DCPO_CachePolicyObjects)
}

#---

module "orp" {
  source     = "../aws/cloudfront/genericOriginRequestPolicy"
  awsRegion  = var.awsRegion
  orpObjects = var.DCPO_OrpObjects
}

#---

module "orpDataSource" {
  source     = "../aws/cloudfront/genericOriginRequestPolicyDataSource"
  awsRegion  = var.awsRegion
  orpObjects = var.DCPO_OrpDataSourceObjects
}

#---


module "distribution" {
  source                                   = "../aws/cloudfront/genericDistribution"
  awsRegion                                = var.awsRegion
  distributionAliases                      = var.DCPO_DistributionAliases
  distributionComment                      = var.DCPO_DistributionComment
  distributionContinuousDeploymentPolicyId = var.DCPO_DistributionContinuousDeploymentPolicyId
  distributionCustomErrorResponse          = var.DCPO_DistributionCustomErrorResponse
  distributionDefaultCacheBehavior         = var.DCPO_DistributionDefaultCacheBehavior
  distributionDefaultRootObject            = var.DCPO_DistributionDefaultRootObject
  distributionEnabled                      = var.DCPO_DistributionEnabled
  distributionIsIpv6Enabled                = var.DCPO_DistributionIsIpv6Enabled
  distributionHttpVersion                  = var.DCPO_DistributionHttpVersion
  distributionLoggingConfig                = var.DCPO_DistributionLoggingConfig
  distributionOrderedCacheBehavior         = var.DCPO_DistributionOrderedCacheBehavior
  distributionOrigin                       = var.DCPO_DistributionOrigin
  distributionOriginGroup                  = var.DCPO_DistributionOriginGroup
  distributionPriceClass                   = var.DCPO_DistributionPriceClass
  distributionRestrictionsGeoRestrictions  = var.DCPO_DistributionRestrictionsGeoRestrictions
  distributionStaging                      = var.DCPO_DistributionStaging
  projectName                              = var.projectName
  createdBy                                = var.createdBy
  deployedDate                             = var.deployedDate
  tfModule                                 = var.tfModule
  additionalTags                           = var.additionalTags
  distributionViewerCertificate            = var.DCPO_DistributionViewerCertificate
  distributionWebAclId                     = var.DCPO_DistributionWebAclId
  distributionRetainOnDelete               = var.DCPO_DistributionRetainOnDelete
  distributionWaitForDeployment            = var.DCPO_DistributionWaitForDeployment
}