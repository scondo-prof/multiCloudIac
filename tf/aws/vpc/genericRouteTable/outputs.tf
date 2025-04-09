output "routeTableArn" {
  value = aws_route_table.routeTable[*].arn
}

output "routeTableId" {
  value = aws_route_table.routeTable[*].id
}

output "routeTableOwnerId" {
  value = aws_route_table.routeTable[*].owner_id
}

output "routeTableTagsAll" {
  value = aws_route_table.routeTable[*].tags_all
}