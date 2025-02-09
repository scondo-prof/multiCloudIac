output "codebuildProjectArn" {
  value = aws_codebuild_project.codebuildProject.arn
}

output "codebuildProjectBadgeUrl" {
  value = aws_codebuild_project.codebuildProject.badge_url
}

output "codebuildProjectName" {
  value = aws_codebuild_project.codebuildProject.name
}