terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }
}

provider "google" {
  project = "<your-sandbox-project-id>"
  region  = "us-central1"
}

module "demo" {
  source  = "devdot4/gke/gcp"
  version = "0.0.4"

  gke_config = {
    cluster_name   = "consumer-test-cluster"
    location       = "us-central1"
    node_count     = 1
    min_node_count = 1
    max_node_count = 2
    machine_type   = "e2-medium"
    disk_size_gb   = 100
    disk_type      = "pd-balanced"
  }
}

output "cluster_name" {
  value = module.demo.cluster_name
}

output "cluster_location" {
  value = module.demo.cluster_location
}

