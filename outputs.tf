# Output data
output "instance_id" {
    value = "${google_compute_instance.data.instance_id}"
}

# Output instance tepmlate
output "instance_template" {
  value = "${google_compute_instance_template.webserver.self_link}"
}