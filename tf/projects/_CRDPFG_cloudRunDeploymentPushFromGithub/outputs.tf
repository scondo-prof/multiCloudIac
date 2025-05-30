output "CRDPFG_SWSV_Cloudbuild_SecretId" {
  value = module.SWSV_Cloudbuild.SWSV_SecretId
}

output "CRDPFG_SWSV_Cloudbuild_SecretName" {
  value = module.SWSV_Cloudbuild.SWSV_SecretName
}

output "CRDPFG_SWSV_Cloudbuild_SecretCreateTime" {
  value = module.SWSV_Cloudbuild.SWSV_SecretCreateTime
}

output "CRDPFG_SWSV_Cloudbuild_SecretTerraformLabels" {
  value = module.SWSV_Cloudbuild.SWSV_SecretTerraformLabels
}

output "CRDPFG_SWSV_Cloudbuild_SecretEffectiveLabels" {
  value = module.SWSV_Cloudbuild.SWSV_SecretEffectiveLabels
}

output "CRDPFG_SWSV_Cloudbuild_SecretEffectiveAnnotations" {
  value = module.SWSV_Cloudbuild.SWSV_SecretEffectiveAnnotations
}


output "CRDPFG_SWSV_Cloudbuild_SecretVersionId" {
  value = module.SWSV_Cloudbuild.SWSV_SecretVersionId
}

output "CRDPFG_SWSV_Cloudbuild_SecretVersionName" {
  value = module.SWSV_Cloudbuild.SWSV_SecretVersionName
}

output "CRDPFG_SWSV_Cloudbuild_SecretVersionVersion" {
  value = module.SWSV_Cloudbuild.SWSV_SecretVersionVersion
}

output "CRDPFG_SWSV_Cloudbuild_SecretVersionCreateTime" {
  value = module.SWSV_Cloudbuild.SWSV_SecretVersionCreateTime
}

output "CRDPFG_SWSV_Cloudbuild_SecretVersionDestroyTime" {
  value = module.SWSV_Cloudbuild.SWSV_SecretVersionDestroyTime
}




#---
output "CRDPFG_ServiceAccountId" {
  value = module.cloudbuildTrigger.serviceAccountId
}

output "CRDPFG_ServiceAccountEmail" {
  value = module.cloudbuildTrigger.serviceAccountEmail
}

output "CRDPFG_ServiceAccountDisplayName" {
  value = module.cloudbuildTrigger.serviceAccountDisplayName
}

output "CRDPFG_ServiceAccountRoleId" {
  value = module.cloudbuildTrigger.serviceAccountRoleId
}

output "CRDPFG_ServiceAccountRoleName" {
  value = module.cloudbuildTrigger.serviceAccountRoleName
}

output "CRDPFG_CloudBuildTriggerId" {
  value = module.cloudbuildTrigger.cloudBuildTriggerId
}

output "CRDPFG_CloudBuildTriggerName" {
  value = module.cloudbuildTrigger.cloudBuildTriggerName
}

#---
output "CRDPFG_CloudRunLogsAlertPolicyId" {
  value = module.cloudRunLogsAlertPolicy.alertPolicyId
}

output "CRDPFG_CloudRunLogsAlertPolicyName" {
  value = module.cloudRunLogsAlertPolicy.alertPolicyName
}

#---
output "CRDPFG_CloudRunMemAlertPolicyId" {
  value = module.cloudRunMemAlertPolicy.alertPolicyId
}

output "CRDPFG_CloudRunMemAlertPolicyName" {
  value = module.cloudRunMemAlertPolicy.alertPolicyName
}

#---
output "CRDPFG_CloudRunCpuAlertPolicyId" {
  value = module.cloudRunCpuAlertPolicy.alertPolicyId
}

output "CRDPFG_CloudRunCpuAlertPolicyName" {
  value = module.cloudRunCpuAlertPolicy.alertPolicyName
}

#---
