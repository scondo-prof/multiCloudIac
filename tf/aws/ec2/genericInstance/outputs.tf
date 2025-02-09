output "instanceArn" {
  value = aws_instance.instance.arn
}

output "instanceCapacityReservationSpecification" {
  value = aws_instance.instance.capacity_reservation_specification
}

output "instanceId" {
  value = aws_instance.instance.id
}

output "instanceInstanceState" {
  value = aws_instance.instance.instance_state
}

output "instanceOutpostArn" {
  value = aws_instance.instance.outpost_arn
}

output "instancePasswordData" {
  value = aws_instance.instance.password_data
}

output "instancePrimaryNetworkInterfaceId" {
  value = aws_instance.instance.primary_network_interface_id
}

output "instancePrivateDns" {
  value = aws_instance.instance.private_dns
}

output "instancePublicIp" {
  value = aws_instance.instance.public_ip
}

output "instanceTagsAll" {
  value = aws_instance.instance.tags_all
}