resource "google_compute_instance" "veb_vm" {
  name = "devops-app-vm"
  machine_type = "e2-micro"
  zone = var.zone

  tags = ["web-server"]

boot_disk {
  initialize_params {
    image = "ubuntu-os-cloud/ubuntu-2204-lts"
  }
}

network_interface {
  subnetwork = google_compute_subnetwork.subnet.id

  access_config {
    # Public IP configuration
  }
}

metadata_startup_script = <<-EOF
  #!/bin/bash
  apt-get update
  apt-get install -y docker.io
  systemctl enable --now docker
EOF
}
