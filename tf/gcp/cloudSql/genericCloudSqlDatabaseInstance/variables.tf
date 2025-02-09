variable "projectId"{
    type = string
}

variable "region" {
  type = string
  default = "us-east1"
}

variable "resourceName"{
    type = string
}

variable "databaseVersion" {
  type = string
  validation {
    condition     = contains(["MYSQL_5_6", "MYSQL_5_7", "MYSQL_8_0", "POSTGRES_9_6", "POSTGRES_10", "POSTGRES_11", "POSTGRES_12", "POSTGRES_13", "POSTGRES_14", "POSTGRES_15", "SQLSERVER_2017_STANDARD", "SQLSERVER_2017_ENTERPRISE", "SQLSERVER_2017_EXPRESS", "SQLSERVER_2017_WEB", "SQLSERVER_2019_STANDARD", "SQLSERVER_2019_ENTERPRISE", "SQLSERVER_2019_EXPRESS", "SQLSERVER_2019_WEB"], var.databaseVersion)
    error_message = "The only valid options for databaseVersion are MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, POSTGRES_9_6,POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15, SQLSERVER_2017_STANDARD, SQLSERVER_2017_ENTERPRISE, SQLSERVER_2017_EXPRESS, SQLSERVER_2017_WEB. SQLSERVER_2019_STANDARD, SQLSERVER_2019_ENTERPRISE, SQLSERVER_2019_EXPRESS, SQLSERVER_2019_WEB."
  }
}

variable "rootPassword" {
  type = string
}

variable "deletionProtection" {
  type = bool
  default = false
}

variable "tier" {
  type = string
}

variable "edition" {
  type = string
  validation {
    condition = contains(["ENTERPRISE", "ENTERPRISE_PLUS"], var.edition)
    error_message = "The only valid options for edition are ENTERPRISE, ENTERPRISE_PLUS."
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
  type = string
  default = "scott-condo"
}

variable "activationPolicy" {
  type = string
  validation {
    condition = contains(["ALWAYS", "NEVER", "ON_DEMAND"], var.activationPolicy)
    error_message = "The only valid options for activationPolicy are ALWAYS, NEVER or ON_DEMAND."
  }
  default = "ALWAYS"
}

variable "availabilityType" {
  type = string
  validation {
    condition = contains(["REGIONAL", "ZONAL"], var.availabilityType)
    error_message = "The only valid options for availabilityType are REGIONAL, ZONAL."
  }
  default = "ZONAL"
}

variable "collation" {
  type = string
  default = null
}

variable "diskAutoresize" {
  type = bool
  default = true
}

variable "diskAutoresizeLimit" {
  type = number
  default = 0
}

variable "diskSize" {
  type = number
  default = 10
}

variable "diskType" {
  type = string
  validation {
    condition = contains(["PD_SSD","PD_HDD"], var.diskType)
    error_message = "The only valid options for diskType are REGIONAL, ZONAL."
  }
  default = "PD_SSD"
}

variable "databaseInstanceAuthorizedNetworkIpRange" {
  type = string
}