resource "google_compute_instance" "data" {
  name         = "data"
  machine_type = "n1-standard-1"
  zone         = "${element(var.zones, 0)}"

  tags = ["data", "bukalapak-cloudeng-poc"]

  boot_disk {
    initialize_params {
      image = "centos-7"
      size  = "30"
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