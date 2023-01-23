resource "google_service_account" "service_account" {
  account_id   = "tf-gorilla-infra-sa"
  display_name = "Service Account"
}
