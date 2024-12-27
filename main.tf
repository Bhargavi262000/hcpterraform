provider "google" {
  project = "hcp-tf-test-bhargavi"
  region  = "us-central1"
}

resource "google_folder" "folder" {
  display_name = "policy"
  parent       = "organizations/714470867684"
}

