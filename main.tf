provider "google" {
  project = "hcp-tf-test-bhargavi"
  region  = "us-central1"
}
// Resource already exists.
resource "google_securityposture_posture_deployment" "postureDeployment2" {
  posture_deployment_id = "posture_deployment_2"
  parent                = "organizations/10000431737"
  location              = "global"
  //Modification(description - a new posture deployment -> a new posture deployment - posture_1).
  description           = "a new posture deployment - posture_1"
  target_resource       = "projects/55476130589"
  posture_id            = google_securityposture_posture.posture_2.name
  posture_revision_id   = google_securityposture_posture.posture_2.revision_id
}

resource "google_storage_bucket" "test_bucket_good" {
  name                        = "test-bucket-good"
  location                    = "US"
  storage_class               = "STANDARD"
  project                     = "hcp-tf-test-bhargavi"
  uniform_bucket_level_access = true
}



