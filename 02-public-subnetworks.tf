locals {
  public_subnetworks = {
    "subred_1" = {
      name          = "subnetwork-public-1"
      ip_cidr_range = "10.1.0.0/20"
      region        = "us-east1"
    }

    "subred_2" = {
      name          = "subnetwork-public-2"
      ip_cidr_range = "10.1.16.0/20"
      region        = "us-east1"
    }

    "subred_3" = {
      name          = "subnetwork-public-3"
      ip_cidr_range = "10.1.32.0/20"
      region        = "us-east1"
    }
  }
}


# Creamos las subredes públicas
resource "google_compute_subnetwork" "subnetwork_public" {
  for_each = local.public_subnetworks

  name          = each.value.name
  ip_cidr_range = each.value.ip_cidr_range
  region        = each.value.region
  network       = google_compute_network.vpc.id
}
