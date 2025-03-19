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

resource "google_secret_manager_secret" "secret" {
  
  replication {
    
    dynamic "auto" {
      for_each = var.secret != null ? [var.secret]: []
      content {
        
      }
    }

    dynamic "user_managed" {
      for_each = var.secret != null ? [var.secret]: []
      content {
        
      }
    }
  }

  secret_id = "${var.resourceName}-secret"

  labels = merge({
    project       = var.projectName
    deployed-date = var.deployedDate
    created-by    = var.createdBy
    tf-module     = var.tfModule
  }, var.additionalTags)

  annotations = var.secret
  version_aliases = var.secret
  version_destroy_ttl = var.secret

  dynamic "topics" {
    for_each = var.secret != null ? [var.secret]: []
      content {
        
      }
  }

  expire_time = var.secret
  ttl = var.secret

  dynamic "rotation" {
    for_each = var.secret != null ? [var.secret]: []
      content {
        
      }
  }

  project = var.gcpProjectId
}