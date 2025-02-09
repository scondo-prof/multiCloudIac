output "mscId" {
  value = google_compute_managed_ssl_certificate.msc.id
}


output "mscExpireTime" {
  value = google_compute_managed_ssl_certificate.msc.expire_time
}

output "mscSelfLink" {
  value = google_compute_managed_ssl_certificate.msc.self_link
}

output "mscSubjectAlternativeNames" {
  value = google_compute_managed_ssl_certificate.msc.subject_alternative_names
}