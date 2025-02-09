output "ebsVolumeId" {
  value = aws_ebs_volume.ebsVolume.id
}

output "ebsVolumeArn" {
  value = aws_ebs_volume.ebsVolume.arn
}

output "ebsVolumeTagsAll" {
  value = aws_ebs_volume.ebsVolume.tags_all
}