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
output "serviceAccountId" {
  value = module.cloudbuildTrigger.serviceAccountId
}

output "serviceAccountEmail" {
  value = module.cloudbuildTrigger.serviceAccountEmail
}

output "serviceAccountDisplayName" {
  value = module.cloudbuildTrigger.serviceAccountDisplayName
}

output "serviceAccountRoleId" {
  value = module.cloudbuildTrigger.serviceAccountRoleId
}

output "serviceAccountRoleName" {
  value = module.cloudbuildTrigger.serviceAccountRoleName
}

output "cloudBuildTriggerId" {
  value = module.cloudbuildTrigger.cloudBuildTriggerId
}

output "cloudBuildTriggerName" {
  value = module.cloudbuildTrigger.cloudBuildTriggerName
}

#---
output "CRDPFG_CloudRunAlertPolicyId" {
  value = module.cloudRunAlertPolicy.cloudRunAlertPolicyId
}

output "CRDPFG_CloudRunAlertPolicyName" {
  value = module.cloudRunAlertPolicy.cloudRunAlertPolicyName
}

# #---
# output "CRDPFG_CloudRunMemAlertPolicyId" {
#   value = module.cloudRunMemAlertPolicy.alertPolicyId
# }

# output "CRDPFG_CloudRunMemAlertPolicyName" {
#   value = module.cloudRunMemAlertPolicy.alertPolicyName
# }

# #---
# output "CRDPFG_CloudRunCpuAlertPolicyId" {
#   value = module.cloudRunCpuAlertPolicy.alertPolicyId
# }

# output "CRDPFG_CloudRunCpuAlertPolicyName" {
#   value = module.cloudRunCpuAlertPolicy.alertPolicyName
# }

# #---
