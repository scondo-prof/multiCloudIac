output "ecrRepositoryArn" {
  value = aws_ecr_repository.ecrRepository.arn
}

output "ecrRepositoryName" {
  value = aws_ecr_repository.ecrRepository.name
}

output "ecrRepositoryUrl" {
  value = aws_ecr_repository.ecrRepository.repository_url
}