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
      for_each = var.secretReplicationAuto != null ? [var.secretReplicationAuto] : []
      content {
        dynamic "customer_managed_encryption" {
          for_each = auto.value["customer_managed_encryption"] != null ? [auto.value["customer_managed_encryption"]] : []
          content {
            kms_key_name = customer_managed_encryption.value["kms_key_name"]
          }
        }
      }
    }

    dynamic "user_managed" {
      for_each = var.secretReplicationUserManaged != null ? [var.secretReplicationUserManaged] : []
      content {
        replicas {
          location = replicas.value["location"]

          dynamic "customer_managed_encryption" {
            for_each = replicas.value["customer_managed_encryption"] != null ? [replicas.value["customer_managed_encryption"]] : []
            content {
              kms_key_name = customer_managed_encryption.value["kms_key_name"]
            }
          }
        }
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

  annotations         = var.secretAnnotations
  version_aliases     = var.secretVersionAliases
  version_destroy_ttl = var.secretVersionDestroyTtl

  dynamic "topics" {
    for_each = var.secretTopics != null ? [var.secretTopics] : []
    content {
      name = topics.value["name"]
    }
  }

  expire_time = var.secretExpireTime
  ttl         = var.secretTtl

  dynamic "rotation" {
    for_each = var.secretRotation != null ? [var.secretRotation] : []
    content {
      next_rotation_time = rotation.value["next_rotation_time"]
      rotation_period    = rotation.value["rotation_period"]
    }
  }

  project = var.gcpProjectId
}