output "accountRoleFullyQualifiedName" {
  value = snowflake_account_role.accountRole.fully_qualified_name
}

output "accountRoleId" {
  value = snowflake_account_role.accountRole.id
}

output "accountRoleShowOutput" {
  value = snowflake_account_role.accountRole.show_output
}