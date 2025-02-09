output "IUWPAKSMS_UWP_IamUserArn" {
  value = module.UWP.UWP_IamUserArn
}

output "IUWPAKSMS_UWP_IamUserName" {
  value = module.UWP.UWP_IamUserName
}

output "IUWPAKSMS_UWP_IamPolicyArn" {
  value = module.UWP.UWP_IamPolicyArn
}

output "IUWPAKSMS_UWP_IamPolicyName" {
  value = module.UWP.UWP_IamPolicyName
}

#---

output "IUWPAKSMS_IamAccessKeyEncryptedPgpSecret" {
  value     = module.iamAccessKey.iamAccessKeyEncryptedPgpSecret
  sensitive = true
}

output "IUWPAKSMS_IamAccessKeyId" {
  value = module.iamAccessKey.iamAccessKeyId
}

output "IUWPAKSMS_IamAccessKeySecret" {
  value     = module.iamAccessKey.iamAccessKeySecret
  sensitive = true
}

#---

output "IUWPAKSMS_SecretArn" {
  value = module.secret.secretArn
}

output "IUWPAKSMS_SecretName" {
  value = module.secret.secretName
}

#---

output "IUWPAKSMS_SecretVersionId" {
  value = module.secretVersion.secretVersionId
}