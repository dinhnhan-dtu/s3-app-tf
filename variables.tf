variable "project" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "credentials_file" {
  description = "Path to the service account credentials file"
  type        = string
}