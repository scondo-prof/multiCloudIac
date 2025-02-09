output "CRDPRFG_SecretId" {
  value = module.secretWithSecretVersion.secretId
}

output "CRDPRFG_SecretName" {
  value = module.secretWithSecretVersion.secretName
}

output "CRDPRFG_SecretVersionName" {
  value = module.secretWithSecretVersion.secretVersionName
}

output "CRDPRFG_SecretVersionId" {
  value = module.secretWithSecretVersion.secretVersionId
}

output "CRDPRFG_CloudBuildTriggerServiceAccountId" {
  value = module.cloudBuildTrigger.serviceAccountId
}

output "CRDPRFG_CloudBuildTriggerServiceAccountEmail" {
  value = module.cloudBuildTrigger.serviceAccountEmail
}

output "CRDPRFG_CloudBuildTriggerServiceAccountDisplayName" {
  value = module.cloudBuildTrigger.serviceAccountDisplayName
}

output "CRDPRFG_CloudBuildTriggerRoleId" {
  value = module.cloudBuildTrigger.serviceAccountRoleId
}

output "CRDPRFG_CloudBuildTriggerRoleName" {
  value = module.cloudBuildTrigger.serviceAccountRoleName
}

output "CRDPRFG_CloudBuildTriggerId" {
  value = module.cloudBuildTrigger.cloudBuildTriggerId
}

output "CRDPRFG_CloudBuildTriggerName" {
  value = module.cloudBuildTrigger.cloudBuildTriggerName
}

output "CRDPRFG_CloudRunAlertPolicyId" {
  value = module.cloudRunAlertPolicy.cloudRunAlertPolicyId
}

output "CRDPRFG_CloudRunAlertPolicyName" {
  value = module.cloudRunAlertPolicy.cloudRunAlertPolicyName
}

#--

output "CRDPRFG_CloudRunMemAlertPolicyId" {
  value = module.cloudRunMemAlertPolicy.alertPolicyId
}

output "CRDPRFG_CloudRunMemAlertPolicyName" {
  value = module.cloudRunMemAlertPolicy.alertPolicyName
}

#--

output "CRDPRFG_CloudRunCpuAlertPolicyId" {
  value = module.cloudRunCpuAlertPolicy.alertPolicyId
}

output "CRDPRFG_CloudRunCpuAlertPolicyName" {
  value = module.cloudRunCpuAlertPolicy.alertPolicyName
}