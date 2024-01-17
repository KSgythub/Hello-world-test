terraform {
  backend "gcs" {
    bucket  = "terraform-state-back-hiring"
    prefix  = "prod"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.12.0"
    }
  }
}


provider "google" {
  project = var.gcp_project
  region = var.gcp_region
}


