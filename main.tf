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

resource "google_container_node_pool" "good_node_pool" {
  name               = "good-node-pool"
  cluster            = "cluster-1"
  project = "hcp-tf-test-bhargavi"
  location           = "EU"
  initial_node_count = 3

  node_config {
    preemptible  = true
    machine_type = "e2-medium"
  }
}
