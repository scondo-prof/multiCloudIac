provider "google" {
  project = var.projectId
  region  = var.gcpRegion
}


module "NWEIPN" {
  source = "../../gcp/googleComputeNetwork/_NWEIPN_networkWithExternalIpNat"

  projectId                                  = var.projectId
  region                                     = var.gcpRegion
  resourceName                               = var.resourceName
  NWEIPN_NetworkAutoCreateSubNetworks        = var.CSCRAPFG_NetworkAutoCreateSubNetworks
  NWEIPN_NetworkRoutingMode                  = var.CSCRAPFG_NetworkRoutingMode
  NWEIPN_NetworkMaximumTransmissionUnitBytes = var.CSCRAPFG_NetworkMaximumTransmissionUnitBytes
  NWEIPN_NetworkDeleteDefaultRoutesOnCreate  = var.CSCRAPFG_NetworkDeleteDefaultRoutesOnCreate
  NWEIPN_SubnetworkIpCidrRange               = var.CSCRAPFG_SubnetworkIpCidrRange
  NWEIPN_FirewallIngressRules                = var.CSCRAPFG_FirewallIngressRules
  NWEIPN_FirewallIngressDisabled             = var.CSCRAPFG_FirewallIngressDisabled
  NWEIPN_FirewallIngressPriority             = var.CSCRAPFG_FirewallIngressPriority
  NWEIPN_FirewallIngressSourceRanges         = var.CSCRAPFG_FirewallIngressSourceRanges
  NWEIPN_FirewallEgressRules                 = var.CSCRAPFG_FirewallEgressRules
  NWEIPN_FirewallEgressDisabled              = var.CSCRAPFG_FirewallEgressDisabled
  NWEIPN_FirewallEgressPriority              = var.CSCRAPFG_FirewallEgressPriority
  NWEIPN_FirewallEgressSourceRanges          = var.CSCRAPFG_FirewallEgressSourceRanges
  NWEIPN_NetworkAddressAddress               = var.CSCRAPFG_NetworkAddressAddress
  NWEIPN_NetworkAddressType                  = var.CSCRAPFG_NetworkAddressType
  NWEIPN_NetworkAddressNetworkTier           = var.CSCRAPFG_NetworkAddressNetworkTier
  NWEIPN_NetworkRouterNetworkName            = var.CSCRAPFG_NetworkRouterNetworkName
  NWEIPN_NatSourceSubnetworkIpRangesToNat    = var.CSCRAPFG_NatSourceSubnetworkIpRangesToNat
  NWEIPN_NatMinPortsPerVm                    = var.CSCRAPFG_NatMinPortsPerVm
  NWEIPN_VpcAccessConnectorMachineType       = var.CSCRAPFG_VpcAccessConnectorMachineType
  NWEIPN_VpcAccessConnectorMinInstances      = var.CSCRAPFG_VpcAccessConnectorMinInstances
  NWEIPN_VpcAccessConnectorMaxInstances      = var.CSCRAPFG_VpcAccessConnectorMaxInstances
}
module "CSDIU" {
  source = "../../gcp/googleCloudSql/_CSDIU_cloudSqlDatabaseInstanceUser"

  projectId                                             = var.projectId
  gcpRegion                                             = var.gcpRegion
  resourceName                                          = var.resourceName
  CSDIU_DatabaseInstanceDatabaseVersion                 = var.CSCRAPFG_DatabaseInstanceDatabaseVersion
  CSDIU_DatabaseInstanceRootPassword                    = var.CSCRAPFG_DatabaseInstanceRootPassword
  CSDIU_DatabaseInstanceDeletionProtection              = var.CSCRAPFG_DatabaseInstanceDeletionProtection
  CSDIU_DatabaseInstanceTier                            = var.CSCRAPFG_DatabaseInstanceTier
  CSDIU_DatabaseInstanceEdition                         = var.CSCRAPFG_DatabaseInstanceEdition
  projectName                                           = var.projectName
  deployedDate                                          = var.deployedDate
  createdBy                                             = var.createdBy
  CSDIU_DatabaseInstanceActivationPolicy                = var.CSCRAPFG_DatabaseInstanceActivationPolicy
  CSDIU_DatabaseInstanceAvailabilityType                = var.CSCRAPFG_DatabaseInstanceAvailabilityType
  CSDIU_DatabaseInstanceCollation                       = var.CSCRAPFG_DatabaseInstanceCollation
  CSDIU_DatabaseInstanceDiskAutoresize                  = var.CSCRAPFG_DatabaseInstanceDiskAutoresize
  CSDIU_DatabaseInstanceDiskAutoresizeLimit             = var.CSCRAPFG_DatabaseInstanceDiskAutoresizeLimit
  CSDIU_DatabaseInstanceDiskSize                        = var.CSCRAPFG_DatabaseInstanceDiskSize
  CSDIU_DatabaseInstanceDiskType                        = var.CSCRAPFG_DatabaseInstanceDiskType
  CSDIU_DatabaseInstanceAuthorizedNetworkIpRange        = var.CSCRAPFG_DatabaseInstanceAuthorizedNetworkIpRange
  CSDIU_DatabaseDeletionPolicy                          = var.CSCRAPFG_DatabaseDeletionPolicy
  CSDIU_DatabaseUserPassword                            = var.CSCRAPFG_DatabaseUserPassword
  CSDIU_DatabaseUserType                                = var.CSCRAPFG_DatabaseUserType
  CSDIU_DatabaseUserDeletionPolicy                      = var.CSCRAPFG_DatabaseUserDeletionPolicy
  CSDIU_DatabasePublicIpSecretVersionEnabled            = var.CSCRAPFG_DatabasePublicIpSecretVersionEnabled
  CSDIU_DatabasePublicIpSecretVersionDeletionPolicy     = var.CSCRAPFG_DatabasePublicIpSecretVersionDeletionPolicy
  CSDIU_DatabaseUserNameSecretVersionEnabled            = var.CSCRAPFG_DatabaseUserNameSecretVersionEnabled
  CSDIU_DatabaseUserNameSecretVersionDeletionPolicy     = var.CSCRAPFG_DatabaseUserNameSecretVersionDeletionPolicy
  CSDIU_DatabaseUserPasswordSecretVersionEnabled        = var.CSCRAPFG_DatabaseUserPasswordSecretVersionEnabled
  CSDIU_DatabaseUserPasswordSecretVersionDeletionPolicy = var.CSCRAPFG_DatabaseUserPasswordSecretVersionDeletionPolicy
  CSDIU_DatabaseNameSecretVersionEnabled                = var.CSCRAPFG_DatabaseNameSecretVersionEnabled
  CSDIU_DatabaseNameSecretVersionDeletionPolicy         = var.CSCRAPFG_DatabaseNameSecretVersionDeletionPolicy
}

