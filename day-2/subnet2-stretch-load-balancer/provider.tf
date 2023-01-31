terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0.0"
    }
  }

  cloud {
    organization = "lbg-cloud-platform"

    workspaces {
      name = "playpen-4rj1sn-gcp"
    }
  }
}

provider "google" {
  project = var.project_id
}