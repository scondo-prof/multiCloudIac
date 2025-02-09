output "gfrId" {
  value = google_compute_global_forwarding_rule.gfr.id
}

output "gfrLabelFingerprint" {
  value = google_compute_global_forwarding_rule.gfr.label_fingerprint
}

output "gfrPscConnectionId" {
  value = google_compute_global_forwarding_rule.gfr.psc_connection_id
}

output "gfrSelfLink" {
  value = google_compute_global_forwarding_rule.gfr.self_link
}