module "CRDPFG" {
  source = "../_CRDPFG_cloudRunDeploymentPushFromGithub"

  projectId                                                       = var.projectId
  gcpRegion                                                       = var.gcpRegion
  resourceName                                                    = var.resourceName
  projectName                                                     = var.projectName
  deployedDate                                                    = var.deployedDate
  createdBy                                                       = var.createdBy
  CRDPFG_SecretVersionSecretData                                  = var.CSCRAPFG_CRDPFG_SecretVersionSecretData
  CRDPFG_SecretVersionEnabled                                     = var.CSCRAPFG_CRDPFG_SecretVersionEnabled
  CRDPFG_SecretVersionDeletionPolicy                              = var.CSCRAPFG_CRDPFG_SecretVersionDeletionPolicy
  CRDPFG_CloudBuildTriggerServiceAccountAccountId                 = "${var.resourceName}-prod"
  CRDPFG_CloudBuildTriggerServiceAccountDisabled                  = var.CSCRAPFG__CloudBuildTriggerServiceAccountDisabled
  CRDPFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists = var.CSCRAPFG__CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists
  CRDPFG_CloudBuildTriggerRoleId                                  = "${var.CSCRAPFG_CloudBuildTriggerRoleId}Prod"
  CRDPFG_CloudBuildTriggerRoleStage                               = var.CSCRAPFG__CloudBuildTriggerRoleStage
  CRDPFG_CloudBuildTriggerYamlPath                                = var.CSCRAPFG__CloudBuildTriggerYamlPath
  CRDPFG_CloudBuildTriggerGithubRepoName                          = var.CSCRAPFG_CloudBuildTriggerGithubRepoName
  CRDPFG_CloudBuildTriggerBranchName                              = var.CSCRAPFG__CloudBuildTriggerBranchName
  CRDPFG_CloudBuildTriggerArtifactRepoName                        = var.CSCRAPFG_CloudBuildTriggerArtifactRepoName
  CRDPFG_CloudBuildTriggerBucketName                              = var.CSCRAPFG__CloudBuildTriggerBucketName
  CRDPFG_CloudRunConcurrentRequests                               = var.CSCRAPFG__CloudRunConcurrentRequests
  CRDPFG_CloudRunRequestsTimeout                                  = var.CSCRAPFG__CloudRunRequestsTimeout
  CRDPFG_CloudRunPortNumber                                       = var.CSCRAPFG__CloudRunPortNumber
  CRDPFG_CloudRunMinInstances                                     = var.CSCRAPFG__CloudRunMinInstances
  CRDPFG_CloudRunMaxInstances                                     = var.CSCRAPFG__CloudRunMaxInstances
  CRDPFG_CloudRunVpcConnector                                     = module.NWEIPN.NWEIPN_VpcAccessConnectorName #module.networkWithExternalIpNat.vpcAccessConnectorName
  CRDPFG_CloudRunNumberOfVcpus                                    = var.CSCRAPFG__CloudRunNumberOfVcpus
  CRDPFG_CloudRunAmountOfMemory                                   = var.CSCRAPFG__CloudRunAmountOfMemory
  CRDPFG_CloudRunEnvVariableName                                  = var.CSCRAPFG__CloudRunEnvVariableName
  CRDPFG_CloudBuildTriggerAdditionalSubstitutions                 = var.CSCRAPFG__CloudBuildTriggerAdditionalSubstitutions
  CRDPFG_CloudRunAlertPolicyNotificationChannelId                 = var.CSCRAPFG__CloudRunAlertPolicyNotificationChannelId
  CRDPFG_CloudRunAlertPolicyNotificationRateLimit                 = var.CSCRAPFG__CloudRunAlertPolicyNotificationRateLimit
  CRDPFG_CloudRunAlertPolicyAutoClose                             = var.CSCRAPFG__CloudRunAlertPolicyAutoClose
}