resource "google_container_cluster" "gke" {
  name     = var.cluster_name
  location = var.region

  network    = var.network
  subnetwork = var.subnetwork

  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_node_pool" "nodes" {
  name       = "primary-nodes"
  cluster    = google_container_cluster.gke.name
  location   = var.region
  node_count = var.node_count

  node_config {
    machine_type = "e2-medium"
    service_account = var.service_account
    oauth_scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}
