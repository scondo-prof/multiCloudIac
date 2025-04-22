output "cachePolicyArn" {
  value = aws_cloudfront_cache_policy.cachePolicy.arn
}

output "cachePolicyEtag" {
  value = aws_cloudfront_cache_policy.cachePolicy.etag
}

output "cachePolicyMinTtl" {
  value = aws_cloudfront_cache_policy.cachePolicy.min_ttl
}

output "cachePolicyMaxTtl" {
  value = aws_cloudfront_cache_policy.cachePolicy.max_ttl
}

output "cachePolicyDefaultTtl" {
  value = aws_cloudfront_cache_policy.cachePolicy.default_ttl
}

output "cachePolicyComment" {
  value = aws_cloudfront_cache_policy.cachePolicy.comment
}

output "cachePolicyParametersInCacheKeyAndForwardedToOrigin" {
  value = aws_cloudfront_cache_policy.cachePolicy.parameters_in_cache_key_and_forwarded_to_origin
}

output "cachePolicyId" {
  value = data.aws_cloudfront_cache_policy.cachePolicy.id
}