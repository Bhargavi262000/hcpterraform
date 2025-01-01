provider "google" {
  project = "hcp-tf-test-bhargavi"
  region  = "us-central1"
}

// Resource already exists.
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
resource "google_securityposture_posture_deployment" "postureDeployment2" {
  posture_deployment_id = "posture_deployment_2"
  parent                = "organizations/1000043173737"
  location              = "global"
  //Modification(description - a new posture deployment -> a new posture deployment - posture_1).
  description           = "a new posture deployment - posture_1"
  target_resource       = "projects/55476130589"
  posture_id            = google_securityposture_posture.posture_2.name
  posture_revision_id   = google_securityposture_posture.posture_2.revision_id
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
