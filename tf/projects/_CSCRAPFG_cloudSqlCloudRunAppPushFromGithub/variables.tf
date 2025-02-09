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

variable "CSCRAPFG_NetworkAutoCreateSubNetworks" {
  type    = bool
  default = false
}

variable "CSCRAPFG_NetworkRoutingMode" {
  type = string
  validation {
    condition     = contains(["REGIONAL", "GLOBAL"], var.CSCRAPFG_NetworkRoutingMode)
    error_message = "Value put for CSCRAPFG_NetworkRoutingMode is not in values: REGIONAL, GLOBAL."
  }
  default = "REGIONAL"
}

variable "CSCRAPFG_NetworkMaximumTransmissionUnitBytes" {
  type = number
  validation {
    condition     = var.CSCRAPFG_NetworkMaximumTransmissionUnitBytes > 1300 && var.CSCRAPFG_NetworkMaximumTransmissionUnitBytes < 8896
    error_message = "Value set for CSCRAPFG_NetworkMaximumTransmissionUnitBytes must: greater than 1300 bytes, but less than 8896 bytes."
  }
  default = 1460
}

variable "CSCRAPFG_NetworkDeleteDefaultRoutesOnCreate" {
  type    = bool
  default = false
}

variable "CSCRAPFG_SubnetworkIpCidrRange" {
  type    = string
  default = "10.142.0.0/20"
}

variable "CSCRAPFG_FirewallIngressRules" {
  description = "List of firewall rules to apply."
  type = list(object({
    protocol = string
    ports    = list(string)
  }))
  default = [
    {
      protocol = "tcp"
      ports    = ["22", "3389"]
    }
  ]
}

variable "CSCRAPFG_FirewallIngressDisabled" {
  type    = bool
  default = false
}


variable "CSCRAPFG_FirewallIngressPriority" {
  type = number
  validation {
    condition     = var.CSCRAPFG_FirewallIngressPriority >= 0 && var.CSCRAPFG_FirewallIngressPriority <= 65535
    error_message = "value"
  }
  default = 1000
}

variable "CSCRAPFG_FirewallIngressSourceRanges" {
  type = list(string)
}

variable "CSCRAPFG_FirewallEgressRules" {
  description = "List of firewall rules to apply."
  type = list(object({
    protocol = string
    ports    = list(string)
  }))
  default = [
    {
      protocol = "tcp"
      ports    = ["667"]
    },
    {
      protocol = "upd"
      ports    = ["665", "666"]
    }
  ]
}

variable "CSCRAPFG_FirewallEgressDisabled" {
  type    = bool
  default = false
}


variable "CSCRAPFG_FirewallEgressPriority" {
  type = number
  validation {
    condition     = var.CSCRAPFG_FirewallEgressPriority >= 0 && var.CSCRAPFG_FirewallEgressPriority <= 65535
    error_message = "value"
  }
  default = 1000
}

variable "CSCRAPFG_FirewallEgressSourceRanges" {
  type = list(string)
}

#Only necessary if you want a specific address for internal use
variable "CSCRAPFG_NetworkAddressAddress" {
  type    = string
  default = null
}

variable "CSCRAPFG_NetworkAddressType" {
  type = string
  validation {
    condition     = contains(["INTERNAL", "EXTERNAL"], var.CSCRAPFG_NetworkAddressType)
    error_message = "Variable CSCRAPFG_NetworkAddressType must be one of the following values: INTERNAL, EXTERNAL"
  }
  default = "EXTERNAL"
}

#Possible Values are either PREMIUM or STANDARD, if left Null it will default to PREMIUM
variable "CSCRAPFG_NetworkAddressNetworkTier" {
  type    = string
  default = null
}

variable "CSCRAPFG_NetworkRouterNetworkName" {
  type = string
}

variable "CSCRAPFG_NatSourceSubnetworkIpRangesToNat" {
  type = string
  validation {
    condition     = contains(["ALL_SUBNETWORKS_ALL_IP_RANGES", "ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES", "LIST_OF_SUBNETWORKS"], var.CSCRAPFG_NatSourceSubnetworkIpRangesToNat)
    error_message = "Variable CSCRAPFG_NatSourceSubnetworkIpRangesToNat must be one of the following values: ALL_SUBNETWORKS_ALL_IP_RANGES, ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, LIST_OF_SUBNETWORKS"
  }
  default = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}

