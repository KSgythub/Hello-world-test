terraform {
    backend "gcs" { 
      bucket  = "terraform-state-back-hiring"
      prefix  = "prod"
    }
}


provider "google" {
  project = var.gcp_project
  region = var.gcp_region
}