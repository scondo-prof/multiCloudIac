output "keyPairId" {
  value = aws_key_pair.keyPair.id
}

output "keyPairArn" {
  value = aws_key_pair.keyPair.arn
}

output "keyPairKeyName" {
  value = aws_key_pair.keyPair.key_name
}

output "keyPairKeyPairId" {
  value = aws_key_pair.keyPair.key_pair_id
}

output "keyPairKeyType" {
  value = aws_key_pair.keyPair.key_type
}

output "keyPairFingerprint" {
  value = aws_key_pair.keyPair.fingerprint
}

output "keyPairTagsAll" {
  value = aws_key_pair.keyPair.tags_all
}