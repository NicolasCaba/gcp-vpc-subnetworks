/********************************************/
# Outputs vpc
/********************************************/
output "vpc-data" {
  description = "Mostrar datos de la vpc"
  value = {
    vpc_id                      = google_compute_network.vpc.id
    vpc_name                    = google_compute_network.vpc.name
    vpc_auto_create_subnetworks = google_compute_network.vpc.auto_create_subnetworks
    vpc_mtu                     = google_compute_network.vpc.mtu
  }
}

/********************************************/
# Outputs subnetworks públicas
/********************************************/
output "public-subnetworks-data" {
  description = "Mostrar datos de las subnetworks públicas"
  value = { for v, subnetwork in google_compute_subnetwork.subnetwork_public : v => {
    subnetwork_id            = subnetwork.id,
    subnetwork_name          = subnetwork.name,
    subnetwork_region        = subnetwork.region,
    subnetwork_ip_cidr_range = subnetwork.ip_cidr_range
    }
  }
}

/********************************************/
# Outputs subnetworks privadas
/********************************************/
output "private-subnetworks-data" {
  description = "Mostrar datos de las subnetworks privadas"
  value = { for v, subnetwork in google_compute_subnetwork.subnetwork_private : v => {
    subnetwork_id            = subnetwork.id,
    subnetwork_name          = subnetwork.name,
    subnetwork_region        = subnetwork.region,
    subnetwork_ip_cidr_range = subnetwork.ip_cidr_range
    }
  }
}
