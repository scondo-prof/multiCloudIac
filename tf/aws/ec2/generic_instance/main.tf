terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket = "bucket"
    key    = "github/test_instance.tfstate"
    # dynamodb_table = "data-recon-terraform-bootstrap-state-lock-table"
    encrypt = true
  }
}

resource "aws_instance" "instance" {
  ami                         = var.instance_object["ami"]
  associate_public_ip_address = var.instance_object["associate_public_ip_address"]
  availability_zone           = var.instance_object["availability_zone"]

  dynamic "capacity_reservation_specification" {
    for_each = var.instance_object["capacity_reservation_specification"] != null ? [var.instance_object["capacity_reservation_specification"]] : []
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
    for_each = var.instance_object["cpu_options"] != null ? [var.instance_object["cpu_options"]] : []
    content {
      amd_sev_snp      = cpu_options.value["amd_sev_snp"]
      core_count       = cpu_options.value["core_count"]
      threads_per_core = cpu_options.value["threads_per_core"]
    }
  }

  dynamic "credit_specification" {
    for_each = var.instance_object["credit_specification"] != null ? [var.instance_object["credit_specification"]] : []
    content {
      cpu_credits = credit_specification.value["cpu_credits"]
    }
  }

  disable_api_stop        = var.instance_object["disable_api_stop"]
  disable_api_termination = var.instance_object["disable_api_termination"]

  dynamic "ebs_block_device" {
    for_each = var.instance_object["ebs_block_device"] != null ? var.instance_object["ebs_block_device"] : []
    content {
      delete_on_termination = ebs_block_device.value["delete_on_termination"]
      device_name           = ebs_block_device.value["device_name"]
      encrypted             = ebs_block_device.value["encrypted"]
      iops                  = ebs_block_device.value["iops"]
      kms_key_id            = ebs_block_device.value["kms_key_id"]
      snapshot_id           = ebs_block_device.value["snapshot_id"]

      tags = merge({
        Name = "${ebs_block_device.value["device_name"]}-ebs-volume"
        "Project" : var.project_name
        "Created By" : var.created_by
        "Terraform Repository" : var.terraform_repository
        "Environment" : var.environment
      }, var.tags)

      throughput  = ebs_block_device.value["throughput"]
      volume_size = ebs_block_device.value["volume_size"]
      volume_type = ebs_block_device.value["volume_type"]
    }
  }

  ebs_optimized       = var.instance_object["ebs_optimized"]
  enable_primary_ipv6 = var.instance_object["enable_primary_ipv6"]

  dynamic "enclave_options" {
    for_each = var.instance_object["enclave_options"] != null ? [var.instance_object["enclave_options"]] : []
    content {
      enabled = enclave_options.value["enabled"]
    }
  }

  dynamic "ephemeral_block_device" {
    for_each = var.instance_object["ephemeral_block_device"] != null ? var.instance_object["ephemeral_block_device"] : []
    content {
      device_name  = ephemeral_block_device.value["device_name"]
      no_device    = ephemeral_block_device.value["no_device"]
      virtual_name = ephemeral_block_device.value["virtual_name"]
    }
  }

  get_password_data                    = var.instance_object["get_password_data"]
  hibernation                          = var.instance_object["hibernation"]
  host_id                              = var.instance_object["host_id"]
  host_resource_group_arn              = var.instance_object["host_resource_group_arn"]
  iam_instance_profile                 = var.instance_object["iam_instance_profile"]
  instance_initiated_shutdown_behavior = var.instance_object["instance_initiated_shutdown_behavior"]

  dynamic "instance_market_options" {
    for_each = var.instance_object["instance_market_options"] != null ? [var.instance_object["instance_market_options"]] : []
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

  instance_type      = var.instance_object["instance_type"]
  ipv6_address_count = var.instance_object["ipv6_address_count"]
  ipv6_addresses     = var.instance_object["ipv6_addresses"]
  key_name           = var.instance_object["key_name"]

  dynamic "launch_template" {
    for_each = var.instance_object["launch_template"] != null ? [var.instance_object["launch_template"]] : []
    content {
      id      = launch_template.value["id"]
      name    = launch_template.value["name"]
      version = launch_template.value["version"]
    }
  }

  dynamic "maintenance_options" {
    for_each = var.instance_object["maintenance_options"] != null ? [var.instance_object["maintenance_options"]] : []
    content {
      auto_recovery = maintenance_options.value["auto_recovery"]
    }
  }

  dynamic "metadata_options" {
    for_each = var.instance_object["metadata_options"] != null ? [var.instance_object["metadata_options"]] : []
    content {
      http_endpoint               = metadata_options.value["http_endpoint"]
      http_protocol_ipv6          = metadata_options.value["http_protocol_ipv6"]
      http_put_response_hop_limit = metadata_options.value["http_put_response_hop_limit"]
      http_tokens                 = metadata_options.value["http_tokens"]
      instance_metadata_tags      = metadata_options.value["instance_metadata_tags"]
    }
  }

  monitoring = var.instance_object["monitoring"]

  dynamic "network_interface" {
    for_each = var.instance_object["network_interface"] != null ? var.instance_object["network_interface"] : []
    content {
      delete_on_termination = network_interface.value["delete_on_termination"]
      device_index          = network_interface.value["device_index"]
      network_card_index    = network_interface.value["network_card_index"]
      network_interface_id  = network_interface.value["network_interface_id"]
    }
  }

  placement_group            = var.instance_object["placement_group"]
  placement_partition_number = var.instance_object["placement_partition_number"]

  dynamic "private_dns_name_options" {
    for_each = var.instance_object["private_dns_name_options"] != null ? [var.instance_object["private_dns_name_options"]] : []
    content {
      enable_resource_name_dns_aaaa_record = private_dns_name_options.value["enable_resource_name_dns_aaaa_record"]
      enable_resource_name_dns_a_record    = private_dns_name_options.value["enable_resource_name_dns_a_record"]
      hostname_type                        = private_dns_name_options.value["hostname_type"]
    }
  }

  private_ip = var.instance_object["private_ip"]

  dynamic "root_block_device" {
    for_each = var.instance_object["root_block_device"] != null ? [var.instance_object["root_block_device"]] : []
    content {
      delete_on_termination = root_block_device.value["delete_on_termination"]
      encrypted             = root_block_device.value["encrypted"]
      iops                  = root_block_device.value["iops"]
      kms_key_id            = root_block_device.value["kms_key_id"]

      tags = merge({
        Name = "${var.resource_name}-root-ebs-volume"
        "Project" : var.project_name
        "Created By" : var.created_by
        "Terraform Repository" : var.terraform_repository
        "Environment" : var.environment
      }, var.tags)

      throughput  = root_block_device.value["throughput"]
      volume_size = root_block_device.value["volume_size"]
      volume_type = root_block_device.value["volume_type"]
    }
  }

  secondary_private_ips = var.instance_object["secondary_private_ips"]
  security_groups       = var.instance_object["security_groups"]
  source_dest_check     = var.instance_object["source_dest_check"]
  subnet_id             = var.instance_object["subnet_id"]

  tags = merge({
    Name = "${var.resource_name}-ec2"
    "Project" : var.project_name
    "Created By" : var.created_by
    "Terraform Repository" : var.terraform_repository
    "Environment" : var.environment
  }, var.tags)

  tenancy                     = var.instance_object["tenancy"]
  user_data                   = var.instance_object["user_data"]
  user_data_base64            = var.instance_object["user_data_base64"]
  user_data_replace_on_change = var.instance_object["user_data_replace_on_change"]

  vpc_security_group_ids = var.instance_object["vpc_security_group_ids"]
}