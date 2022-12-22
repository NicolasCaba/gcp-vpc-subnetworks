locals {
  private_subnetworks = {
    "subred_4" = {
      name          = "subnetwork-private-4"
      ip_cidr_range = "10.1.48.0/20"
      region        = "us-east1"
    }

    "subred_5" = {
      name          = "subnetwork-private-5"
      ip_cidr_range = "10.1.64.0/20"
      region        = "us-east1"
    }

    "subred_6" = {
      name          = "subnetwork-private-6"
      ip_cidr_range = "10.1.80.0/20"
      region        = "us-east1"
    }
  }
}


# Creamos las subredes privadas
resource "google_compute_subnetwork" "subnetwork_private" {
  for_each = local.private_subnetworks

  name          = each.value.name
  ip_cidr_range = each.value.ip_cidr_range
  region        = each.value.region
  network       = google_compute_network.vpc.id
}
