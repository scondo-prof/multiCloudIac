output "iamAccessKeyEncryptedPgpSecret" {
  value     = aws_iam_access_key.iamAccessKey.encrypted_secret
  sensitive = true
}

output "iamAccessKeyId" {
  value = aws_iam_access_key.iamAccessKey.id
}

output "iamAccessKeySecret" {
  value     = aws_iam_access_key.iamAccessKey.secret
  sensitive = true
}