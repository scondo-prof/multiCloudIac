output "privateKeyId" {
  value = tls_private_key.privateKey.id
}

output "privateKeyOpenSsh" {
  value = tls_private_key.privateKey.private_key_openssh
  sensitive = true
}

output "privateKeyPrivateKeyPem" {
  value = tls_private_key.privateKey.private_key_pem
  sensitive = true
}

output "privateKeyPemPkcs8" {
  value = tls_private_key.privateKey.private_key_pem_pkcs8
  sensitive = true
}

output "privateKeyPublicKeyFingerprintMd5" {
  value = tls_private_key.privateKey.public_key_fingerprint_md5
}

output "privateKeyPublicKeyFingerprintSha256" {
  value = tls_private_key.privateKey.public_key_fingerprint_sha256
}

output "privateKeyPublicKeyOpenSsh" {
  value = tls_private_key.privateKey.public_key_openssh
}

output "privateKeyPublicKeyPem" {
  value = tls_private_key.privateKey.public_key_pem
}