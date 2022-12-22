# Creamos la vpc
resource "google_compute_network" "vpc" {
  name                    = "${var.vpc_name}"
  auto_create_subnetworks = var.vpc_auto_create_subnetworks
  mtu                     = var.vpc_mtu
}
