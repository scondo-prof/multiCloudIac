output "subnetArn" {
  value = aws_subnet.subnet.arn
}

output "subnetCidrBlock" {
  value = aws_subnet.subnet.cidr_block
}

output "subnetIpv6CidrBlockAssociationId" {
  value = aws_subnet.subnet.ipv6_cidr_block_association_id
}

output "subnetId" {
  value = aws_subnet.subnet.id
}

output "subnetOwnerId" {
  value = aws_subnet.subnet.owner_id
}

output "subnetTagsAll" {
  value = aws_subnet.subnet.tags_all
}