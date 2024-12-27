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

resource "google_compute_network" "network17"{
  name                                        = "network-vpc17"
  delete_default_routes_on_create = false
  auto_create_subnetworks           = false
  routing_mode                      = "REGIONAL"
  mtu = 1301
  project = "hcp-tf-test-bhargavi"
}


