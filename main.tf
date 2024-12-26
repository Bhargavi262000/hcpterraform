provider "google" {
  project = "hcp-tf-test-bhargavi"
  region  = "us-central1"
}


resource "google_sql_database_instance" "violating_sql_instance" {
  name             = "my-sql-instance-new"
  database_version = "MYSQL_8_0"
  region           = "us-central1"
  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database_instance" "non_violating_sql_instance" {
  name             = "my-sql-instance"
  database_version = "MYSQL_8_0"
  region           = "us-central1"
  settings {
    tier = "db-f1-micro"
  }
}

resource "google_bigquery_dataset" "violating_bq_dataset" {
  dataset_id                  = "violating_bq_dataset"
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 3600000
  access {
    special_group = "allAuthenticatedUsers"
  }
}

resource "google_bigquery_dataset" "non_violating_bq_dataset" {
  dataset_id                  = "non_violating_bq_dataset"
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 36000000
}

resource "google_pubsub_topic" "violating_topic" {
  name = "violating_topic-new"
  labels = {
    foo = "bar"
  }

  message_retention_duration = "86600s"
}

resource "google_pubsub_topic" "non_violating_topic" {
  name = "non_violating_topic"
  labels = {
    foo = "bar"
  }

  message_retention_duration = "86600s"
}

resource "google_storage_bucket" "violating_bucket" {
  name     = "violating_bucket-new" # Replace with a unique name
  location = "us-central1"          # Replace with desired region
  project  = "hcp-tf-test-bhargavi"
}

resource "google_storage_bucket" "non_violating_bucket" {
  name     = "non_violating_bucket" # Replace with a unique name
  location = "us-central1"          # Replace with desired region
  project  = "hcp-tf-test-bhargavi"
}

resource "google_spanner_instance" "violating_spanner_instance" {
  name         = "my-spanner-instance1"
  config       = "us-central1" 
  display_name = "My Spanner Instance"
  num_nodes    = 2
}

resource "google_spanner_instance" "non_violating_spanner_instance" {
  name         = "my-spanner-instance2"
  config       = "us-central1" 
  display_name = "My Spanner Instance"
  num_nodes    = 3
}