variable "CSCRAPFG_NatMinPortsPerVm" {
  type    = number
  default = 64
}

variable "CSCRAPFG_VpcAccessConnectorMachineType" {
  type    = string
  default = "e2-micro"
}

variable "CSCRAPFG_VpcAccessConnectorMinInstances" {
  type = number
  validation {
    condition     = var.CSCRAPFG_VpcAccessConnectorMinInstances >= 2 && var.CSCRAPFG_VpcAccessConnectorMinInstances <= 9
    error_message = "Variable CSCRAPFG_VpcAccessConnectorMinInstances must be greater than or equal to 2 and less than or equal to 9."
  }
  default = 2
}

variable "CSCRAPFG_VpcAccessConnectorMaxInstances" {
  type = number
  validation {
    condition     = var.CSCRAPFG_VpcAccessConnectorMaxInstances >= 3 && var.CSCRAPFG_VpcAccessConnectorMaxInstances <= 10
    error_message = "Variable CSCRAPFG_VpcAccessConnectorMaxInstances must be greater than or equal to 3 and less than or equal to 10."
  }
  default = 3
}

variable "CSCRAPFG_DatabaseInstanceDatabaseVersion" {
  type = string
  validation {
    condition     = contains(["MYSQL_5_6", "MYSQL_5_7", "MYSQL_8_0", "POSTGRES_9_6", "POSTGRES_10", "POSTGRES_11", "POSTGRES_12", "POSTGRES_13", "POSTGRES_14", "POSTGRES_15", "SQLSERVER_2017_STANDARD", "SQLSERVER_2017_ENTERPRISE", "SQLSERVER_2017_EXPRESS", "SQLSERVER_2017_WEB", "SQLSERVER_2019_STANDARD", "SQLSERVER_2019_ENTERPRISE", "SQLSERVER_2019_EXPRESS", "SQLSERVER_2019_WEB"], var.CSCRAPFG_DatabaseInstanceDatabaseVersion)
    error_message = "The only valid options for CSCRAPFG_DatabaseInstanceDatabaseVersion are MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, POSTGRES_9_6,POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15, SQLSERVER_2017_STANDARD, SQLSERVER_2017_ENTERPRISE, SQLSERVER_2017_EXPRESS, SQLSERVER_2017_WEB. SQLSERVER_2019_STANDARD, SQLSERVER_2019_ENTERPRISE, SQLSERVER_2019_EXPRESS, SQLSERVER_2019_WEB."
  }
}

variable "CSCRAPFG_DatabaseInstanceRootPassword" {
  type = string
}

variable "CSCRAPFG_DatabaseInstanceDeletionProtection" {
  type    = bool
  default = false
}

variable "CSCRAPFG_DatabaseInstanceTier" {
  type = string
}

variable "CSCRAPFG_DatabaseInstanceEdition" {
  type = string
  validation {
    condition     = contains(["ENTERPRISE", "ENTERPRISE_PLUS"], var.CSCRAPFG_DatabaseInstanceEdition)
    error_message = "The only valid options for CSCRAPFG_DatabaseInstanceEdition are ENTERPRISE, ENTERPRISE_PLUS."
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

variable "CSCRAPFG_DatabaseInstanceActivationPolicy" {
  type = string
  validation {
    condition     = contains(["ALWAYS", "NEVER", "ON_DEMAND"], var.CSCRAPFG_DatabaseInstanceActivationPolicy)
    error_message = "The only valid options for CSCRAPFG_DatabaseInstanceActivationPolicy are ALWAYS, NEVER or ON_DEMAND."
  }
  default = "ALWAYS"
}

variable "CSCRAPFG_DatabaseInstanceAvailabilityType" {
  type = string
  validation {
    condition     = contains(["REGIONAL", "ZONAL"], var.CSCRAPFG_DatabaseInstanceAvailabilityType)
    error_message = "The only valid options for CSCRAPFG_DatabaseInstanceAvailabilityType are REGIONAL, ZONAL."
  }
  default = "ZONAL"
}

variable "CSCRAPFG_DatabaseInstanceCollation" {
  type    = string
  default = null
}

variable "CSCRAPFG_DatabaseInstanceDiskAutoresize" {
  type    = bool
  default = true
}

variable "CSCRAPFG_DatabaseInstanceDiskAutoresizeLimit" {
  type    = number
  default = 0
}

variable "CSCRAPFG_DatabaseInstanceDiskSize" {
  type    = number
  default = 10
}

variable "CSCRAPFG_DatabaseInstanceDiskType" {
  type = string
  validation {
    condition     = contains(["PD_SSD", "PD_HDD"], var.CSCRAPFG_DatabaseInstanceDiskType)
    error_message = "The only valid options for CSCRAPFG_DatabaseInstanceDiskType are REGIONAL, ZONAL."
  }
  default = "PD_SSD"
}

variable "CSCRAPFG_DatabaseInstanceAuthorizedNetworkIpRange" {
  type = string
}

variable "CSCRAPFG_DatabaseDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DELETE"], var.CSCRAPFG_DatabaseDeletionPolicy)
    error_message = "The only valid options for CSCRAPFG_DatabaseDeletionPolicy are 'ABANDON', 'DELETE'."
  }
}

