terraform {
  backend "gcs" {
    bucket  = "devops-hackathon-tfstate"
    prefix  = "dev"
  }
}
