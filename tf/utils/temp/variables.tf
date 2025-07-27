variable "create_key_pair" {
  type    = bool
  default = true
}

variable "create_sg" {
  type    = bool
  default = true
}

variable "create_role" {
  type    = bool
  default = true
}

variable "create_policy" {
  type    = bool
  default = true
}

variable "create_pa" {
  type    = bool
  default = true
}

variable "create_secret" {
  type    = bool
  default = true
}

variable "create_secret_version" {
  type    = bool
  default = true
}

variable "resource_name" {
  type = string
}

variable "project_name" {
  description = "The GitLab Namespace Slug (Automatically Allocated)"
  type        = string
}

variable "created_by" {
  description = "The GitLab Commit Author (Automatically Allocated)"
  type        = string
  default     = "automation"
}

variable "terraform_repository" {
  description = "The GitLab Project (Automatically Allocated)"
  type        = string
}

variable "environment" {
  description = "The GitLab Commit Branch (Automatically Allocated)"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the ECR repository"
  type        = map(string)
  default     = {}
}

# https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#schema

variable "private_key_object" {
  type = object({
    algorithm   = string
    ecdsa_curve = optional(string, null)
    rsa_bits    = optional(number, null)
  })
  default = null
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair#argument-reference

variable "key_pair_object" {
  type = object({
    key_name        = optional(string, null)
    key_name_prefix = optional(string, null)
  })
  default = null
}

#---

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group#argument-reference

variable "sg_object" {
  type = object({
    description = optional(string, null)

    egress = optional(list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group#egress
      from_port        = number
      to_port          = number
      cidr_blocks      = optional(list(string), null)
      description      = optional(string, null)
      ipv6_cidr_blocks = optional(list(string), null)
      prefix_list_ids  = optional(list(string), null)
      protocol         = string
      security_groups  = optional(list(string), null)
      self             = optional(bool, null)
    })), null)

    ingress = optional(list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group#ingress
      from_port        = number
      to_port          = number
      protocol         = string
      cidr_blocks      = optional(list(string), null)
      description      = optional(string, null)
      ipv6_cidr_blocks = optional(list(string), null)
      prefix_list_ids  = optional(list(string), null)
      security_groups  = optional(list(string), null)
      self             = optional(bool, null)
    })), null)

    name                   = optional(string, null)
    name_prefix            = optional(string, null)
    revoke_rules_on_delete = optional(bool, null)
    vpc_id                 = optional(string, null)
  })
  default = null
}

#---

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role 

variable "role_object" {
  type = object({

    policy_statements = list(object({
      Effect    = string
      Principal = map(string)
      Action    = string
    }))

    description           = optional(string, null)
    force_detach_policies = optional(bool, null)
    max_session_duration  = optional(number, null)
    name                  = optional(string, null)
    name_prefix           = optional(string, null)
    path                  = optional(string, null)
    permissions_boundary  = optional(string, null)
  })
  default = null
}

#---

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy#argument-reference

variable "policy_object" {
  type = object({
    description = optional(string, null)
    name_prefix = optional(string, null)
    name        = optional(string, null)
    path        = optional(string, null)

    policy_statements = list(object({
      Sid      = string
      Action   = list(string)
      Resource = list(string)
      Effect   = string
    }))

  })
  default = null
}

#---

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment#argument-reference

