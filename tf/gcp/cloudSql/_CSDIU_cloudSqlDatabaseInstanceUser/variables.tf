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

variable "CSDIU_DatabaseInstanceDatabaseVersion" {
  type = string
  validation {
    condition     = contains(["MYSQL_5_6", "MYSQL_5_7", "MYSQL_8_0", "POSTGRES_9_6", "POSTGRES_10", "POSTGRES_11", "POSTGRES_12", "POSTGRES_13", "POSTGRES_14", "POSTGRES_15", "SQLSERVER_2017_STANDARD", "SQLSERVER_2017_ENTERPRISE", "SQLSERVER_2017_EXPRESS", "SQLSERVER_2017_WEB", "SQLSERVER_2019_STANDARD", "SQLSERVER_2019_ENTERPRISE", "SQLSERVER_2019_EXPRESS", "SQLSERVER_2019_WEB"], var.CSDIU_DatabaseInstanceDatabaseVersion)
    error_message = "The only valid options for CSDIU_DatabaseInstanceDatabaseVersion are MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, POSTGRES_9_6,POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15, SQLSERVER_2017_STANDARD, SQLSERVER_2017_ENTERPRISE, SQLSERVER_2017_EXPRESS, SQLSERVER_2017_WEB. SQLSERVER_2019_STANDARD, SQLSERVER_2019_ENTERPRISE, SQLSERVER_2019_EXPRESS, SQLSERVER_2019_WEB."
  }
}

variable "CSDIU_DatabaseInstanceRootPassword" {
  type = string
}

variable "CSDIU_DatabaseInstanceDeletionProtection" {
  type    = bool
  default = false
}

variable "CSDIU_DatabaseInstanceTier" {
  type = string
}

variable "CSDIU_DatabaseInstanceEdition" {
  type = string
  validation {
    condition     = contains(["ENTERPRISE", "ENTERPRISE_PLUS"], var.CSDIU_DatabaseInstanceEdition)
    error_message = "The only valid options for CSDIU_DatabaseInstanceEdition are ENTERPRISE, ENTERPRISE_PLUS."
  }
  default = "ENTERPRISE"
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

variable "CSDIU_DatabaseInstanceActivationPolicy" {
  type = string
  validation {
    condition     = contains(["ALWAYS", "NEVER", "ON_DEMAND"], var.CSDIU_DatabaseInstanceActivationPolicy)
    error_message = "The only valid options for CSDIU_DatabaseInstanceActivationPolicy are ALWAYS, NEVER or ON_DEMAND."
  }
  default = "ALWAYS"
}

variable "CSDIU_DatabaseInstanceAvailabilityType" {
  type = string
  validation {
    condition     = contains(["REGIONAL", "ZONAL"], var.CSDIU_DatabaseInstanceAvailabilityType)
    error_message = "The only valid options for CSDIU_DatabaseInstanceAvailabilityType are REGIONAL, ZONAL."
  }
  default = "ZONAL"
}

variable "CSDIU_DatabaseInstanceCollation" {
  type    = string
  default = null
}

variable "CSDIU_DatabaseInstanceDiskAutoresize" {
  type    = bool
  default = true
}

variable "CSDIU_DatabaseInstanceDiskAutoresizeLimit" {
  type    = number
  default = 0
}

variable "CSDIU_DatabaseInstanceDiskSize" {
  type    = number
  default = 10
}

variable "CSDIU_DatabaseInstanceDiskType" {
  type = string
  validation {
    condition     = contains(["PD_SSD", "PD_HDD"], var.CSDIU_DatabaseInstanceDiskType)
    error_message = "The only valid options for CSDIU_DatabaseInstanceDiskType are REGIONAL, ZONAL."
  }
  default = "PD_SSD"
}

variable "CSDIU_DatabaseInstanceAuthorizedNetworkIpRange" {
  type = string
}

variable "CSDIU_DatabaseDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DELETE"], var.CSDIU_DatabaseDeletionPolicy)
    error_message = "The only valid options for CSDIU_DatabaseDeletionPolicy are 'ABANDON', 'DELETE'."
  }
}

variable "CSDIU_DatabaseUserPassword" {
  type = string
}

variable "CSDIU_DatabaseUserType" {
  type    = string
  default = "BUILT-IN"
}

variable "CSDIU_DatabaseUserDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON"], var.CSDIU_DatabaseUserDeletionPolicy)
    error_message = "Variable CSDIU_DatabaseUserDeletionPolicy must be the value ABANDON or null"
  }
  default = "ABANDON"
}

variable "CSDIU_DatabasePublicIpSecretVersionEnabled" {
  type    = bool
  default = true
}

variable "CSDIU_DatabasePublicIpSecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.CSDIU_DatabasePublicIpSecretVersionDeletionPolicy)
    error_message = "The only valid options for CSDIU_DatabasePublicIpSecretVersionDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "CSDIU_DatabaseUserNameSecretVersionEnabled" {
  type    = bool
  default = true
}

variable "CSDIU_DatabaseUserNameSecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.CSDIU_DatabaseUserNameSecretVersionDeletionPolicy)
    error_message = "The only valid options for CSDIU_DatabaseUserNameSecretVersionDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "CSDIU_DatabaseUserPasswordSecretVersionEnabled" {
  type    = bool
  default = true
}

variable "CSDIU_DatabaseUserPasswordSecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.CSDIU_DatabaseUserPasswordSecretVersionDeletionPolicy)
    error_message = "The only valid options for CSDIU_DatabaseUserPasswordSecretVersionDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "CSDIU_DatabaseNameSecretVersionEnabled" {
  type    = bool
  default = true
}

variable "CSDIU_DatabaseNameSecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.CSDIU_DatabaseNameSecretVersionDeletionPolicy)
    error_message = "The only valid options for CSDIU_DatabaseNameSecretVersionDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}