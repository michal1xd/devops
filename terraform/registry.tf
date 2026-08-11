resource "google_artifact_registry_repository" "app-repo" {
  location = var.region
  repository_id = "devops-app-repo"
  description = "Private Docker repository for DevOps application"
  format = "DOCKER"
}
