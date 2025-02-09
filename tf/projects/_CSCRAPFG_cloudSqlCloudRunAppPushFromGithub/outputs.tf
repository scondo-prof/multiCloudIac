output "CSCRAPFG_NetworkId" {
  value = module.NWEIPN.NWEIPN_NetworkId
}

output "CSCRAPFG_NetworkName" {
  value = module.NWEIPN.NWEIPN_NetworkName
}

output "CSCRAPFG_SubnetworkId" {
  value = module.NWEIPN.NWEIPN_SubnetworkId
}

output "CSCRAPFG_SubnetworkName" {
  value = module.NWEIPN.NWEIPN_SubnetworkName
}

output "CSCRAPFG_FirewallIngressId" {
  value = module.NWEIPN.NWEIPN_FirewallIngressId
}

output "CSCRAPFG_FirewallIngressName" {
  value = module.NWEIPN.NWEIPN_FirewallIngressName
}

output "CSCRAPFG_FirewallEgressId" {
  value = module.NWEIPN.NWEIPN_FirewallEgressId
}

output "CSCRAPFG_FirewallEgressName" {
  value = module.NWEIPN.NWEIPN_FirewallEgressName
}

output "CSCRAPFG_NetworkAddressId" {
  value = module.NWEIPN.NWEIPN_NetworkAddressId
}

output "CSCRAPFG_NetworkAddressSelfLink" {
  value = module.NWEIPN.NWEIPN_NetworkAddressSelfLink
}

output "CSCRAPFG_NetworkAddressExternalIp" {
  value = module.NWEIPN.NWEIPN_NetworkAddressExternalIp
}

output "CSCRAPFG_NetworkRouterId" {
  value = module.NWEIPN.NWEIPN_NetworkRouterId
}

output "CSCRAPFG_NetworkRouterName" {
  value = module.NWEIPN.NWEIPN_NetworkRouterName
}

output "CSCRAPFG_NetworkRouterSelfLink" {
  value = module.NWEIPN.NWEIPN_NetworkRouterSelfLink
}

output "CSCRAPFG_NatId" {
  value = module.NWEIPN.NWEIPN_NatId
}

output "CSCRAPFG_NatName" {
  value = module.NWEIPN.NWEIPN_NatName
}

output "CSCRAPFG_VpcAccessConnectorId" {
  value = module.NWEIPN.NWEIPN_VpcAccessConnectorId
}

output "CSCRAPFG_VpcAccessConnectorName" {
  value = module.NWEIPN.NWEIPN_VpcAccessConnectorName
}

output "CSCRAPFG_VpcAccessConnectorSelfLink" {
  value = module.NWEIPN.NWEIPN_VpcAccessConnectorSelfLink
}

output "CSCRAPFG_DatabaseInstanceSelfLink" {
  value = module.CSDIU.CSDIU_DatabaseInstanceSelfLink
}

output "CSCRAPFG_DatabaseInstanceConnectionName" {
  value = module.CSDIU.CSDIU_DatabaseInstanceConnectionName
}

output "CSCRAPFG_DatabaseInstanceDnsName" {
  value = module.CSDIU.CSDIU_DatabaseInstanceDnsName
}

output "CSCRAPFG_DatabaseInstancePublicIp" {
  value = module.CSDIU.CSDIU_DatabaseInstancePublicIp
}

output "CSCRAPFG_DatabaseInstanceRootPassword" {
  value     = module.CSDIU.CSDIU_DatabaseInstanceRootPassword
  sensitive = true
}

output "CSCRAPFG_DatabaseInstanceName" {
  value = module.CSDIU.CSDIU_DatabaseInstanceName
}

output "CSCRAPFG_DatabaseId" {
  value = module.CSDIU.CSDIU_DatabaseId
}

output "CSCRAPFG_DatabaseSelfLink" {
  value = module.CSDIU.CSDIU_DatabaseSelfLink
}

output "CSCRAPFG_DatabaseName" {
  value = module.CSDIU.CSDIU_DatabaseName
}

output "CSCRAPFG_DatabaseUserName" {
  value = module.CSDIU.CSDIU_DatabaseUserName
}

output "CSCRAPFG_DatabaseUserPassword" {
  value     = module.CSDIU.CSDIU_DatabaseUserPassword
  sensitive = true
}

output "CSCRAPFG_DatabaseSecretId" {
  value = module.CSDIU.CSDIU_DatabaseSecretId
}

output "CSCRAPFG_DatabaseSecretName" {
  value = module.CSDIU.CSDIU_DatabaseSecretName
}

output "CSCRAPFG_DatabasePublicIpSecretVersionName" {
  value = module.CSDIU.CSDIU_DatabasePublicIpSecretVersionName
}

output "CSCRAPFG_DatabaseUserNameSecretVersionName" {
  value = module.CSDIU.CSDIU_DatabaseUserNameSecretVersionName
}

output "CSCRAPFG_DatabaseUserPasswordSecretVersionName" {
  value = module.CSDIU.CSDIU_DatabaseUserPasswordSecretVersionName
}

output "CSCRAPFG_DatabaseNameSecretVersionName" {
  value = module.databaseNameSecretVersion.CSDIU_DatabaseNameSecretVersionName
}

output "CSCRAPFG_CRDPFG_SecretId" {
  value = module.CRDPFG.CRDPFG_SecretId
}

output "CSCRAPFG_CRDPFG_SecretName" {
  value = module.CRDPFG.CRDPFG_SecretName
}

output "CSCRAPFG_CRDPFG_SecretVersionId" {
  value = module.CRDPFG.CRDPFG_SecretVersionId
}

output "CSCRAPFG_CRDPFG_SecretVersionName" {
  value = module.CRDPFG.CRDPFG_SecretVersionName
}

output "CSCRAPFG__ServiceAccountId" {
  value = module.CRDPFG.CRDPFG_CloudbuildTriggerServiceAccountId
}

output "CSCRAPFG__ServiceAccountEmail" {
  value = module.CRDPFG.CRDPFG_CloudbuildTriggerServiceAccountEmail
}

output "CSCRAPFG__ServiceAccountDisplayName" {
  value = module.CRDPFG.CRDPFG_CloudbuildTriggerServiceAccountDisplayName
}

output "CSCRAPFG__RoleId" {
  value = module.CRDPFG.CRDPFG_CloudbuildTriggerRoleId
}

output "CSCRAPFG__RoleName" {
  value = module.CRDPFG.CRDPFG_CloudbuildTriggerRoleName
}

output "CSCRAPFG__CloudBuildTriggerId" {
  value = module.CRDPFG.CRDPFG_CloudbuildTriggerId
}

output "CSCRAPFG__CloudBuildTriggerName" {
  value = module.CRDPFG.CRDPFG_CloudbuildTriggerName
}

output "CSCRAPFG__AlertPolicyId" {
  value = module.CRDPFG.CRDPFG_CloudRunAlertPolicyId
}

output "CSCRAPFG__AlertPolicyName" {
  value = module.CRDPFG.CRDPFG_CloudRunAlertPolicyName
}