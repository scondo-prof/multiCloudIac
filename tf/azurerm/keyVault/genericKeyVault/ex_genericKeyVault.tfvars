resourceName = "bear-cog-test"

keyVaultResourceGroupName = "test-resource-group"

keyVaultTenantId = "c251bfb1-a539-45ec-a5e0-8911fffbb0a9"

keyVaultAccessPolicy = [{
  tenant_id = "c251bfb1-a539-45ec-a5e0-8911fffbb0a9"
  object_id = "5cebc136-277d-4546-a075-a9918e879ee9"
  key_permissions = [
    "Create",
    "Get",
  ]
  secret_permissions = [
    "Set",
    "Get",
    "Delete",
    "Purge",
    "Recover",
    "List"
  ]
}]

projectName = "test-stuff"

deployedDate = "10-22-2024"