variable "CSCRAPFG_DatabaseUserPassword" {
  type = string
}

variable "CSCRAPFG_DatabaseUserType" {
  type    = string
  default = "BUILT-IN"
}

variable "CSCRAPFG_DatabaseUserDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON"], var.CSCRAPFG_DatabaseUserDeletionPolicy)
    error_message = "Variable CSCRAPFG_DatabaseUserDeletionPolicy must be the value ABANDON or null"
  }
  default = "ABANDON"
}

variable "CSCRAPFG_DatabasePublicIpSecretVersionEnabled" {
  type    = bool
  default = true
}

variable "CSCRAPFG_DatabasePublicIpSecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.CSCRAPFG_DatabasePublicIpSecretVersionDeletionPolicy)
    error_message = "The only valid options for CSCRAPFG_DatabasePublicIpSecretVersionDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "CSCRAPFG_DatabaseUserNameSecretVersionEnabled" {
  type    = bool
  default = true
}

variable "CSCRAPFG_DatabaseUserNameSecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.CSCRAPFG_DatabaseUserNameSecretVersionDeletionPolicy)
    error_message = "The only valid options for CSCRAPFG_DatabaseUserNameSecretVersionDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "CSCRAPFG_DatabaseUserPasswordSecretVersionEnabled" {
  type    = bool
  default = true
}

variable "CSCRAPFG_DatabaseUserPasswordSecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.CSCRAPFG_DatabaseUserPasswordSecretVersionDeletionPolicy)
    error_message = "The only valid options for CSCRAPFG_DatabaseUserPasswordSecretVersionDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "CSCRAPFG_DatabaseNameSecretVersionEnabled" {
  type    = bool
  default = true
}

variable "CSCRAPFG_DatabaseNameSecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.CSCRAPFG_DatabaseNameSecretVersionDeletionPolicy)
    error_message = "The only valid options for CSCRAPFG_DatabaseNameSecretVersionDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "CSCRAPFG_CRDPFG_SecretVersionSecretData" {
  type = string
}

variable "CSCRAPFG_CRDPFG_SecretVersionEnabled" {
  type    = bool
  default = true
}

variable "CSCRAPFG_CRDPFG_SecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.CSCRAPFG_CRDPFG_SecretVersionDeletionPolicy)
    error_message = "The only valid options for CSCRAPFG_CRDPFG_SecretDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "CSCRAPFG__CloudBuildTriggerServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "CSCRAPFG__CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "CSCRAPFG_CloudBuildTriggerRoleId" {
  type = string
}

variable "CSCRAPFG__CloudBuildTriggerRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.CSCRAPFG__CloudBuildTriggerRoleStage)
    error_message = "Variable CSCRAPFG__RoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "CSCRAPFG__CloudBuildTriggerYamlPath" {
  type    = string
  default = "cloudbuild.yaml"
}

variable "CSCRAPFG_CloudBuildTriggerGithubRepoName" {
  type = string
}

