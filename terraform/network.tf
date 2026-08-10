resource "google_compute_network" "vpc_network" {
  name = "custom-vpc-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name = "custom-subnet"
  ip_cidr_range = "10.0.1.0/24"
  region = var.region
  network = google_compute_network.vpc_network.id
}

resource "google_compute_firewall" "allow_web_and_ssh" {
  name = "allow-web-and-ssh"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports = ["22", "8080"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags = ["web-server"]
}
