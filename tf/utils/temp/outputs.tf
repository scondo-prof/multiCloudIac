output "private_key_id" {
  value = module.key_pair.private_key_id
}

output "private_key_private_key_openssh" {
  value     = module.key_pair.private_key_private_key_openssh
  sensitive = true
}

output "private_key_private_key_pem" {
  value     = module.key_pair.private_key_private_key_pem
  sensitive = true
}

output "private_key_private_key_pem_pkcs8" {
  value     = module.key_pair.private_key_private_key_pem_pkcs8
  sensitive = true
}

output "private_key_public_key_fingerprint_md5" {
  value     = module.key_pair.private_key_public_key_fingerprint_md5
  sensitive = true
}

output "private_key_public_key_fingerprint_sha256" {
  value     = module.key_pair.private_key_public_key_fingerprint_sha256
  sensitive = true
}

output "private_key_public_key_openssh" {
  value     = module.key_pair.private_key_public_key_openssh
  sensitive = true
}

output "private_key_public_key_pem" {
  value     = module.key_pair.private_key_public_key_pem
  sensitive = true
}

###

output "key_pair_id" {
  value = module.key_pair.key_pair_id
}

output "key_pair_arn" {
  value = module.key_pair.key_pair_arn
}

output "key_pair_key_name" {
  value = module.key_pair.key_pair_key_name
}

output "key_pair_key_pair_id" {
  value = module.key_pair.key_pair_key_pair_id
}

output "key_pair_key_type" {
  value = module.key_pair.key_pair_key_type
}

output "key_pair_fingerprint" {
  value = module.key_pair.key_pair_fingerprint
}

output "key_pair_tags_all" {
  value = module.key_pair.key_pair_tags_all
}

#---
output "sg_arn" {
  value = module.sg.sg_arn
}

output "sg_id" {
  value = module.sg.sg_id
}

output "sg_owner_id" {
  value = module.sg.sg_owner_id
}

output "sg_tags_all" {
  value = module.sg.sg_tags_all
}

#---
output "role_arn" {
  value = module.role.role_arn
}

output "role_create_date" {
  value = module.role.role_create_date
}

output "role_id" {
  value = module.role.role_id
}

output "role_name" {
  value = module.role.role_name
}

output "role_tags_all" {
  value = module.role.role_tags_all
}

output "role_unique_id" {
  value = module.role.role_unique_id
}

#---
output "policy_arn" {
  value = module.policy.policy_arn
}

output "policy_attachment_count" {
  value = module.policy.policy_attachment_count
}

output "policy_id" {
  value = module.policy.policy_id
}

output "policy_policy_id" {
  value = module.policy.policy_policy_id
}

output "policy_tags_all" {
  value = module.policy.policy_tags_all
}

#---
output "pa_id" {
  value = module.pa.pa_id
}

output "pa_name" {
  value = module.pa.pa_name
}

#---
output "instance_arn" {
  value = module.instance.instance_arn
}

output "instance_id" {
  value = module.instance.instance_id
}

output "instance_instance_state" {
  value = module.instance.instance_instance_state
}

output "instance_outpost_arn" {
  value = module.instance.instance_outpost_arn
}

output "instance_password_data" {
  value     = module.instance.instance_password_data
  sensitive = true
}

output "instance_primary_network_interface_id" {
  value = module.instance.instance_primary_network_interface_id
}

output "instance_private_dns" {
  value = module.instance.instance_private_dns
}

output "instance_public_dns" {
  value = module.instance.instance_public_dns
}

output "instance_public_ip" {
  value = module.instance.instance_public_ip
}

output "instance_tags_all" {
  value = module.instance.instance_tags_all
}

#---
output "secret_id" {
  value = module.secret.secret_id
}

output "secret_arn" {
  value = module.secret.secret_arn
}

output "secret_replica" {
  value = module.secret.secret_replica
}

output "secret_tags_all" {
  value = module.secret.secret_tags_all
}

#---
output "secret_version_arn" {
  value = module.secret_version.secret_version_arn
}

output "secret_version_id" {
  value = module.secret_version.secret_version_id
}

output "secret_version_version_id" {
  value = module.secret_version.secret_version_version_id
}

#---
