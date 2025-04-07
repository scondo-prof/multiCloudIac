variable "gcpProjectId" {
  type    = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "resourceName" {
  type = string
}

variable "projectName" {
  type = string
}

variable "deployedDate" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/artifact_registry_repository#argument-reference

variable "artifactRegistryRepositoryFormat" {
  type = string
}

variable "artifactRegistryRepositoryKmsKeyName" {
  type    = string
  default = null
}

variable "artifactRegistryRepositoryDockerConfig" {
  type = object({
    immutable_tags = bool
  })
  default = null
}

variable "artifactRegistryRepositoryMavenConfig" {
  type = object({
    allow_snapshot_overwrites = bool
    version_policy            = string #Default is VERSION_POLICY_UNSPECIFIED. Possible values are: VERSION_POLICY_UNSPECIFIED, RELEASE, SNAPSHOT.
  })
  default = null
}

variable "artifactRegistryRepositoryMode" {
  type = string
  validation {
    condition = contains([
      "STANDARD_REPOSITORY",
      "VIRTUAL_REPOSITORY",
      "REMOTE_REPOSITORY"
    ], var.artifactRegistryRepositoryMode)
    error_message = "Valid inputs for | variable: mode | are: STANDARD_REPOSITORY, VIRTUAL_REPOSITORY, REMOTE_REPOSITORY"
  }
  default = "STANDARD_REPOSITORY"
}

variable "artifactRegistryRepositoryVirtualRepositoryConfig" {
  type = object({
    upstream_policies = list(object({
      id         = string
      repository = string
      priority   = number
    }))
  })
  default = null
}

variable "artifactRegistryRepositoryCleanupPolicies" {
  type = object({
    id     = string
    action = string #Possible values are: DELETE, KEEP
    condition = object({
      tag_state             = string #Default value is ANY. Possible values are: TAGGED, UNTAGGED, ANY
      tag_prefixes          = string
      version_name_prefixes = string
      package_name_prefixes = string
      older_than            = string
      newer_than            = string
    })
    most_recent_versions = object({
      package_name_prefixes = string
      keep_count            = number
    })
  })
  default = null
}

variable "artifactRegistryRepositoryRemoteRepositoryConfig" {
  type = object({
    apt_repository = object({
      public_repository = object({
        repository_base = string #DEBIAN, UBUNTU
        repository_path = string
      })
    })
    docker_repository = object({
      public_repository = string #Possible values are: DOCKER_HUB
      custom_repository = object({
        uri = string
      })
    })
    maven_repository = object({
      public_repository = string #Possible values are: MAVEN_CENTRAL
      custom_repository = object({
        uri = string
      })
    })
    npm_repository = object({
      public_repository = string #Default value is NPMJS. Possible values are: NPMJS
      custom_repository = object({
        uri = string
      })
    })
    python_repository = object({
      public_repository = string #Default value is PYPI. Possible values are: PYPI
      custom_repository = object({
        uri = string
      })
    })
    yum_repository = object({
      public_repository = object({
        repository_base = string #DEBIAN, UBUNTU.
        repository_path = string
      })
    })
    upstream_credentials = object({
      username_password_credentials = object({
        username                = string
        password_secret_version = string
      })
    })
    disable_upstream_validation = bool #If true, the remote repository upstream and upstream credentials will not be validated.
  })
  default = null
}

variable "artifactRegistryRepositoryCleanupPolicyDryRun" {
  type    = bool
  default = null
}