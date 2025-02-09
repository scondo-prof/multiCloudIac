variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "projectName" {
  type = string
}

variable "creator" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "resourceName" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#argument-reference

variable "instanceAmi" {
  type    = string
  default = null
}

variable "instanceAssociatePublicIpAddress" {
  type    = bool
  default = null
}

variable "instanceAvailabilityZone" {
  type    = string
  default = null
}

variable "instanceCapacityReservationSpecification" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#capacity-reservation-specification
  type = object({
    capacity_reservation_preference = optional(string, null)
    capacity_reservation_target = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#capacity-reservation-target
      capacity_reservation_id                 = optional(string, null)
      capacity_reservation_resource_group_arn = optional(string, null)
    }), null)
  })
  default = null
}

variable "instanceCpuOptions" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#cpu-options
  type = object({
    amd_sev_snp      = optional(string, null)
    core_count       = optional(number, null)
    threads_per_core = optional(number, null)
  })
  default = null
}

variable "instanceCreditSpecification" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#credit-specification
  type = object({
    cpu_credits = optional(string, null)
  })
  default = null
}

variable "instanceDisableApiStop" {
  type    = bool
  default = null
}

variable "instanceDisableApiTermination" {
  type    = bool
  default = null
}

variable "instanceEbsBlockDevice" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#ebs-ephemeral-and-root-block-devices
  type = object({
    device_name           = string
    delete_on_termination = optional(bool, null)
    encrypted             = optional(bool, null)
    iops                  = optional(string, null)
    kms_key_id            = optional(string, null)
    snapshot_id           = optional(string, null)
    throughput            = optional(number, null)
    volume_size           = optional(number, null)
    volume_type           = optional(string, null)
  })
  default = null
}

variable "instanceEbsOptimized" {
  type    = bool
  default = null
}

variable "instanceEnablePrimaryIpv6" {
  type    = bool
  default = null
}

variable "instanceEnclaveOptions" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#enclave-options
  type = object({
    enabled = optional(bool, null)
  })
  default = null
}

variable "instanceEphemeralBlockDevice" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#ebs-ephemeral-and-root-block-devices
  type = object({
    device_name  = string
    no_device    = optional(bool, null)
    virtual_name = optional(string, null)
  })
  default = null
}

variable "instanceGetPasswordData" {
  type    = bool
  default = null
}

variable "instanceHibernation" {
  type    = bool
  default = null
}

variable "instanceHostId" {
  type    = string
  default = null
}

variable "instanceHostResourceGroupArn" {
  type    = string
  default = null
}

variable "instanceIamInstanceProfile" {
  type    = string
  default = null
}

variable "instanceInitiatedShutdownBehavior" {
  type    = string
  default = null
}

variable "instanceMarketOptions" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#market-options
  type = object({
    market_type = optional(string, null)
    spot_options = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#spot-options
      instance_interruption_behavior = optional(string, null)
      max_price                      = optional(number, null)
      spot_instance_type             = optional(string, null)
      valid_until                    = optional(string, null)
    }), null)
  })
  default = null
}

variable "instanceType" {
  type    = string
  default = null
}

variable "instanceIpv6AddressCount" {
  type    = number
  default = null
}

variable "instanceIpv6Addresses" {
  type    = list(string)
  default = null
}

variable "instanceKeyName" {
  type    = string
  default = null
}

variable "instanceLaunchTemplate" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#launch-template-specification
  type = object({
    id      = optional(string, null)
    name    = optional(string, null)
    version = optional(string, null)
  })
  default = null
}

variable "instanceMaintenanceOptions" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#maintenance-options
  type = object({
    auto_recovery = optional(string, null)
  })
  default = null
}

variable "instancMetadataOptions" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#metadata-options
  type = object({
    http_endpoint               = optional(string, null)
    http_protocol_ipv6          = optional(string, null)
    http_put_response_hop_limit = optional(number, null)
    http_tokens                 = optional(string, null)
    instance_metadata_tags      = optional(bool, null)
  })
  default = null
}

variable "instanceMonitoring" {
  type    = bool
  default = null
}

variable "instanceNetworkInterface" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#network-interfaces
  type = object({
    delete_on_termination = optional(bool, null)
    device_index          = number
    network_card_index    = optional(number, null)
    network_interface_id  = string
  })
  default = null
}

variable "instancePlacementGroup" {
  type    = string
  default = null
}

variable "instancePlacementPartitionNumber" {
  type    = number
  default = null
}

variable "instancePrivateDnsNameOptions" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#private-dns-name-options
  type = object({
    enable_resource_name_dns_aaaa_record = bool
    enable_resource_name_dns_a_record    = bool
    hostname_type                        = string
  })
  default = null
}

variable "instancePrivateIp" {
  type    = string
  default = null
}

variable "instanceRootBlockDevice" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#ebs-ephemeral-and-root-block-devices
  type = object({
    delete_on_termination = optional(bool, null)
    encrypted             = optional(bool, null)
    iops                  = optional(string, null)
    kms_key_id            = optional(string, null)
    throughput            = optional(number, null)
    volume_size           = optional(number, null)
    volume_type           = optional(string, null)
  })
  default = null
}

variable "instanceSecondaryPrivateIps" {
  type    = list(string)
  default = null
}

variable "instanceSecurityGroups" {
  type    = list(string)
  default = null
}

variable "instanceSourceDestCheck" {
  type    = bool
  default = null
}

variable "instanceSubnetId" {
  type    = string
  default = null
}

variable "instanceTenancy" {
  type    = string
  default = null
}

variable "instanceUserData" {
  type    = string
  default = null
}

variable "instanceUserDataBase64" {
  type    = string
  default = null
}

variable "instanceuserDataReplaceOnChange" {
  type    = bool
  default = null
}

variable "instanceVolumetags" {
  type    = map(string)
  default = null
}

variable "instanceVpcSecurityGroupIds" {
  type    = list(string)
  default = null
}