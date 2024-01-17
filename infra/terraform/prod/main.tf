resource "google_compute_instance" "prod_instance" {
  name         = "web-server"
  machine_type = "e2-micro"
  zone         = "${var.gcp_region}-b"

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  metadata_startup_script = templatefile("../startup-script.sh", {
    image_tag = var.image_tag
    gcp_project = var.gcp_project
  })

  tags = ["http-server"]

}

resource "google_compute_firewall" "http_server" {
  name    = "allow-http"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["8080"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http-server"]
}
