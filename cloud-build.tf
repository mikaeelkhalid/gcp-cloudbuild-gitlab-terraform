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
