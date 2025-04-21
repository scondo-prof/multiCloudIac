output "cdnId" {
  value = aws_cloudfront_distribution.cdn.id
}

output "cdnArn" {
  value = aws_cloudfront_distribution.cdn.arn
}

output "cdnCallerReference" {
  value = aws_cloudfront_distribution.cdn.caller_reference
}

output "cdnStatus" {
  value = aws_cloudfront_distribution.cdn.status
}

output "cdnTagsAll" {
  value = aws_cloudfront_distribution.cdn.tags_all
}

output "cdnTrustedKeyGroups" {
  value = aws_cloudfront_distribution.cdn.trusted_key_groups
}

output "cdnTrustedSigners" {
  value = aws_cloudfront_distribution.cdn.trusted_signers
}

output "cdnDomainName" {
  value = aws_cloudfront_distribution.cdn.domain_name
}

output "cdnLastModifiedTime" {
  value = aws_cloudfront_distribution.cdn.last_modified_time
}

output "cdnInProgressValidationBatches" {
  value = aws_cloudfront_distribution.cdn.in_progress_validation_batches
}

output "cdnETag" {
  value = aws_cloudfront_distribution.cdn.etag
}

output "cdnHostedZoneId" {
  value = aws_cloudfront_distribution.cdn.hosted_zone_id
}