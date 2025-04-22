
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

#---

module "cachePolicy" {
  source             = "../aws/cloudfront/genericCachePolicy"
  awsRegion          = var.awsRegion
  cachePolicyObjects = var.DCPO_CachePolicyObjects
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
