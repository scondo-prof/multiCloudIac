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

resource "google_artifact_registry_repository" "artifactRegistryRepository" {
  repository_id = var.resourceName
  format        = var.artifactRegistryRepositoryFormat

  location = var.gcpRegion
  labels = merge({
    "project" : var.projectName
    "deployed-date" : var.deployedDate
    "created-by" : var.createdBy
  }, var.additionalLabels)
  kms_key_name = var.artifactRegistryRepositoryKmsKeyName

  dynamic "docker_config" {
    for_each = var.artifactRegistryRepositoryDockerConfig != null ? [var.artifactRegistryRepositoryDockerConfig] : []
    content {
      immutable_tags = docker_config.value["immutable_tags"]
    }
  }

  dynamic "maven_config" {
    for_each = var.artifactRegistryRepositoryMavenConfig != null ? [var.artifactRegistryRepositoryMavenConfig] : []
    content {
      allow_snapshot_overwrites = maven_config.value["allow_snapshot_overwrites"]
      version_policy            = maven_config.value["version_policy"]
    }
  }

  mode = var.artifactRegistryRepositoryMode

  dynamic "virtual_repository_config" {
    for_each = var.artifactRegistryRepositoryVirtualRepositoryConfig != null ? [var.artifactRegistryRepositoryVirtualRepositoryConfig] : []
    content {
      dynamic "upstream_policies" {
        for_each = virtual_repository_config.value.upstream_policies
        content {
          id         = upstream_policies.value["id"]
          repository = upstream_policies.value["repository"]
          priority   = upstream_policies.value["priority"]
        }
      }
    }
  }

  dynamic "cleanup_policies" {
    for_each = var.artifactRegistryRepositoryCleanupPolicies != null ? [var.artifactRegistryRepositoryCleanupPolicies] : []
    content {
      id     = cleanup_policies.value["id"]
      action = cleanup_policies.value["action"]
      dynamic "condition" {
        for_each = cleanup_policies.value.condition
        content {
          tag_state             = condition.value["tag_state"]
          tag_prefixes          = condition.value["tag_prefixes"]
          version_name_prefixes = condition.value["version_name_prefixes"]
          package_name_prefixes = condition.value["package_name_prefixes"]
          older_than            = condition.value["older_than"]
          newer_than            = condition.value["newer_than"]
        }
      }
      dynamic "most_recent_versions" {
        for_each = cleanup_policies.value.most_recent_versions
        content {
          package_name_prefixes = most_recent_versions.value["package_name_prefixes"]
          keep_count            = most_recent_versions.value["keep_count"]
        }
      }
    }
  }

  dynamic "remote_repository_config" {
    for_each = var.artifactRegistryRepositoryRemoteRepositoryConfig != null ? [var.artifactRegistryRepositoryRemoteRepositoryConfig] : []
    content {

      dynamic "apt_repository" {
        for_each = remote_repository_config.value.apt_repository
        content {

          dynamic "public_repository" {
            for_each = apt_repository.value.public_repository
            content {
              repository_base = public_repository.value["repository_base"]
              repository_path = public_repository.value["repository_path"]
            }
          }
        }
      }

      dynamic "docker_repository" {
        for_each = remote_repository_config.value.docker_repository
        content {
          public_repository = docker_repository.value["public_repository"]

          dynamic "custom_repository" {
            for_each = docker_repository.value.custom_repository
            content {
              uri = custom_repository.value["uri"]
            }
          }
        }
      }

      dynamic "maven_repository" {
        for_each = remote_repository_config.value.maven_repository
        content {
          public_repository = maven_repository.value["public_repository"]

          dynamic "custom_repository" {
            for_each = maven_repository.value.custom_repository
            content {
              uri = custom_repository.value["uri"]
            }
          }
        }
      }

      dynamic "npm_repository" {
        for_each = remote_repository_config.value.npm_repository
        content {
          public_repository = npm_repository.value["public_repository"]

          dynamic "custom_repository" {
            for_each = npm_repository.value.custom_repository
            content {
              uri = custom_repository.value["uri"]
            }
          }
        }
      }

      dynamic "python_repository" {
        for_each = remote_repository_config.value.python_repository
        content {
          public_repository = python_repository.value["public_repository"]

          dynamic "custom_repository" {
            for_each = python_repository.value.custom_repository
            content {
              uri = custom_repository.value["uri"]
            }
          }
        }
      }

      dynamic "yum_repository" {
        for_each = remote_repository_config.value.python_repository
        content {
          dynamic "public_repository" {
            for_each = yum_repository.value.public_repository
            content {
              repository_base = public_repository.value["repository_base"]
              repository_path = public_repository.value["repository_path"]
            }
          }
        }
      }

      dynamic "upstream_credentials" {
        for_each = remote_repository_config.value.upstream_credentials
        content {
          dynamic "username_password_credentials" {
            for_each = upstream_credentials.value.username_password_credentials
            content {
              username                = username_password_credentials.value["username"]
              password_secret_version = username_password_credentials.value["password_secret_version"]
            }
          }
        }
      }

      disable_upstream_validation = remote_repository_config.value["disable_upstream_validation"]
    }
  }
  cleanup_policy_dry_run = var.artifactRegistryRepositoryCleanupPolicyDryRun
  project                = var.gcpProjectId
}