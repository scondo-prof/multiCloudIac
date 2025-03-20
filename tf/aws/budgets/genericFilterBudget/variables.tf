variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

variable "projectName" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/budgets_budget#argument-reference

variable "budgetType" {
  type = string
}

variable "budgetTimeUnit" {
  type = string
  validation {
    condition = contains([
    "MONTHLY",
    "QUARTERLY",
    "ANNUALLY",
    "DAILY"
], var.budgetTimeUnit)
    error_message = "Valid inputs for | variable: var.budgetTimeUnit | are: MONTHLY, QUARTERLY, ANNUALLY, DAILY"
  }
}

variable "budgetAccountId" {
  type = string
  default = null
}

variable "budgetAutoAdjustData" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/budgets_budget#auto-adjust-data
    auto_adjust_type = string

    historical_options = object({  #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/budgets_budget#historical-options
      budget_adjustment_period = number
    })
  })

  default = null
}