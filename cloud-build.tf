resource "google_project_iam_member" "cloudbuild_artifactregistry_pusher" {
  project = var.gcp_project
  role    = "roles/artifactregistry.writer"
  member  = "serviceAccount:<REPLACE_WITH_CLOUDBUILD_SA>"
}

resource "google_project_iam_member" "cloudbuild_secret_accessor" {
  project = var.gcp_project
  role    = "roles/secretmanager.secretAccessor"
  member  = "serviceAccount:PROJECT_NUMBER@cloudbuild.gserviceaccount.com"
}

resource "google_cloudbuildv2_connection" "gitlab_connection" {
  location = var.build_location
  name     = "gitlab-connection"
  gitlab_config {
    authorizer_credential {
      user_token_secret_version = var.gitlab_api_token_secret
    }
    read_authorizer_credential {
      user_token_secret_version = var.gitlab_read_api_token_secret
    }
    webhook_secret_secret_version = var.gitlab_webhook_token_secret
  }
}

resource "google_cloudbuildv2_repository" "go_auth_repo" {
  name = "gitlab-go-auth-repo"
  location = var.build_location
  parent_connection = google_cloudbuildv2_connection.gitlab-connection.id
  remote_uri = var.gitlab_repo_uri
}

