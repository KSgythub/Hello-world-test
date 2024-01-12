variable "gcp_project" {
  description = "The GCP project ID"
  type        = string
  default = "hello-world"
}

variable "gcp_region" {
  description = "The GCP region"
  type        = string
  default = "us-east1"
}

variable "image_tag" {
  description = "The Docker image tag to deploy"
  type        = string
  default = "latest"
}
