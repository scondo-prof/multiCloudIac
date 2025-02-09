output "RWSA_iamRoleArn" {
  value = module.iamRole.iamRoleArn
}

output "RWSA_iamRoleName" {
  value = module.iamRole.iamRoleName
}

output "RWSA_SecretObtainPolicyArnArn" {
  value = module.secretObtainPolicy.iamPolicyArn
}

output "RWSA_SecretObtainPolicyArnName" {
  value = module.secretObtainPolicy.iamPolicyName
}