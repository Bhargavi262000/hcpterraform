provider "google" {
  project = "hcp-tf-test-bhargavi"
  region  = "us-central1"
}

# New folder, child of existing org.
resource "google_folder" "scenario_9" {
  display_name = "Scenario 9"
  parent       = "organizations/714470867684"
}

# New folder, child of new folder.
resource "google_folder" "child_folder" {
  display_name = "Child Folder"
  parent       = google_folder.scenario_9.name
}

# New Project, child of new folder.
resource "google_project" "new_project_in_new_folder" {
  name       = "New Project in New Folder"
  project_id = "new-project-in-new-folder"
  folder_id  = google_folder.child_folder.name
}

# New bucket, child of new project
resource "google_storage_bucket" "new_bucket" {
  name                        = "new_bucket"
  location                    = "US"
  storage_class               = "STANDARD"
  project                     = google_project.new_project_in_new_folder.project_id
  uniform_bucket_level_access = true
}
