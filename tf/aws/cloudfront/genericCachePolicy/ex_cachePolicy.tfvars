resourceName = "test"

cachePolicyMinTtl = 1

cachePolicyMaxTtl = 31536000

cachePolicyDefaultTtl = 86400

cachePolicyParametersInCacheKeyAndForwardToOrigin = {
  cookie_behavior = "none"
  header_behavior = "whitelist"
  headers = {
    items = [ "Origin", "Authorization" ]
  }
  query_string_behavior = "all"
  enable_accept_encoding_brotli = true
  enable_accept_encoding_gzip = true
}