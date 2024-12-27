provider "google" {
  project = "hcp-tf-test-bhargavi"
  region  = "us-central1"
}

resource "google_compute_network" "network1"{
  name                                        = "network-vpc1"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}
