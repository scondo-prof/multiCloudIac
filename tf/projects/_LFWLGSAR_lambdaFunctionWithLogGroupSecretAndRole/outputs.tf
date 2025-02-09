output "LFWLGSAR_LambdaFunctionArn" {
  value = module.lambdaFunction.lambdaFunctionArn
}

output "LFWLGSAR_LambdaFunctionInvokeArn" {
  value = module.lambdaFunction.lambdaFunctionInvokeArn
}

output "LFWLGSAR_LambdaFunctionName" {
  value = module.lambdaFunction.lambdaFunctionName
}

output "LFWLGSAR_LambdaFunctionQualifiedInvokeArn" {
  value = module.lambdaFunction.lambdaFunctionQualifiedInvokeArn
}

output "LFWLGSAR_LambdaFunctionSigningJobArn" {
  value = module.lambdaFunction.lambdaFunctionSigningJobArn
}

#---

output "LFWLGSAR_LambdaFunctionRoleName" {
  value = module.lambdaFunctionRole.iamRoleName
}

output "LFWLGSAR_LambdaFunctionRoleArn" {
  value = module.lambdaFunctionRole.iamRoleArn
}

#---

output "LFWLGSAR_LambdaPolicyArn" {
  value = module.lambdaPolicy.iamPolicyArn
}

output "LFWLGSAR_LambdaPolicyName" {
  value = module.lambdaPolicy.iamPolicyName
}

#---

output "LFWLGSAR_SecretArn" {
  value = module.secret.secretArn
}

output "LFWLGSAR_SecretName" {
  value = module.secret.secretName
}

#---

output "LFWLGSAR_SecretVersionId" {
  value = module.secretVersion.secretVersionId
}

#---

output "LFWLGSAR_SecretPolicyArn" {
  value = module.secretPolicy.iamPolicyArn
}

output "LFWLGSAR_SecretPolicyName" {
  value = module.secretPolicy.iamPolicyName
}

#---

output "LFWLGSAR_LogGroupArn" {
  value = module.logGroup.logGroupArn
}

output "LFWLGSAR_LogGroupName" {
  value = module.logGroup.logGroupName
}