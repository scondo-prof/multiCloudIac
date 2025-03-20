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
output "CECC_CodebuildCredentialsArn" {
  value = module.codebuildCredentials.credentialsArn
}

#---
output "CECC_CodebuildWebhookPayloadUrl" {
  value = module.codebuildWebhook.webhookPayloadUrl
}

output "CECC_CodebuildWebhookUrl" {
  value = module.codebuildWebhook.webhookUrl
}

#---
output "CECC_CodebuildRoleName" {
  value = module.codebuildRole.iamRoleName
}

output "CECC_CodebuildRoleArn" {
  value = module.codebuildRole.iamRoleArn
}

#---
output "CECC_CodebuildRolePolicyArn" {
  value = module.codebuildRolePolicy.iamPolicyArn
}

output "CECC_CodebuildRolePolicyName" {
  value = module.codebuildRolePolicy.iamPolicyName
}

#---
output "CECC_CodebuildLogGroupArn" {
  value = module.codebuildLogGroup.logGroupArn
}

output "CECC_CodebuildLogGroupName" {
  value = module.codebuildLogGroup.logGroupName
}

#---
None

#---
output "CECC_CodebuildRoleEcrPolicyArn" {
  value = module.codebuildRoleEcrPolicy.iamPolicyArn
}

output "CECC_CodebuildRoleEcrPolicyName" {
  value = module.codebuildRoleEcrPolicy.iamPolicyName
}

#---
None

#---
