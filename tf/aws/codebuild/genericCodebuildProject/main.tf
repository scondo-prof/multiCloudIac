terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.awsRegion
}

resource "aws_codebuild_project" "codebuildProject" {
  artifacts {
    artifact_identifier    = var.codebuildProjectArtifactsIdentifier
    bucket_owner_access    = var.codebuildProjectArtifactsBucketOwnerAccess
    encryption_disabled    = var.codebuildProjectArtifactsEncryptionDisabled
    location               = var.codebuildProjectArtifactsLocation
    name                   = var.codebuildProjectArtifactsName
    namespace_type         = var.codebuildProjectArtifactsNamespaceType
    override_artifact_name = var.codebuildProjectArtifactsOverrideArtifactName
    packaging              = var.codebuildProjectArtifactsPackaging
    path                   = var.codebuildProjectArtifactsPath
    type                   = var.codebuildProjectArtifactsType
  }

  environment {
    certificate  = var.codebuildProjectEnvironmentCertificate
    compute_type = var.codebuildProjectEnvironmentComputeType

    # dynamic "fleet" {
    #   for_each = var.codebuildProjectEnvironmentFleet != null ? [var.codebuildProjectEnvironmentFleet] : []
    #   content {
    #     fleet_arn = fleet.value["fleet_arn"]
    #   }
    # }

    dynamic "environment_variable" {
      for_each = var.codebuildProjectEnvironmentEnvironmentVariable != null ? var.codebuildProjectEnvironmentEnvironmentVariable : {}
      content {
        name  = environment_variable.value["name"]
        type  = environment_variable.value["type"]
        value = environment_variable.value["value"]
      }
    }

    image_pull_credentials_type = var.codebuildProjectEnvironmentImagePullCredentialsType
    image                       = var.codebuildProjectEnvironmentImage
    privileged_mode             = var.codebuildProjectEnvironmentPrivilegedMode

    dynamic "registry_credential" {
      for_each = var.codebuildProjectEnvironmentRegistryCredential != null ? [var.codebuildProjectEnvironmentRegistryCredential] : []
      content {
        credential          = registry_credential.value["credential"]
        credential_provider = registry_credential.value["credential_provider"]
      }
    }

    type = var.codebuildProjectEnvironmentType
  }

  name         = "${var.resourceName}-codebuild-project"
  service_role = var.codebuildProjectServiceRole

  source {
    buildspec       = var.codebuildProjectSourceBuildspec
    git_clone_depth = var.codebuildProjectSourceGitCloneDepth

    dynamic "git_submodules_config" {
      for_each = var.codebuildProjectSourceGitSubmodulesConfig != null ? [var.codebuildProjectSourceGitSubmodulesConfig] : []
      content {
        fetch_submodules = git_submodules_config.value["fetch_submodules"]
      }
    }

    insecure_ssl        = var.codebuildProjectSourceInsecureSsl
    location            = var.codebuildProjectSourceLocation
    report_build_status = var.codebuildProjectSourceReportBuildStatus

    dynamic "build_status_config" {
      for_each = var.codebuildProjectSourceBuildStatusConfig != null ? [var.codebuildProjectSourceBuildStatusConfig] : []
      content {
        context    = build_status_config.value["context"]
        target_url = build_status_config.value["target_url"]
      }
    }

    type = var.codebuildProjectSourceType
  }

  badge_enabled = var.codebuildProjectBadgeEnabled

  dynamic "build_batch_config" {
    for_each = var.codebuildProjectBuildBatchConfig != null ? [var.codebuildProjectBuildBatchConfig] : []
    content {
      combine_artifacts = build_batch_config.value["combine_artifacts"]

      dynamic "restrictions" {
        for_each = build_batch_config.value["restrictions"] != null ? [build_batch_config.value["restrictions"]] : []
        content {
          compute_types_allowed  = restrictions.value["compute_types_allowed"]
          maximum_builds_allowed = restrictions.value["maximum_builds_allowed"]
        }
      }

      service_role    = build_batch_config.value["service_role"]
      timeout_in_mins = build_batch_config.value["timeout_in_mins"]
    }
  }

  build_timeout = var.codebuildProjectBuildTimeout

  dynamic "cache" {
    for_each = var.codebuildProjectCache != null ? [var.codebuildProjectCache] : []
    content {
      location = cache.value["location"]
      modes    = cache.value["modes"]
      type     = cache.value["type"]
    }
  }

  concurrent_build_limit = var.codebuildProjectConcurrentBuildLimit
  description            = var.codebuildProjectDescription

  dynamic "file_system_locations" {
    for_each = var.codebuildProjectFileSystemLocations != null ? [var.codebuildProjectFileSystemLocations] : []
    content {
      identifier    = file_system_locations.value["identifier"]
      location      = file_system_locations.value["location"]
      mount_options = file_system_locations.value["mount_options"]
      mount_point   = file_system_locations.value["mount_point"]
      type          = file_system_locations.value["type"]
    }
  }

  encryption_key = var.codebuildProjectEncryptionKey

  dynamic "logs_config" {
    for_each = var.codebuildProjectLogsConfig != null ? [var.codebuildProjectLogsConfig] : []
    content {

      dynamic "cloudwatch_logs" {
        for_each = logs_config.value["cloudwatch_logs"] != null ? [logs_config.value["cloudwatch_logs"]] : []
        content {
          group_name  = cloudwatch_logs.value["group_name"]
          status      = cloudwatch_logs.value["status"]
          stream_name = cloudwatch_logs.value["stream_name"]
        }
      }

      dynamic "s3_logs" {
        for_each = logs_config.value["s3_logs"] != null ? [logs_config.value["s3_logs"]] : []
        content {
          encryption_disabled = s3_logs.value["encryption_disabled"]
          location            = s3_logs.value["location"]
          status              = s3_logs.value["status"]
          bucket_owner_access = s3_logs.value["bucket_owner_access"]
        }
      }
    }
  }

  project_visibility   = var.codebuildProjectVisibility
  resource_access_role = var.codebuildProjectResourceAccessRole
  queued_timeout       = var.codebuildProjectQueuedTimeout

  dynamic "secondary_artifacts" {
    for_each = var.codebuildProjectSecondaryArtifacts != null ? [var.codebuildProjectSecondaryArtifacts] : []
    content {
      artifact_identifier    = secondary_artifacts.value["artifact_identifier"]
      bucket_owner_access    = secondary_artifacts.value["bucket_owner_access"]
      encryption_disabled    = secondary_artifacts.value["encryption_disabled"]
      location               = secondary_artifacts.value["location"]
      name                   = secondary_artifacts.value["name"]
      namespace_type         = secondary_artifacts.value["namespace_type"]
      override_artifact_name = secondary_artifacts.value["override_artifact_name"]
      packaging              = secondary_artifacts.value["packaging"]
      path                   = secondary_artifacts.value["path"]
      type                   = secondary_artifacts.value["type"]
    }
  }

  dynamic "secondary_sources" {
    for_each = var.codebuildProjectSecondarySources != null ? [var.codebuildProjectSecondarySources] : []
    content {
      buildspec       = secondary_sources.value["buildspec"]
      git_clone_depth = secondary_sources.value["git_clone_depth"]

      dynamic "git_submodules_config" {
        for_each = secondary_sources.value["git_submodules_config"] != null ? [secondary_sources.value["git_submodules_config"]] : []
        content {
          fetch_submodules = git_submodules_config.value["fetch_submodules"]
        }
      }

      insecure_ssl        = secondary_sources.value["insecure_ssl"]
      location            = secondary_sources.value["location"]
      report_build_status = secondary_sources.value["report_build_status"]

      dynamic "build_status_config" {
        for_each = secondary_sources.value["build_status_config"] != null ? [secondary_sources.value["build_status_config"]] : []
        content {
          context    = build_status_config.value["context"]
          target_url = build_status_config.value["target_url"]
        }
      }

      source_identifier = secondary_sources.value["source_identifier"]
      type              = secondary_sources.value["type"]
    }
  }

  dynamic "secondary_source_version" {
    for_each = var.codebuildProjectSecondarySourceVersion != null ? [var.codebuildProjectSecondarySourceVersion] : []
    content {
      source_identifier = secondary_source_version.value["source_identifier"]
      source_version    = secondary_source_version.value["source_version"]
    }
  }

  source_version = var.codebuildProjectSourceVersion
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.createdBy
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)

  dynamic "vpc_config" {
    for_each = var.codebuildProjectVpcConfig != null ? [var.codebuildProjectVpcConfig] : []
    content {
      security_group_ids = vpc_config.value["security_group_ids"]
      subnets            = vpc_config.value["subnets"]
      vpc_id             = vpc_config.value["vpc_id"]
    }
  }
}