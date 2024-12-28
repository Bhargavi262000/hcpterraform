provider "google" {
  project = "hcp-tf-test-bhargavi"
  region  = "us-central1"
}

resource "google_folder" "folder" {
  display_name = "policy"
  parent       = "organizations/1000043173737"
}


resource "google_org_policy_policy" "primary" {
 name   = "projects/461255015551/policies/compute.requireOsLogin"
 parent = "projects/461255015551"


 spec {
   rules {
     enforce = "FALSE"
   }
 }
}
