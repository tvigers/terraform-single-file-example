provider "google" {
  project         = "${var.project}"
  region          = "${var.region}"
}

resource "google_compute_instance" "default" {
    name          = "test"
    machine_type  = "n1-standard-1"
    zone          = "australia-southeast1-b"

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
}
