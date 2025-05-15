output "blockCreated" {
  value = prefect_block.block[*].created
}

output "blockId" {
  value = prefect_block.block[*].id
}

output "blockUpdated" {
  value = prefect_block.block[*].updated
}

output "blockName" {
  value = prefect_block.block[*].name
}

output "blockData" {
  value = prefect_block.block[*].data
  sensitive = true
}