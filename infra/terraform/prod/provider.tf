terraform {
    backend "gcs" { 
      bucket  = "terraform-state-jb-cicdproject"
      prefix  = "prod"
    }
}


provider "google" {
  project = var.gcp_project
  region = var.gcp_region
}