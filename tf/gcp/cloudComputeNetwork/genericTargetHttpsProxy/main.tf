terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.12.0"
    }
  }
}

provider "google" {
  project = var.gcpProjectId
  region  = var.gcpRegion
}

resource "google_compute_target_https_proxy" "thp" {
  name    = "${var.resourceName}-thp"
  url_map = var.thpUrlMap

  description                      = var.thpDescription
  quic_override                    = var.thpQuicOverride
  tls_early_data                   = var.thpTlsEarlyData
  certificate_manager_certificates = var.thpCertificateManagerCertificates
  ssl_certificates                 = var.thpSslCertificates
  certificate_map                  = var.thpCertificateMap
  ssl_policy                       = var.thpSslPolicy
  proxy_bind                       = var.thpProxyBind
  http_keep_alive_timeout_sec      = var.thpHttpKeepAliveTimeoutSec
  server_tls_policy                = var.thpServerTlsPolicy
  project                          = var.gcpProjectId
}