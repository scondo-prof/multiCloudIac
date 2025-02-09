output "CRDPFG_SecretId" {
  value = module.secret.secretId
}

output "CRDPFG_SecretName" {
  value = module.secret.secretName
}

output "CRDPFG_SecretVersionName" {
  value = module.secret.secretVersionName
}

output "CRDPFG_SecretVersionId" {
  value = module.secret.secretVersionId
}

output "CRDPFG_CloudbuildTriggerServiceAccountId" {
  value = module.cloudBuildTrigger.serviceAccountId
}

output "CRDPFG_CloudbuildTriggerServiceAccountEmail" {
  value = module.cloudBuildTrigger.serviceAccountEmail
}

output "CRDPFG_CloudbuildTriggerServiceAccountDisplayName" {
  value = module.cloudBuildTrigger.serviceAccountDisplayName
}

output "CRDPFG_CloudbuildTriggerRoleId" {
  value = module.cloudBuildTrigger.serviceAccountRoleId
}

output "CRDPFG_CloudbuildTriggerRoleName" {
  value = module.cloudBuildTrigger.serviceAccountRoleName
}

output "CRDPFG_CloudbuildTriggerId" {
  value = module.cloudBuildTrigger.cloudBuildTriggerId
}

output "CRDPFG_CloudbuildTriggerName" {
  value = module.cloudBuildTrigger.cloudBuildTriggerName
}

output "CRDPFG_CloudRunAlertPolicyId" {
  value = module.cloudRunAlertPolicy.cloudRunAlertPolicyId
}

output "CRDPFG_CloudRunAlertPolicyName" {
  value = module.cloudRunAlertPolicy.cloudRunAlertPolicyName
}

#--

output "CRDPFG_CloudRunMemAlertPolicyId" {
  value = module.cloudRunMemAlertPolicy.alertPolicyId
}

output "CRDPFG_CloudRunMemAlertPolicyName" {
  value = module.cloudRunMemAlertPolicy.alertPolicyName
}

#--

output "CRDPFG_CloudRunCpuAlertPolicyId" {
  value = module.cloudRunCpuAlertPolicy.alertPolicyId
}

output "CRDPFG_CloudRunCpuAlertPolicyName" {
  value = module.cloudRunCpuAlertPolicy.alertPolicyName
}