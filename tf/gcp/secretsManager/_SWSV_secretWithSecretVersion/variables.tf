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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SWSV_Secret_manager_SWSV_Secret#argument-reference

variable "SWSV_SecretReplicationAuto" {
  type = object({                                   #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SWSV_Secret_manager_SWSV_Secret#nested_replication_auto
    customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SWSV_Secret_manager_SWSV_Secret#nested_replication_auto_customer_managed_encryption
      kms_key_name = string
    }), null)
  })

  default = null
}

variable "SWSV_SecretReplicationUserManaged" {
  type = object({       #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SWSV_Secret_manager_SWSV_Secret#replicas-1
    replicas = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SWSV_Secret_manager_SWSV_Secret#location-2
      location = string
      customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SWSV_Secret_manager_SWSV_Secret#nested_replication_user_managed_replicas_replicas_customer_managed_encryption
        kms_key_name = string
      }), null)

    })
  })
  default = null
}

variable "SWSV_SecretAnnotations" {
  type    = map(string)
  default = null
}

variable "SWSV_SecretVersionAliases" {
  type    = map(string)
  default = null
}

variable "SWSV_SecretVersionDestroyTtl" {
  type    = number
  default = null
}

variable "SWSV_SecretTopics" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SWSV_Secret_manager_SWSV_Secret#nested_topics
    name = string
  })
  default = null
}

variable "SWSV_SecretExpireTime" {
  type    = string
  default = null
}

variable "SWSV_SecretTtl" {
  type    = string
  default = null
}

variable "SWSV_SecretRotation" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SWSV_Secret_manager_SWSV_Secret#nested_rotation
    next_rotation_time = optional(string, null)
    rotation_period    = optional(string, null)
  })
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version#argument-reference

variable "SWSV_SecretVersionObjects" {
  type = list(object({
    enabled               = optional(bool, null)
    secret_data           = string
    deletion_policy       = optional(string, null)
    is_secret_data_base64 = optional(bool, null)
  }))
  sensitive = true
}

#---
