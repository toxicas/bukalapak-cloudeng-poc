provider "google" {
  credentials = "${file("~/.config/gcloud/account.json")}"
  project     = "${var.project_id}"
  region      = "ap-southeast1"
}