output "CRDPRFG_SWSV_SecretId" {
  value = module.SWSV.SWSV_SecretId
}

output "CRDPRFG_SWSV_SecretName" {
  value = module.SWSV.SWSV_SecretName
}

output "CRDPRFG_SWSV_SecretCreateTime" {
  value = module.SWSV.SWSV_SecretCreateTime
}

output "CRDPRFG_SWSV_SecretTerraformLabels" {
  value = module.SWSV.SWSV_SecretTerraformLabels
}

output "CRDPRFG_SWSV_SecretEffectiveLabels" {
  value = module.SWSV.SWSV_SecretEffectiveLabels
}

output "CRDPRFG_SWSV_SecretEffectiveAnnotations" {
  value = module.SWSV.SWSV_SecretEffectiveAnnotations
}


output "CRDPRFG_SWSV_SecretVersionId" {
  value = module.SWSV.SWSV_SecretVersionId
}

output "CRDPRFG_SWSV_SecretVersionName" {
  value = module.SWSV.SWSV_SecretVersionName
}

output "CRDPRFG_SWSV_SecretVersionVersion" {
  value = module.SWSV.SWSV_SecretVersionVersion
}

output "CRDPRFG_SWSV_SecretVersionCreateTime" {
  value = module.SWSV.SWSV_SecretVersionCreateTime
}

output "CRDPRFG_SWSV_SecretVersionDestroyTime" {
  value = module.SWSV.SWSV_SecretVersionDestroyTime
}




#---
output "serviceAccountId" {
  value = module.cloudBuildTrigger.serviceAccountId
}

output "serviceAccountEmail" {
  value = module.cloudBuildTrigger.serviceAccountEmail
}

output "serviceAccountDisplayName" {
  value = module.cloudBuildTrigger.serviceAccountDisplayName
}

output "serviceAccountRoleId" {
  value = module.cloudBuildTrigger.serviceAccountRoleId
}

output "serviceAccountRoleName" {
  value = module.cloudBuildTrigger.serviceAccountRoleName
}

output "CRDPRFG_CloudBuildTriggerId" {
  value = module.cloudBuildTrigger.cloudBuildTriggerId
}

output "CRDPRFG_CloudBuildTriggerName" {
  value = module.cloudBuildTrigger.cloudBuildTriggerName
}

#---
output "CRDPRFG_AlertPolicyCloudRunAppLogsId" {
  value = module.alertPolicyCloudRunAppLogs.alertPolicyId
}

output "CRDPRFG_AlertPolicyCloudRunAppLogsName" {
  value = module.alertPolicyCloudRunAppLogs.alertPolicyName
}

#---
output "CRDPRFG_AlertPolicyCloudRunAppCpuUsageId" {
  value = module.alertPolicyCloudRunAppCpuUsage.alertPolicyId
}

output "CRDPRFG_AlertPolicyCloudRunAppCpuUsageName" {
  value = module.alertPolicyCloudRunAppCpuUsage.alertPolicyName
}

#---
output "CRDPRFG_AlertPolicyCloudRunAppMemUsageId" {
  value = module.alertPolicyCloudRunAppMemUsage.alertPolicyId
}

output "CRDPRFG_AlertPolicyCloudRunAppMemUsageName" {
  value = module.alertPolicyCloudRunAppMemUsage.alertPolicyName
}

#---
