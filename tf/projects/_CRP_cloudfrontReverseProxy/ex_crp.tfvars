projectName = "test"

deployedDate = "2025-04-22"

tfModule = "crp"

resourceName = "cowabunga"

CRP_DistributionComment = "test for the hogs reverse proxy"

CRP_DistributionDefaultCacheBehavior = {
  allowed_methods        = ["GET", "HEAD", "OPTIONS"]
  cached_methods         = ["GET", "HEAD"]
  target_origin_id       = "us.i.posthog.com"
  viewer_protocol_policy = "allow-all"
}

CRP_DistributionEnabled = true

CRP_DistributionOrigin = [
  {
    domain_name = "us.i.posthog.com"
    origin_id   = "us.i.posthog.com"
    custom_origin_config = {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "https-only"
      origin_ssl_protocols   = ["TLSv1.2"]
    }
  },
  {
    domain_name = "us-assets.i.posthog.com"
    origin_id   = "us-assets.i.posthog.com"
    custom_origin_config = {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "https-only"
      origin_ssl_protocols   = ["TLSv1.2"]
    }
  }
]

CRP_DistributionInitialOrderedCacheBehavior = {
  path_pattern           = "/static/*"
  allowed_methods        = ["GET", "HEAD", "OPTIONS"]
  cached_methods         = ["GET", "HEAD"]
  target_origin_id       = "us-assets.i.posthog.com"
  viewer_protocol_policy = "allow-all"
}

CRP_DistributionRestrictionsGeoRestrictions = {
  locations        = []
  restriction_type = "none"
}

CRP_DistributionViewerCertificate = {
  cloudfront_default_certificate = true
}