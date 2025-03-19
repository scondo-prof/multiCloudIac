output "SWSV_SecretId" {
  value = module.Secret.secretId
}

output "SWSV_SecretName" {
  value = module.Secret.secretName
}

output "SWSV_SecretCreateTime" {
  value = module.Secret.secretCreateTime
}

output "SWSV_SecretTerraformLabels" {
  value = module.Secret.secretTerraformLabels
}

output "SWSV_SecretEffectiveLabels" {
  value = module.Secret.secretEffectiveLabels
}

output "SWSV_SecretEffectiveAnnotations" {
  value = module.Secret.secretEffectiveAnnotations
}

#---
output "SWSV_SecretVersionId" {
  value = module.SecretVersion.secretVersionId
}

output "SWSV_SecretVersionName" {
  value = module.SecretVersion.secretVersionName
}

output "SWSV_SecretVersionVersion" {
  value = module.SecretVersion.secretVersionVersion
}

output "SWSV_SecretVersionCreateTime" {
  value = module.SecretVersion.secretVersionCreateTime
}

output "SWSV_SecretVersionDestroyTime" {
  value = module.SecretVersion.secretVersionDestroyTime
}

#---
