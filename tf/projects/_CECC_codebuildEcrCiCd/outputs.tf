output "CECC_EcrRepositoryArn" {
  value = module.ecrRepository.ecrRepositoryArn
}

output "CECC_EcrRepositoryName" {
  value = module.ecrRepository.ecrRepositoryName
}

output "CECC_EcrRepositoryUrl" {
  value = module.ecrRepository.ecrRepositoryUrl
}

#---

output "CECC_CodebuildProjectArn" {
  value = module.codebuildProject.codebuildProjectArn
}

output "CECC_CodebuildProjectBadgeUrl" {
  value = module.codebuildProject.codebuildProjectBadgeUrl
}

output "CECC_CodebuildProjectName" {
  value = module.codebuildProject.codebuildProjectName
}

#---

output "CECC_CredentialsArn" {
  value = module.credentials.credentialsArn
}

#---

output "CECC_WebhookPayloadUrl" {
  value = module.webhook.webhookPayloadUrl
}

output "CECC_WebhookUrl" {
  value = module.webhook.webhookUrl
}

#---

output "CECC_CodebuildRoleArn" {
  value = module.codebuildRole.iamRoleArn
}

output "CECC_CodebuildRoleName" {
  value = module.codebuildRole.iamRoleName
}

#---

output "CECC_CodebuildPolicyArn" {
  value = module.codebuildPolicy.iamPolicyArn
}

output "CECC_CodebuildPolicyName" {
  value = module.codebuildPolicy.iamPolicyName
}

#---

output "CECC_LogGroupArn" {
  value = module.logGroup.logGroupArn
}

output "CECC_LogGroupName" {
  value = module.logGroup.logGroupName
}

#---

output "CECC_EcrAccessPolicyArn" {
  value = module.ecrAccessPolicy.iamPolicyArn
}

output "CECC_EcrAccessPolicyName" {
  value = module.ecrAccessPolicy.iamPolicyName
}