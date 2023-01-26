resource "google_cloudbuild_trigger" "Trigger1" {
  location = "us-central1"

  trigger_template {
    branch_name = "master"
    repo_name   = "https://github.com/aamador0202/timeoff-management-application"
  }

  filename = "cloudbuild.yaml"
}
