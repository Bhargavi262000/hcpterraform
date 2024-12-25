provider "google" {
  project = "hcp-tf-test-bhargavi"
  region  = "us-central1"
}

resource "google_storage_bucket" "test_bucket_good" {
  name                        = "test-bucket-good"
  location                    = "EU"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
}
