output "passwordBcryptHash" {
  value = random_password.password.bcrypt_hash
  sensitive = true
}

output "passwordId" {
  value = random_password.password.id
}

output "passwordResult" {
  value = random_password.password.result
  sensitive = true
}