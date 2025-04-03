output "IRIPSB_BWV_S3BucketArn" {
  value = module.BWV.BWV_S3BucketArn
}

output "IRIPSB_BWV_S3BucketName" {
  value = module.BWV.BWV_S3BucketName
}

#---
output "IRIPSB_IamRoleName" {
  value = module.iamRole.iamRoleName
}

output "IRIPSB_IamRoleArn" {
  value = module.iamRole.iamRoleArn
}

#---
output "IRIPSB_IamPolicyArn" {
  value = module.iamPolicy.iamPolicyArn
}

output "IRIPSB_IamPolicyName" {
  value = module.iamPolicy.iamPolicyName
}

#---
