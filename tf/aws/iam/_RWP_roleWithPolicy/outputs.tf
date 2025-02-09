output "RWP_IamRoleName" {
  value = module.iamRole.iamRoleName
}

output "RWP_IamRoleArn" {
  value = module.iamRole.iamRoleArn
}

#---
output "RWP_IamPolicyArn" {
  value = module.iamPolicy.iamPolicyArn
}

output "RWP_IamPolicyName" {
  value = module.iamPolicy.iamPolicyName
}
