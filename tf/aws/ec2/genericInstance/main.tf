terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = var.awsRegion
}

resource "aws_instance" "instance" {
  ami                         = var.instanceAmi
  associate_public_ip_address = var.instanceAssociatePublicIpAddress
  availability_zone           = var.instanceAvailabilityZone

  dynamic "capacity_reservation_specification" {
    for_each = var.instanceCapacityReservationSpecification != null ? [var.instanceCapacityReservationSpecification] : []
    content {
      capacity_reservation_preference = capacity_reservation_specification.value["capacity_reservation_preference"]
      dynamic "capacity_reservation_target" {
        for_each = capacity_reservation_specification.value["capacity_reservation_target"] != null ? [capacity_reservation_specification.value["capacity_reservation_target"]] : []
        content {
          capacity_reservation_id                 = capacity_reservation_target.value["capacity_reservation_id"]
          capacity_reservation_resource_group_arn = capacity_reservation_target.value["capacity_reservation_resource_group_arn"]
        }
      }
    }
  }

  dynamic "cpu_options" {
    for_each = var.instanceCpuOptions != null ? [var.instanceCpuOptions] : []
    content {
      amd_sev_snp      = cpu_options.value["amd_sev_snp"]
      core_count       = cpu_options.value["core_count"]
      threads_per_core = cpu_options.value["threads_per_core"]
    }
  }

  dynamic "credit_specification" {
    for_each = var.instanceCreditSpecification != null ? [var.instanceCreditSpecification] : []
    content {
      cpu_credits = credit_specification.value["cpu_credits"]
    }
  }

  disable_api_stop        = var.instanceDisableApiStop
  disable_api_termination = var.instanceDisableApiTermination

  dynamic "ebs_block_device" {
    for_each = var.instanceEbsBlockDevice != null ? [var.instanceEbsBlockDevice] : []
    content {
      device_name           = ebs_block_device.value["device_name"]
      delete_on_termination = ebs_block_device.value["delete_on_termination"]
      encrypted             = ebs_block_device.value["encrypted"]
      iops                  = ebs_block_device.value["iops"]
      kms_key_id            = ebs_block_device.value["kms_key_id"]
      snapshot_id           = ebs_block_device.value["snapshot_id"]
      tags = merge({
        Project      = var.projectName
        CreatedBy    = var.createdBy
        DeployedDate = var.deployedDate
        TfModule     = var.tfModule
      }, var.additionalTags)
      throughput  = ebs_block_device.value["throughput"]
      volume_size = ebs_block_device.value["volume_size"]
      volume_type = ebs_block_device.value["volume_type"]
    }
  }

  ebs_optimized       = var.instanceEbsOptimized
  enable_primary_ipv6 = var.instanceEnablePrimaryIpv6

  dynamic "enclave_options" {
    for_each = var.instanceEnclaveOptions != null ? [var.instanceEnclaveOptions] : []
    content {
      enabled = enclave_options.value["enabled"]
    }
  }

  dynamic "ephemeral_block_device" {
    for_each = var.instanceEphemeralBlockDevice != null ? [var.instanceEphemeralBlockDevice] : []
    content {
      device_name  = ephemeral_block_device.value["device_name"]
      no_device    = ephemeral_block_device.value["no_device"]
      virtual_name = ephemeral_block_device.value["virtual_name"]
    }
  }

  get_password_data                    = var.instanceGetPasswordData
  hibernation                          = var.instanceHibernation
  host_id                              = var.instanceHostId
  host_resource_group_arn              = var.instanceHostResourceGroupArn
  iam_instance_profile                 = var.instanceIamInstanceProfile
  instance_initiated_shutdown_behavior = var.instanceInitiatedShutdownBehavior

  dynamic "instance_market_options" {
    for_each = var.instanceMarketOptions != null ? [var.instanceMarketOptions] : []
    content {
      market_type = instance_market_options.value["market_type"]
      dynamic "spot_options" {
        for_each = instance_market_options.value["spot_options"] != null ? [instance_market_options.value["spot_options"]] : []
        content {
          instance_interruption_behavior = spot_options.value["instance_interruption_behavior"]
          max_price                      = spot_options.value["max_price"]
          spot_instance_type             = spot_options.value["spot_instance_type"]
          valid_until                    = spot_options.value["valid_until"]
        }
      }
    }
  }

  instance_type      = var.instanceType
  ipv6_address_count = var.instanceIpv6AddressCount
  ipv6_addresses     = var.instanceIpv6Addresses
  key_name           = var.instanceKeyName

  dynamic "launch_template" {
    for_each = var.instanceLaunchTemplate != null ? [var.instanceLaunchTemplate] : []
    content {
      id      = launch_template.value["id"]
      name    = launch_template.value["name"]
      version = launch_template.value["version"]
    }
  }

  dynamic "maintenance_options" {
    for_each = var.instanceMaintenanceOptions != null ? [var.instanceMaintenanceOptions] : []
    content {
      auto_recovery = maintenance_options.value["auto_recovery"]
    }
  }

  dynamic "metadata_options" {
    for_each = var.instancMetadataOptions != null ? [var.instancMetadataOptions] : []
    content {
      http_endpoint               = metadata_options.value["http_endpoint"]
      http_protocol_ipv6          = metadata_options.value["http_protocol_ipv6"]
      http_put_response_hop_limit = metadata_options.value["http_put_response_hop_limit"]
      http_tokens                 = metadata_options.value["http_tokens"]
      instance_metadata_tags      = metadata_options.value["instance_metadata_tags"]
    }
  }

  monitoring = var.instanceMonitoring

  dynamic "network_interface" {
    for_each = var.instanceNetworkInterface != null ? [var.instanceNetworkInterface] : []
    content {
      delete_on_termination = network_interface.value["delete_on_termination"]
      device_index          = network_interface.value["device_index"]
      network_card_index    = network_interface.value["network_card_index"]
      network_interface_id  = network_interface.value["network_interface_id"]
    }
  }

  placement_group            = var.instancePlacementGroup
  placement_partition_number = var.instancePlacementPartitionNumber

  dynamic "private_dns_name_options" {
    for_each = var.instancePrivateDnsNameOptions != null ? [var.instancePrivateDnsNameOptions] : []
    content {
      enable_resource_name_dns_aaaa_record = private_dns_name_options.value["enable_resource_name_dns_aaaa_record"]
      enable_resource_name_dns_a_record    = private_dns_name_options.value["enable_resource_name_dns_a_record"]
      hostname_type                        = private_dns_name_options.value["hostname_type"]
    }
  }

  private_ip = var.instancePrivateIp

  dynamic "root_block_device" {
    for_each = var.instanceRootBlockDevice != null ? [var.instanceRootBlockDevice] : []
    content {
      delete_on_termination = root_block_device.value["delete_on_termination"]
      encrypted             = root_block_device.value["encrypted"]
      iops                  = root_block_device.value["iops"]
      kms_key_id            = root_block_device.value["kms_key_id"]
      tags = merge({
        Project      = var.projectName
        CreatedBy    = var.createdBy
        DeployedDate = var.deployedDate
      }, var.additionalTags)
      throughput  = root_block_device.value["throughput"]
      volume_size = root_block_device.value["volume_size"]
      volume_type = root_block_device.value["volume_type"]
    }
  }

  secondary_private_ips = var.instanceSecondaryPrivateIps
  security_groups       = var.instanceSecurityGroups
  source_dest_check     = var.instanceSourceDestCheck
  subnet_id             = var.instanceSubnetId
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.createdBy
    DeployedDate = var.deployedDate
    Name         = "${var.resourceName}-ec2"
  }, var.additionalTags)
  tenancy                     = var.instanceTenancy
  user_data                   = var.instanceUserData != null ? file(var.instanceUserData) : null
  user_data_base64            = var.instanceUserDataBase64
  user_data_replace_on_change = var.instanceuserDataReplaceOnChange
  volume_tags                 = var.instanceVolumetags
  vpc_security_group_ids      = var.instanceVpcSecurityGroupIds
}