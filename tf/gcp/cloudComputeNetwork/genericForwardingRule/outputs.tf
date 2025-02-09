output "forwardingRuleId" {
  value = google_compute_forwarding_rule.forwardingRule.id
}

output "forwardingRuleLabelFingerprint" {
  value = google_compute_forwarding_rule.forwardingRule.label_fingerprint
}

output "forwardingRulePscConnectionId" {
  value = google_compute_forwarding_rule.forwardingRule.psc_connection_id
}

output "forwardingRuleSelfLink" {
  value = google_compute_forwarding_rule.forwardingRule.selfLink
}