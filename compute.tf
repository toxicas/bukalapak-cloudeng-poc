/*
 * Resource required for creating template only
 * 
resource "google_compute_instance" "base_image_wordpress" {
  name         = "base-image-wordpress"
  machine_type = "n1-standard-1"
  zone         = "${element(var.zones, 0)}"

  tags = ["wordpress", "bukalapak-cloudeng-poc"]

  boot_disk {
    initialize_params {
      image = "centos-7"
      size  = "10"
    }
  }

  // Local SSD disk
  scratch_disk {
  }

  network_interface {
    network = "${var.network_name}"

    access_config {
      // Ephemeral IP
    }
  }

  metadata {
    foo = "bar"
  }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }

  labels = {
    environment = "${var.environment}"
  }
}
*/