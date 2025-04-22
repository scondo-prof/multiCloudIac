orpObjects = [
  {
    name    = "test"
    comment = "wow thats cool"

    cookies_config = {
      cookie_behavior = "none"
    }

    headers_config = {
      header_behavior = "whitelist"
      headers = {
        items = ["Origin"]
      }
    }

    query_strings_config = {
      query_string_behavior = "all"
    }
  }
]