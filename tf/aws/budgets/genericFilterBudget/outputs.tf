output "budgetArn" {
  value = aws_budgets_budget.budget.arn
}

output "budgetId" {
  value = aws_budgets_budget.budget.id
}

output "budgetTagsAll" {
  value = aws_budgets_budget.budget.tags_all
}

output "budgetName" {
  value = aws_budgets_budget.budget.name
}