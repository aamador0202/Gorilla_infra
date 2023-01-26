resource "google_cloudbuild_trigger" "tf-trigger" {
  location = "global"
  project = "gorilla-375616"
  name = "tf-trigger"

  trigger_template {
    branch_name = "master"
    repo_name   = "aamador0202/timeoff-management-application"
  }

  filename = "cloudbuild.yaml"
}