variable "CSCRAPFG__CloudBuildTriggerBranchName" {
  type    = string
  default = "main"
}

variable "CSCRAPFG_CloudBuildTriggerArtifactRepoName" {
  type = string
}

variable "CSCRAPFG__CloudBuildTriggerBucketName" {
  type    = string
  default = "gs://dash_build_logs"
}

variable "CSCRAPFG__CloudRunConcurrentRequests" {
  type = number
  validation {
    condition     = var.CSCRAPFG__CloudRunConcurrentRequests >= 1 && var.CSCRAPFG__CloudRunConcurrentRequests <= 250
    error_message = "Variable CSCRAPFG__ConcurrentRequests must be greater than or equal to 1 and less than or equal to 250"
  }
  default = 80
}

variable "CSCRAPFG__CloudRunRequestsTimeout" {
  type = number
  validation {
    condition     = var.CSCRAPFG__CloudRunRequestsTimeout >= 1 && var.CSCRAPFG__CloudRunRequestsTimeout <= 3000
    error_message = "Variable CSCRAPFG__RequestsTimeout must be greater than or equal to 1 second and less than or equal to 900 seconds"
  }
  default = 300
}

variable "CSCRAPFG__CloudRunPortNumber" {
  type = number
  validation {
    condition     = var.CSCRAPFG__CloudRunPortNumber >= 1 && var.CSCRAPFG__CloudRunPortNumber <= 65535
    error_message = "Variable CSCRAPFG__PortNumber must be greater than 1 and less than 65335"
  }
  default = 8080
}

variable "CSCRAPFG__CloudRunMinInstances" {
  type = number
  validation {
    condition     = var.CSCRAPFG__CloudRunMinInstances >= 0
    error_message = "Variable CSCRAPFG__MinInstances must be greater than or equal to 0"
  }
  default = 0
}

variable "CSCRAPFG__CloudRunMaxInstances" {
  type = number
  validation {
    condition     = var.CSCRAPFG__CloudRunMaxInstances >= 1 && var.CSCRAPFG__CloudRunMaxInstances <= 10
    error_message = "Variable CSCRAPFG__MaxInstances must be greater than or equal to 1 instance or less than or equal to 10 instances"
  }
  default = 5
}

variable "CSCRAPFG__CloudRunVpcConnector" {
  type    = string
  default = "dash"
}

variable "CSCRAPFG__CloudRunNumberOfVcpus" {
  type = number
  validation {
    condition     = contains([1, 2, 4], var.CSCRAPFG__CloudRunNumberOfVcpus)
    error_message = "Variable CSCRAPFG__NumberOfVcpus must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "CSCRAPFG__CloudRunAmountOfMemory" {
  type = number
  validation {
    condition     = var.CSCRAPFG__CloudRunAmountOfMemory >= 1 && var.CSCRAPFG__CloudRunAmountOfMemory <= 16
    error_message = "Variable CSCRAPFG__AmountOfMemory must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "CSCRAPFG__CloudRunEnvVariableName" {
  type    = string
  default = "ENV_VARS"
}


#     _NEXTAUTH_SECRET   = var.nextAuthSecret
#     _SALT              = var.salt
#     _ENCRYPTION_KEY    = var.encryptionKey
#     _NEXTAUTH_URL      = var.nextAuthUrl
#     _DATABASE_HOST     = module.databaseDatabaseInstanceDatabaseUser.databaseInstancePublicIp
#     _DATABASE_USERNAME = module.databaseDatabaseInstanceDatabaseUser.databaseUserName
#     _DATABASE_PASSWORD = module.databaseDatabaseInstanceDatabaseUser.databaseUserPassword
#     _DATABASE_NAME     = module.databaseDatabaseInstanceDatabaseUser.databaseInstanceName
variable "CSCRAPFG__CloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}

variable "CSCRAPFG__CloudRunAlertPolicyNotificationChannelId" {
  type    = string
  default = "11762886701350469070"
}

variable "CSCRAPFG__CloudRunAlertPolicyNotificationRateLimit" {
  type    = string
  default = "600s"
}

variable "CSCRAPFG__CloudRunAlertPolicyAutoClose" {
  type    = string
  default = "604800s"
}