provider "google" {
  project = "hcp-tf-test-bhargavi"
  region  = "us-central1"
}

resource "google_compute_network" "network1"{
  name                                        = "network-vpc1"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 100
  project = "scenario-8-20assetsviolation"
}

module "gcp_org_policy_v2" {
 source           = "terraform-google-modules/org-policy/google//modules/org_policy_v2"

 policy_root      = "organization"
 policy_root_id   = "1000043173737"
 constraint       = "iam.disableServiceAccountKeyUpload"
 policy_type      = "boolean"
 exclude_folders  = []
 exclude_projects = []


 rules = [
   # Rule 1
   {
    // Modification(enforcement - false ->true).
     enforcement = true
     allow       = []
     deny        = []
     conditions  = []
   },
 ]
}


// Resource already exists.
resource "google_org_policy_policy" "primary" {
 name   = "projects/55476130589/policies/compute.requireOsLogin"
 parent = "projects/55476130589"


 spec {
   rules {
    // Modification(enforcement - TRUE -> FALSE).
     enforce = "FALSE"
   }
 }
}

