output "instance_arn" {
  value = aws_instance.instance.arn
}

output "instance_id" {
  value = aws_instance.instance.id
}

output "instance_instance_state" {
  value = aws_instance.instance.instance_state
}

output "instance_outpost_arn" {
  value = aws_instance.instance.outpost_arn
}

output "instance_password_data" {
  value     = aws_instance.instance.password_data
  sensitive = true
}

output "instance_primary_network_interface_id" {
  value = aws_instance.instance.primary_network_interface_id
}

output "instance_private_dns" {
  value = aws_instance.instance.private_dns
}

output "instance_public_dns" {
  value = aws_instance.instance.public_dns
}

output "instance_public_ip" {
  value = aws_instance.instance.public_ip
}

output "instance_tags_all" {
  value = aws_instance.instance.tags_all
}