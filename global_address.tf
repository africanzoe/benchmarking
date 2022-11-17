resource "google_compute_global_forwarding_rule" "http" {
  target     = google_compute_target_http_proxy.default.self_link
  port_range = "80"
  name       = var.name
  ip_address = google_compute_global_address.default.address
}

resource "google_compute_global_address" "default" {
  name       = "${var.name}-address"
  ip_version = var.ip_version
}

resource "google_compute_global_forwarding_rule" "https" {
  target     = google_compute_target_https_proxy.default.self_link
  port_range = "80"
  name       = "${var.name}-https"
  ip_address = google_compute_global_address.default.address
}

