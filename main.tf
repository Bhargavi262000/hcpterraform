provider "google" {
  project = "hcp-tf-test-bhargavi"
  region  = "us-central1"
}

resource "google_storage_bucket" "test_bucket" {
  count                       = 1024
  name                        = var.test_bucket_names[count.index]
  location                    = "US"
  storage_class               = "STANDARD"
  project                     = "hcp-tf-test-bhargavi"
  uniform_bucket_level_access = true
}

