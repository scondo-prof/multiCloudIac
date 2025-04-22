output "distributionId" {
  value = aws_cloudfront_distribution.distribution.id
}

output "distributionArn" {
  value = aws_cloudfront_distribution.distribution.arn
}

output "distributionCallerReference" {
  value = aws_cloudfront_distribution.distribution.caller_reference
}

output "distributionStatus" {
  value = aws_cloudfront_distribution.distribution.status
}

output "distributionTagsAll" {
  value = aws_cloudfront_distribution.distribution.tags_all
}

output "distributionTrustedKeyGroups" {
  value = aws_cloudfront_distribution.distribution.trusted_key_groups
}

output "distributionTrustedSigners" {
  value = aws_cloudfront_distribution.distribution.trusted_signers
}

output "distributionDomainName" {
  value = aws_cloudfront_distribution.distribution.domain_name
}

output "distributionLastModifiedTime" {
  value = aws_cloudfront_distribution.distribution.last_modified_time
}

output "distributionInProgressValidationBatches" {
  value = aws_cloudfront_distribution.distribution.in_progress_validation_batches
}

output "distributionETag" {
  value = aws_cloudfront_distribution.distribution.etag
}

output "distributionHostedZoneId" {
  value = aws_cloudfront_distribution.distribution.hosted_zone_id
}