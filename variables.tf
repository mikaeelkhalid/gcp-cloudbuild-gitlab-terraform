variable "gcp_project" {
  type        = string
  default     = "name-of-gcp-project"
  description = "The name of the Google Cloud Project where the cloud build is to be provisioned"
}

variable "gcp_region" {
  type        = string
  default     = "us-central1"
  description = "The name of the Google region where the cloud build are to be provisioned"
}

variable "gitlab_api_token_secret" {
  type        = string
  description = "GitLab API Token Secret"
}

variable "gitlab_read_api_token_secret" {
  type        = string
  description = "GitLab Read API Token Secret"
}

variable "gitlab_webhook_token_secret" {
  type        = string
  description = "GitLab Webhook Token Secret"
}

variable "gitlab_repo_uri" {
  type        = string
  description = "GitLab Repo URI"
}

variable "build_location" {
  type        = string
  default     = var.gcp_region
  description = "Cloud Build Location"
}

variable "build_trigger_branch" {
  type        = string
  default     = "Development"
  description = "Cloud Build Trigger Branch"
}
