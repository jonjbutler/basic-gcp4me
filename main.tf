terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.25.0"
    }
  }
}

provider "google" {
  # Configuration options
  project     = "gcp-origin-storyboard"
  region      = "us-central1"
  credentials = "gcp-origin-storyboard-161f2dd00742.json"
  zone        = "us-central1-a"
}
resource "google_storage_bucket" "wu-tang-sword" {
  name          = "shaolin-shadowboxing"
  location      = "us-central1"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
  cors {
    origin          = ["http://image-store.com"]
    method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
    response_header = ["*"]
    max_age_seconds = 3600
  }
}
