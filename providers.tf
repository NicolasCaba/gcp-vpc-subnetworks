terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.41.0"
    }
  }
}

provider "google" {
  credentials = file("")
  project = "${var.GOOGLE_PROJECT_ID}"
  region  = "${var.GOOGLE_REGION}"
}