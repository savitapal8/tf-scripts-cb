resource "google_cloudbuild_worker_pool" "pool" {
  name = var.worker_pool_name
  location = var.worker_pool_location
  worker_config {
    disk_size_gb = var.worker_disk_size
    machine_type = var.machine_type
    no_external_ip = var.no_external_ip
  }
}