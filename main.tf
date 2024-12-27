provider "google" {
  project = "hcp-tf-test-bhargavi"
  region  = "us-central1"
}

resource "google_securityposture_posture" "posture_2" {
  posture_id  = "posture_2"
  parent      = "organizations/1000043173737"
  location    = "global"
  state       = "ACTIVE"
  description = "a new posture"
  policy_sets {
      policy_set_id = "org_policy_set"
      description   = "set of org policies"
      policies {
          policy_id = "policy_1"
          constraint {
              org_policy_constraint {
                  canned_constraint_id = "storage.uniformBucketLevelAccess"
                  policy_rules {
                      enforce = true
                  }
              }
          }
      }
  }
}

resource "google_compute_network" "network1"{
  name                                        = "network-vpc1"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network2"{
  name                                        = "network-vpc2"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}



resource "google_compute_network" "network433"{
  name                                        = "network-vpc43"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network444"{
  name                                        = "network-vpc44"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network455"{
  name                                        = "network-vpc45"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network4sxqmb66"{
  name                                        = "network-vpc46"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network477"{
  name                                        = "network-vpc47"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network488"{
  name                                        = "network-vpc48"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network499"{
  name                                        = "network-vpc49"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network500"{
  name                                        = "network-vpc50"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network511"{
  name                                        = "network-vpc51"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network522"{
  name                                        = "network-vpc52"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network533"{
  name                                        = "network-vpc53"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network544"{
  name                                        = "network-vpc54"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network555"{
  name                                        = "network-vpc55"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network566"{
  name                                        = "network-vpc56"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network577"{
  name                                        = "network-vpc57"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network588"{
  name                                        = "network-vpc58"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network599"{
  name                                        = "network-vpc59"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network600"{
  name                                        = "network-vpc60"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network611"{
  name                                        = "network-vpc61"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network622"{
  name                                        = "network-vpc62"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network633"{
  name                                        = "network-vpc63"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}

resource "google_compute_network" "network644"{
  name                                        = "network-vpc64"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}


