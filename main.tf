resource "google_storage_bucket" "sample_bucket" {
  name     = "my-sample-bucket"
  location = var.region

  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }

    condition {
      age = 30
    }
  }

  uniform_bucket_level_access = true

  depends_on = [google_project_service.storage]
}

resource "google_project_service" "storage" {
  service = "storage.googleapis.com"
}