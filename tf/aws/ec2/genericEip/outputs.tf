output "eipAllocationId" {
  value = aws_eip.eip.allocation_id
}

output "eipAssociationId" {
  value = aws_eip.eip.association_id
}

output "eipId" {
  value = aws_eip.eip.id
}

output "eipPublicIp" {
  value = aws_eip.eip.public_ip
}