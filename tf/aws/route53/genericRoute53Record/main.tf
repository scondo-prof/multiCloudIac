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

resource "aws_route53_record" "record" {
  zone_id         = var.recordZoneId
  name            = var.recordName
  type            = var.recordType
  ttl             = var.recordTtl
  records         = var.recordRecords
  set_identifier  = var.recordSetIdentifier
  health_check_id = var.recordHealthCheckId

  dynamic "alias" {
    for_each = var.recordAlias != null ? [var.recordAlias] : []
    content {
      name                   = alias.value["name"]
      zone_id                = alias.value["zone_id"]
      evaluate_target_health = alias.value["evaluate_target_health"]
    }
  }

  dynamic "cidr_routing_policy" {
    for_each = var.recordCidrRoutingPolicy != null ? [var.recordCidrRoutingPolicy] : []
    content {
      collection_id = cidr_routing_policy.value["collection_id"]
      location_name = cidr_routing_policy.value["location_name"]
    }
  }

  dynamic "failover_routing_policy" {
    for_each = var.recordFailoverRoutingPolicy != null ? [var.recordFailoverRoutingPolicy] : []
    content {
      type = failover_routing_policy.value["type"]
    }
  }

  dynamic "geolocation_routing_policy" {
    for_each = var.recordGeolocationRoutingPolicy != null ? [var.recordGeolocationRoutingPolicy] : []
    content {
      continent   = geolocation_routing_policy.value["continent"]
      country     = geolocation_routing_policy.value["country"]
      subdivision = geolocation_routing_policy.value["subdivision"]
    }
  }

  dynamic "geoproximity_routing_policy" {
    for_each = var.recordGeoproximityRoutingPolicy != null ? [var.recordGeoproximityRoutingPolicy] : []
    content {
      aws_region = geoproximity_routing_policy.value["aws_region"]
      bias       = geoproximity_routing_policy.value["bias"]

      dynamic "coordinates" {
        for_each = geoproximity_routing_policy.value["coordinates"]
        content {
          latitude  = coordinates.value["latitude"]
          longitude = coordinates.value["longitude"]
        }
      }

      local_zone_group = geoproximity_routing_policy.value["local_zone_group"]
    }
  }

  dynamic "latency_routing_policy" {
    for_each = var.recordLatencyRoutingPolicy != null ? [var.recordLatencyRoutingPolicy] : []
    content {
      region = latency_routing_policy.value["region"]
    }
  }

  multivalue_answer_routing_policy = var.recordMultivalueAnswerRoutingPolicy

  dynamic "weighted_routing_policy" {
    for_each = var.recordWeightedRoutingPolicy != null ? [var.recordWeightedRoutingPolicy] : []
    content {
      weight = weighted_routing_policy.value["weight"]
    }
  }

  allow_overwrite = var.recordAllowOverwrite
}