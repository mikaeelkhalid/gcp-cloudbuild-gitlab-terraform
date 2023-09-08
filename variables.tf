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