output "CARARAA_AzureAdResourceApplicationIdUris" {
  value = module.azureAdResourceApplication.azureAdApplicationIdUris
}

output "CARARAA_AzureAdResourceApplicationObjectId" {
  value = module.azureAdResourceApplication.azureAdApplicationObjectId
}

output "CARARAA_AzureAdResourceApplicationClientId" {
  value = module.azureAdResourceApplication.azureAdApplicationClientId
}

#---
output "CARARAA_AzureAdClientApplicationIdUris" {
  value = module.azureAdClientApplication.azureAdApplicationIdUris
}

output "CARARAA_AzureAdClientApplicationObjectId" {
  value = module.azureAdClientApplication.azureAdApplicationObjectId
}

output "CARARAA_AzureAdClientApplicationClientId" {
  value = module.azureAdClientApplication.azureAdApplicationClientId
}

#---
output "CARARAA_AzureAdResourceApplicationPermissionScopeId" {
  value = module.azureAdResourceApplicationPermissionScope.azureAdApplicationPermissionScopeId
}

#---

output "CARARAA_AzureAdClientApplicationPasswordKeyId" {
  value = module.azureAdClientApplicationPassword.azureAdApplicationPasswordKeyId
}

output "CARARAA_AzureAdClientApplicationPasswordValue" {
  value     = module.azureAdClientApplicationPassword.azureAdApplicationPasswordValue
  sensitive = true
}