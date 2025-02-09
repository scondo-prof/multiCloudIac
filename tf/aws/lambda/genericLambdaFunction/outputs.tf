output "lambdaFunctionArn" {
  value = aws_lambda_function.lambdaFunction.arn
}

output "lambdaFunctionInvokeArn" {
  value = aws_lambda_function.lambdaFunction.invoke_arn
}

output "lambdaFunctionName" {
  value = aws_lambda_function.lambdaFunction.function_name
}

output "lambdaFunctionSigningJobArn" {
  value = aws_lambda_function.lambdaFunction.signing_job_arn
}

output "lambdaFunctionQualifiedInvokeArn" {
  value = aws_lambda_function.lambdaFunction.qualified_invoke_arn
}