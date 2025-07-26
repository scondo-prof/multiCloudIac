output "sg_arn" {
  value = var.create_sg ? aws_security_group.sg[0].arn : null
}

output "sg_id" {
  value = var.create_sg ? aws_security_group.sg[0].id : null
}

output "sg_owner_id" {
  value = var.create_sg ? aws_security_group.sg[0].owner_id : null
}

output "sg_tags_all" {
  value = var.create_sg ? aws_security_group.sg[0].tags_all : null
}