variable "pa_objects" {
  type = object({
    users      = optional(list(string), null)
    roles      = optional(list(string), null)
    groups     = optional(list(string), null)
    policy_arn = string
  })
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#argument-reference

variable "instance_object" {
  type = object({
    ami                         = optional(string, null)
    associate_public_ip_address = optional(bool, null)
    availability_zone           = optional(string, null)

    capacity_reservation_specification = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#capacity-reservation-specification
      capacity_reservation_preference = optional(string, null)

      capacity_reservation_target = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#capacity-reservation-target
        capacity_reservation_id                 = optional(string, null)
        capacity_reservation_resource_group_arn = optional(string, null)
      }), null)

    }), null)

    cpu_options = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#cpu-options
      amd_sev_snp      = optional(string, null)
      core_count       = optional(number, null)
      threads_per_core = optional(number, null)
    }), null)

    credit_specification = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#credit-specification
      cpu_credits = optional(string, null)
    }), null)

    disable_api_stop        = optional(bool, null)
    disable_api_termination = optional(bool, null)

    ebs_block_device = optional(list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#ebs-ephemeral-and-root-block-devices
      delete_on_termination = optional(bool, null)
      device_name           = string
      encrypted             = optional(bool, null)
      iops                  = optional(string, null)
      kms_key_id            = optional(string, null)
      snapshot_id           = optional(string, null)
      throughput            = optional(number, null)
      volume_size           = optional(number, null)
      volume_type           = optional(string, null)
    })), null)

    ebs_optimized       = optional(bool, null)
    enable_primary_ipv6 = optional(bool, null)

    enclave_options = optional(object({
      enabled = optional(bool, null)
    }), null)

    ephemeral_block_device = optional(list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#ebs-ephemeral-and-root-block-devices
      device_name  = string
      no_device    = optional(bool, null)
      virtual_name = optional(string, null)
    })), null)

    get_password_data                    = optional(bool, null)
    hibernation                          = optional(bool, null)
    host_id                              = optional(string, null)
    host_resource_group_arn              = optional(string, null)
    iam_instance_profile                 = optional(string, null)
    instance_initiated_shutdown_behavior = optional(string, null)

    instance_market_options = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#market-options
      market_type = optional(string, null)

      spot_options = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#spot-options
        instance_interruption_behavior = optional(string, null)
        max_price                      = optional(number, null)
        spot_instance_type             = optional(string, null)
        valid_until                    = optional(string, null)
      }), null)

    }), null)

    instance_type      = optional(string, null)
    ipv6_address_count = optional(number, null)
    ipv6_addresses     = optional(list(string), null)
    key_name           = optional(string, null)

    launch_template = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#launch-template-specification
      id      = string
      name    = string
      version = string
    }), null)

    maintenance_options = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#maintenance-options
      auto_recovery = optional(string, null)
    }), null)

    metadata_options = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#metadata-options
      http_endpoint               = optional(string, null)
      http_protocol_ipv6          = optional(string, null)
      http_put_response_hop_limit = optional(number, null)
      http_tokens                 = optional(string, null)
      instance_metadata_tags      = optional(string, null)
    }), null)

    monitoring = optional(bool, null)

    network_interface = optional(list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#network-interfaces
      delete_on_termination = optional(bool, null)
      device_index          = number
      network_card_index    = optional(number, null)
      network_interface_id  = string
    })), null)

    placement_group            = optional(string, null)
    placement_partition_number = optional(number, null)

    private_dns_name_options = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#private-dns-name-options
      enable_resource_name_dns_aaaa_record = bool
      enable_resource_name_dns_a_record    = bool
      hostname_type                        = string
    }), null)

    private_ip = optional(string, null)

    root_block_device = optional(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#ebs-ephemeral-and-root-block-devices
      delete_on_termination = optional(bool, null)
      encrypted             = optional(bool, null)
      iops                  = optional(string, null)
      kms_key_id            = optional(string, null)
      throughput            = optional(number, null)
      volume_size           = optional(number, null)
      volume_type           = optional(string, null)
    }), null)

    secondary_private_ips       = optional(list(string), null)
    security_groups             = optional(list(string), null)
    source_dest_check           = optional(bool, null)
    subnet_id                   = optional(string, null)
    tenancy                     = optional(string, null)
    user_data                   = optional(string, null)
    user_data_base64            = optional(string, null)
    user_data_replace_on_change = optional(bool, null)
    vpc_security_group_ids      = optional(list(string), null)
  })
}

#---

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret#argument-reference

variable "secret_object" {
  type = object({
    description             = optional(string, null)
    kms_key_id              = optional(string, null)
    name                    = optional(string, null)
    name_prefix             = optional(string, null)
    policy                  = optional(string, null)
    recovery_window_in_days = optional(number, null)

    replica = optional(list(object({
      kms_key_id = optional(string, null)
      region     = string
    })), null)

    force_overwrite_replica_secret = optional(bool, null)
  })
  default = null
}

#---

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference

variable "secret_version_object" {
  type = object({
    secret_id      = string
    secret_string  = optional(map(string), null)
    secret_binary  = optional(string, null)
    version_stages = optional(list(string), null)
  })
  default = null
}

#---
