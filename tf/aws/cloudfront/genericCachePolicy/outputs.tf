output "cachePolicyArn" {
  value = aws_cloudfront_cache_policy.cachePolicy[*].arn
}

output "cachePolicyEtag" {
  value = aws_cloudfront_cache_policy.cachePolicy[*].etag
}

output "cachePolicyId" {
  value = aws_cloudfront_cache_policy.cachePolicy[*].id
}