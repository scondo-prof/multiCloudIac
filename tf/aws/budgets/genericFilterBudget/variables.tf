variable "awsRegion" {
  type = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

variable "budgetType" {
  type    = string
  default = "COST"
}

variable "budgetLimitAmount" {
  type = number
}

variable "budgetLimitUnit" {
  type    = string
  default = "USD"
}

variable "budgetTimeUnit" {
  type = string

  validation {
    condition     = contains(["MONTHLY", "QUARTERLY", "ANNUALLY", "DAILY"], var.budgetTimeUnit)
    error_message = "The only valid options for budgetTimeUnit are 'MONTHLY', 'QUARTERLY', 'ANNUALLY', 'DAILY'."
  }
}

variable "budgetCostFilterName" {
  type = string

  validation {
    condition     = contains(["PurchaseType", "UsageTypeGroup", "Service", "Operation", "UsageType", "BillingEntity", "CostCategory", "LinkedAccount", "TagKeyValue", "LegalEntityName", "InvoicingEntity", "AZ", "Region", "InstanceType"], var.budgetCostFilterName)
    error_message = "The only valid options for budgetCostFilterName are 'PurchaseType', 'UsageTypeGroup', 'Service', 'Operation', 'UsageType', 'BillingEntity', 'CostCategory', 'LinkedAccount', 'TagKeyValue', 'LegalEntityName', 'InvoicingEntity', 'AZ', 'Region', 'InstanceType'."
  }
}


variable "budgetCostFilterValues" {
  type = list(string)
}

variable "budgetNotificationComparisonOperator" {
  type = string

  validation {
    condition     = contains(["LESS_THAN", "EQUAL_TO", "GREATER_THAN"], var.budgetNotificationComparisonOperator)
    error_message = "The only valid options for budgetNotificationComparisonOperator are 'LESS_THAN', 'EQUAL_TO', 'GREATER_THAN'."
  }
}

variable "budgetNotificationThreshold" {
  type = number
}

variable "budgetNotificationThresholdType" {
  type = string

  validation {
    condition     = contains(["PERCENTAGE", "ABSOLUTE_VALUE"], var.budgetNotificationThresholdType)
    error_message = "The only valid options for budgetNotificationThresholdType are 'PERCENTAGE', 'ABSOLUTE_VALUE'."
  }
}

variable "budgetNotificationType" {
  type = string

  validation {
    condition     = contains(["ACTUAL", "FORECASTED"], var.budgetNotificationType)
    error_message = "The only valid options for budgetNotificationType are 'ACTUAL', 'FORECASTED'."
  }
}

variable "snsTopicArns" {
  type = list(string)
}

variable "projectName" {
  type = string
}

variable "creator" {
  type    = string
  default = "Scott Condo"
}

variable "deployedDate" {
  type = string
}

variable "awsBudgetAdditionalTags" {
  type    = map(string)
  default = {}
}