terraform {
  required_providers {
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
  }
}

provider "tls" {
  dynamic "proxy" {
    for_each = var.tlsProxy != null ? [var.tlsProxy] : []
    content {
      from_env = proxy.value["from_env"]
      password = proxy.value["password"]
      url      = proxy.value["url"]
      username = proxy.value["username"]
    }
  }
}


resource "tls_private_key" "privateKey" {
  algorithm   = var.privateKeyAlgorithm
  ecdsa_curve = var.privateKeyEcdsaCurve
  rsa_bits    = var.privateKeyRsaBits
}