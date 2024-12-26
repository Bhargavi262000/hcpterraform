provider "google" {
  project = "hcp-tf-test-bhargavi"
  region  = "us-central1"
}

resource "google_storage_bucket" "non_violating_bucket" {
  name     = "non_violating_bucket" # Replace with a unique name
  location = "us-central1"          # Replace with desired region
  project  = "hcp-tf-test-bhargavi"
}

