output "igArn" {
  value = aws_internet_gateway.ig.arn
}

output "igId" {
  value = aws_internet_gateway.ig.id
}

output "igOwnerId" {
  value = aws_internet_gateway.ig.owner_id
}

output "igTagsAll" {
  value = aws_internet_gateway.ig.tags_all
}