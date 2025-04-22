output "orpArn" {
  value = data.aws_cloudfront_origin_request_policy.orp[*].arn
}

output "orpComment" {
  value = data.aws_cloudfront_origin_request_policy.orp[*].comment
}

output "orpCookiesConfig" {
  value = data.aws_cloudfront_origin_request_policy.orp[*].cookies_config
}

output "orpEtag" {
  value = data.aws_cloudfront_origin_request_policy.orp[*].etag
}

output "orpHeadersConfig" {
  value = data.aws_cloudfront_origin_request_policy.orp[*].headers_config
}

output "orpQueryStringsConfig" {
  value = data.aws_cloudfront_origin_request_policy.orp[*].query_strings_config
}

output "orpId" {
  value = data.aws_cloudfront_origin_request_policy.orp[*].id
}