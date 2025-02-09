output "UWP_IamUserArn" {
  value = module.iamUser.iamUserArn
}

output "UWP_IamUserName" {
  value = module.iamUser.iamUserName
}

#---

output "UWP_IamPolicyArn" {
  value = module.iamPolicy.iamPolicyArn
}

output "UWP_IamPolicyName" {
  value = module.iamPolicy.iamPolicyName
}