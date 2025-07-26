output "private_key_id" {
  value = var.create_key_pair ? tls_private_key.private_key[0].id : null
}

output "private_key_private_key_openssh" {
  value     = var.create_key_pair ? tls_private_key.private_key[0].private_key_openssh : null
  sensitive = true
}

output "private_key_private_key_pem" {
  value     = var.create_key_pair ? tls_private_key.private_key[0].private_key_pem : null
  sensitive = true
}

output "private_key_private_key_pem_pkcs8" {
  value     = var.create_key_pair ? tls_private_key.private_key[0].private_key_pem_pkcs8 : null
  sensitive = true
}

output "private_key_public_key_fingerprint_md5" {
  value     = var.create_key_pair ? tls_private_key.private_key[0].public_key_fingerprint_md5 : null
  sensitive = true
}

output "private_key_public_key_fingerprint_sha256" {
  value     = var.create_key_pair ? tls_private_key.private_key[0].public_key_fingerprint_sha256 : null
  sensitive = true
}

output "private_key_public_key_openssh" {
  value     = var.create_key_pair ? tls_private_key.private_key[0].public_key_openssh : null
  sensitive = true
}

output "private_key_public_key_pem" {
  value     = var.create_key_pair ? tls_private_key.private_key[0].public_key_pem : null
  sensitive = true
}

###

output "key_pair_id" {
  value = var.create_key_pair ? aws_key_pair.key_pair[0].id : null
}

output "key_pair_arn" {
  value = var.create_key_pair ? aws_key_pair.key_pair[0].arn : null
}

output "key_pair_key_name" {
  value = var.create_key_pair ? aws_key_pair.key_pair[0].key_name : null
}

output "key_pair_key_pair_id" {
  value = var.create_key_pair ? aws_key_pair.key_pair[0].key_pair_id : null
}

output "key_pair_key_type" {
  value = var.create_key_pair ? aws_key_pair.key_pair[0].key_type : null
}

output "key_pair_fingerprint" {
  value = var.create_key_pair ? aws_key_pair.key_pair[0].fingerprint : null
}

output "key_pair_tags_all" {
  value = var.create_key_pair ? aws_key_pair.key_pair[0].tags_all : null
}