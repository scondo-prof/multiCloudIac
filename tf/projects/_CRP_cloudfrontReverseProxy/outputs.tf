output "CRP_DistributionId" {
  value = module.distribution.distributionId
}

output "CRP_DistributionArn" {
  value = module.distribution.distributionArn
}

output "CRP_DistributionCallerReference" {
  value = module.distribution.distributionCallerReference
}

output "CRP_DistributionStatus" {
  value = module.distribution.distributionStatus
}

output "CRP_DistributionTagsAll" {
  value = module.distribution.distributionTagsAll
}

output "CRP_DistributionTrustedKeyGroups" {
  value = module.distribution.distributionTrustedKeyGroups
}

output "CRP_DistributionTrustedSigners" {
  value = module.distribution.distributionTrustedSigners
}

output "CRP_DistributionDomainName" {
  value = module.distribution.distributionDomainName
}

output "CRP_DistributionLastModifiedTime" {
  value = module.distribution.distributionLastModifiedTime
}

output "CRP_DistributionInProgressValidationBatches" {
  value = module.distribution.distributionInProgressValidationBatches
}

output "CRP_DistributionETag" {
  value = module.distribution.distributionETag
}

output "CRP_DistributionHostedZoneId" {
  value = module.distribution.distributionHostedZoneId
}

#---
output "CRP_CachePolicyArn" {
  value = module.cachePolicy.cachePolicyArn
}

output "CRP_CachePolicyEtag" {
  value = module.cachePolicy.cachePolicyEtag
}

output "CRP_CachePolicyId" {
  value = module.cachePolicy.cachePolicyId
}

#---
output "CRP_OrpArn" {
  value = module.orp.orpArn
}

output "CRP_OrpEtag" {
  value = module.orp.orpEtag
}

output "CRP_OrpId" {
  value = module.orp.orpId
}

#---
output "CRP_OrpDataSourceArn" {
  value = module.orpDataSource.orpArn
}

output "CRP_OrpDataSourceComment" {
  value = module.orpDataSource.orpComment
}

output "CRP_OrpDataSourceCookiesConfig" {
  value = module.orpDataSource.orpCookiesConfig
}

output "CRP_OrpDataSourceEtag" {
  value = module.orpDataSource.orpEtag
}

output "CRP_OrpDataSourceHeadersConfig" {
  value = module.orpDataSource.orpHeadersConfig
}

output "CRP_OrpDataSourceQueryStringsConfig" {
  value = module.orpDataSource.orpQueryStringsConfig
}

#---
