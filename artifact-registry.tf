resource "google_artifact_registry_repository" "go_auth_app_repo" {
  location      = var.gcp_region
  repository_id = "go-auth-app-repo"
  description   = "Docker repository for Go auth app"
  format        = "DOCKER"
}