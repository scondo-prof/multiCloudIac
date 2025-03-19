variable "projectId" {
  type = string
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
  type = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret#argument-reference

variable "secretReplicationAuto" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret#nested_replication_auto
    customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret#nested_replication_auto_customer_managed_encryption
      kms_key_name = string
    }), null)
  })

  default = null
}

variable "secretReplicationUserManaged" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret#replicas-1
    replicas = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret#location-2
      location = string
      customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret#nested_replication_user_managed_replicas_replicas_customer_managed_encryption
        kms_key_name = string
      }), null)

    })
  })
}