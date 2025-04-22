cachePolicyObjects = [
  {
    name        = "test"
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
]