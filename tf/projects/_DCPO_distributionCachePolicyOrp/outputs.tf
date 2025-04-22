output "DCPO_DistributionId" {
  value = module.distribution.distributionId
}

output "DCPO_DistributionArn" {
  value = module.distribution.distributionArn
}

output "DCPO_DistributionCallerReference" {
  value = module.distribution.distributionCallerReference
}

output "DCPO_DistributionStatus" {
  value = module.distribution.distributionStatus
}

output "DCPO_DistributionTagsAll" {
  value = module.distribution.distributionTagsAll
}

output "DCPO_DistributionTrustedKeyGroups" {
  value = module.distribution.distributionTrustedKeyGroups
}

output "DCPO_DistributionTrustedSigners" {
  value = module.distribution.distributionTrustedSigners
}

output "DCPO_DistributionDomainName" {
  value = module.distribution.distributionDomainName
}

output "DCPO_DistributionLastModifiedTime" {
  value = module.distribution.distributionLastModifiedTime
}

output "DCPO_DistributionInProgressValidationBatches" {
  value = module.distribution.distributionInProgressValidationBatches
}

output "DCPO_DistributionETag" {
  value = module.distribution.distributionETag
}

output "DCPO_DistributionHostedZoneId" {
  value = module.distribution.distributionHostedZoneId
}

#---
output "DCPO_CachePolicyArn" {
  value = module.cachePolicy.cachePolicyArn
}

output "DCPO_CachePolicyEtag" {
  value = module.cachePolicy.cachePolicyEtag
}

output "DCPO_CachePolicyId" {
  value = module.cachePolicy.cachePolicyId
}

#---
output "DCPO_OrpArn" {
  value = module.orp.orpArn
}

output "DCPO_OrpEtag" {
  value = module.orp.orpEtag
}

output "DCPO_OrpId" {
  value = module.orp.orpId
}

#---
output "DCPO_OrpDataSourceArn" {
  value = module.orpDataSource.orpArn
}

output "DCPO_OrpDataSourceComment" {
  value = module.orpDataSource.orpComment
}

output "DCPO_OrpDataSourceCookiesConfig" {
  value = module.orpDataSource.orpCookiesConfig
}

output "DCPO_OrpDataSourceEtag" {
  value = module.orpDataSource.orpEtag
}

output "DCPO_OrpDataSourceHeadersConfig" {
  value = module.orpDataSource.orpHeadersConfig
}

output "DCPO_OrpDataSourceQueryStringsConfig" {
  value = module.orpDataSource.orpQueryStringsConfig
}

#---
