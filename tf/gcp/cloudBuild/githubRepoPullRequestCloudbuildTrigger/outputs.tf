output "serviceAccountId" {
  value = module.serviceAccount.serviceAccountId
}

output "serviceAccountEmail" {
  value = module.serviceAccount.serviceAccountEmail
}

output "serviceAccountDisplayName" {
  value = module.serviceAccount.serviceAccountDisplayName
}

output "serviceAccountRoleId" {
  value = module.serviceAccount.roleId
}

output "serviceAccountRoleName" {
  value = module.serviceAccount.roleName
}

output "cloudBuildTriggerId" {
  value = google_cloudbuild_trigger.cloudBuildTrigger.id
}

output "cloudBuildTriggerName" {
  value = google_cloudbuild_trigger.cloudBuildTrigger.name
}