module "network" {
  source        = "../../modules/network"
  vpc_name      = "dev-vpc"
  region        = var.region
  public_cidr   = "10.10.1.0/24"
  private_cidr  = "10.10.2.0/24"
}

module "iam" {
  source     = "../../modules/iam"
  project_id = var.project_id
}

module "gke" {
  source          = "../../modules/gke"
  cluster_name    = "devops-hackathon"
  region          = var.region
  network         = module.network.vpc_id
  subnetwork      = module.network.private_subnet
  service_account = module.iam.gke_sa_email
  node_count      = 1
}
