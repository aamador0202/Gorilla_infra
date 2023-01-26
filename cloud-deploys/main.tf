resource "google_clouddeploy_target" "primary" {
  location = "us-central1"
  name     = "dev"

  description = "development cluster"

  gke {
    cluster = "projects/gorilla-375616/locations/us-central1-a/clusters/to-managment-gke"
  }
  project          = "gorilla-375616"
  require_approval = false
}

resource "google_clouddeploy_delivery_pipeline" "primary" {
  location = "us-central1"
  name     = "tf-time-off-app"
  project = "gorilla-375616"

  serial_pipeline {
    stages {
      profiles  = []
      target_id = "dev"
    }
  }  
}
