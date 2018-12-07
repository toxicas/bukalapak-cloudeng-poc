resource "random_id" "uuid" {
  keepers = {
    # Generate a new id each time we switch to a new AMI id
    ami_id = "${var.image}" # trigger update when image changes
  }

  byte_length = 8
}

resource "google_compute_instance_template" "webserver" {
  name         = "poc-interview-webserver-instance-template-${random_id.uuid.dec}"
  project      = "${var.project_id}"
  machine_type = "${var.instance_type}"
  region       = "${var.region}"

  metadata {
    ssh-keys = "${var.user}:${file("${var.ssh_key}")}"
  }

  disk {
    source_image = "${var.image}"
    auto_delete  = true
    boot         = true
  }

  network_interface {
    network            = "${var.network_name}"
    access_config {
      # Ephemeral IP - leaving this block empty will generate a new external IP and assign it to the machine
    }
  }

  tags = ["http", "http-server", "https-server"]

  labels = {
    environment = "${var.environment}"
  }

  lifecycle {
    create_before_destroy = true
  }
}