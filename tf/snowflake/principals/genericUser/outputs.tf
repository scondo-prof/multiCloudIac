output "userFullyQualifiedName" {
  value = snowflake_user.user.fully_qualified_name
}

output "userId" {
  value = snowflake_user.user.id
}

output "userParameters" {
  value = snowflake_user.user.parameters
}

output "userShowOutput" {
  value = snowflake_user.user.show_output
}

output "userType" {
  value = snowflake_user.user.user_type
}