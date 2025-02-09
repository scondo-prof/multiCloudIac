variable "snowflakeAccount" {
  type    = string
  default = "maa23857-main"
}

variable "snowflakeRole" {
  type    = string
  default = "ACCOUNTADMIN"
}

variable "snowflakeWarehouse" {
  type    = string
  default = "COMPUTE_WH"
}

#--

#https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/alert#required

variable "snowflakeAlertAction" {
  type = string
}

variable "snowflakeAlertSchedule" {
  type = object({

    cron = optional(object({
      expression = string
      time_zone  = string
    }), null)

    interval = optional(number, null)
  })
  default = null
}

variable "snowflakeAlertComment" {
  type    = string
  default = null
}

variable "snowflakeAlertCondition" {
  type = string
}

variable "snowflakeAlertDatabase" {
  type = string
}

variable "snowflakeAlertEnabled" {
  type    = bool
  default = true
}

variable "resourceName" {
  type = string
}

variable "snowflakeAlertSchema" {
  type = string
}

variable "snowflakeAlertWarehouse" {
  type    = string
  default = "COMPUTE_WH"
}