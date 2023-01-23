resource "google_service_account" "tf_sa" {
  account_id   = "tf-gorilla-infra-sa"
  display_name = "Service Account"
  project = "Gorilla"
}

resource "google_container_cluster" "primary" {
  name               = "to-managment-gke"
  project            = "Gorilla"
  location           = "us-central1-a"
  initial_node_count = 3
  node_config {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = google_service_account.tf_sa.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
    labels = {
      foo = "bar"
    }
    tags = ["foo", "bar"]
  }
  timeouts {
    create = "30m"
    update = "40m"
  }
}
