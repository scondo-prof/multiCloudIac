output "LFWLGSAR_LambdaFunctionArn" {
  value = module.lambdaFunction.lambdaFunctionArn
}

output "LFWLGSAR_LambdaFunctionInvokeArn" {
  value = module.lambdaFunction.lambdaFunctionInvokeArn
}

output "LFWLGSAR_LambdaFunctionName" {
  value = module.lambdaFunction.lambdaFunctionName
}

output "LFWLGSAR_LambdaFunctionSigningJobArn" {
  value = module.lambdaFunction.lambdaFunctionSigningJobArn
}

output "LFWLGSAR_LambdaFunctionQualifiedInvokeArn" {
  value = module.lambdaFunction.lambdaFunctionQualifiedInvokeArn
}

#---
output "LFWLGSAR_LambdaFunctionRoleName" {
  value = module.lambdaFunctionRole.iamRoleName
}

output "LFWLGSAR_LambdaFunctionRoleArn" {
  value = module.lambdaFunctionRole.iamRoleArn
}

#---
output "LFWLGSAR_LambdaGenericPolicyArn" {
  value = module.lambdaGenericPolicy.iamPolicyArn
}

output "LFWLGSAR_LambdaGenericPolicyName" {
  value = module.lambdaGenericPolicy.iamPolicyName
}

#---
output "LFWLGSAR_LambdaSecretArn" {
  value = module.lambdaSecret.secretArn
}

output "LFWLGSAR_LambdaSecretName" {
  value = module.lambdaSecret.secretName
}

#---
output "LFWLGSAR_LambdaSecretVersionId" {
  value = module.lambdaSecretVersion.secretVersionId
}

#---
output "LFWLGSAR_LambdaSecretPolicyArn" {
  value = module.lambdaSecretPolicy.iamPolicyArn
}

output "LFWLGSAR_LambdaSecretPolicyName" {
  value = module.lambdaSecretPolicy.iamPolicyName
}

#---
output "LFWLGSAR_LambdaLogGroupArn" {
  value = module.lambdaLogGroup.logGroupArn
}

output "LFWLGSAR_LambdaLogGroupName" {
  value = module.lambdaLogGroup.logGroupName
}

#---