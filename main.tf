provider "google" {
  project = "hcp-tf-test-bhargavi"
  region  = "us-central1"
}


resource "google_container_node_pool" "primary_node_pool" {
  name       = "primary-node-pool-1"
  cluster    = "cluster-1"
  project    = "hcp-tf-test-bhar"
  initial_node_count = 2

  node_config {
    preemptible  = true
    machine_type = "e2-medium"
  }
}

resource "google_storage_bucket" "test_bucket_good" {
  name                        = "test-bucket-good"
  location                    = "US"
  storage_class               = "STANDARD"
  project                     = "hcp-tf-test-bhargavi"
  uniform_bucket_level_access = true
}



