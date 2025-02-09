terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.97.0"
    }
  }
}

provider "snowflake" {
  account   = var.snowflakeAccount
  role      = var.snowflakeRole
  warehouse = var.snowflakeWarehouse
}

resource "snowflake_alert" "snowflakeAlert" {
  action = var.snowflakeAlertAction

  dynamic "alert_schedule" {
    for_each = var.snowflakeAlertSchedule != null ? [var.snowflakeAlertSchedule] : []
    content {

      dynamic "cron" {
        for_each = alert_schedule.value["cron"] != null ? [alert_schedule.value["cron"]] : []
        content {
          expression = cron.value["expression"]
          time_zone  = cron.value["time_zone"]
        }
      }

      interval = alert_schedule.value["interval"]
    }
  }

  comment   = var.snowflakeAlertComment
  condition = var.snowflakeAlertCondition
  database  = var.snowflakeAlertDatabase
  enabled   = var.snowflakeAlertEnabled
  name      = "${var.resourceName}-alert"
  schema    = var.snowflakeAlertSchema
  warehouse = var.snowflakeAlertWarehouse

}