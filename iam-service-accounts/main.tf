resource "google_service_account" "tf_sa" {
  account_id   = "tf-gorilla-infra-sa"
  display_name = "Service Account"
}
