output "PBS_PrefectBlockCreated" {
  value = module.prefectBlock.blockCreated
}

output "PBS_PrefectBlockId" {
  value = module.prefectBlock.blockId
}

output "PBS_PrefectBlockUpdated" {
  value = module.prefectBlock.blockUpdated
}

output "PBS_PrefectBlockName" {
  value = module.prefectBlock.blockName
}

output "PBS_PrefectBlockData" {
  value     = module.prefectBlock.blockData
  sensitive = true
}

#---
output "PBS_SWV_SecretArn" {
  value = module.SWV.SWV_SecretArn
}

output "PBS_SWV_SecretName" {
  value = module.SWV.SWV_SecretName
}

output "PBS_SWV_SecretVersionId" {
  value = module.SWV.SWV_SecretVersionId
}

#---
