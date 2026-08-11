# Output VM Public IP Address
output "vm_public_ip" {
  description = "The public IP address of the deployed VM"
  value = google_compute_instance.veb_vm.network_interface[0].access_config[0].nat_ip
}

# Output docker artifact registry repo URL
output "repository_url" {
  description = "The URL of the created Artifact Registry docker repository"
  value = "${var.region}-docker.pkg.dev/${var.project_id}/${google_artifact_registry_repository.app-repo.repository_id}"
}
