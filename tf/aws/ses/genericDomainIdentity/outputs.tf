output "domainIdentityArn" {
  value = aws_ses_domain_identity.domainIdentity.arn
}

output "domainIdentityVerificationToken" {
  value = aws_ses_domain_identity.domainIdentity.verification_token
}