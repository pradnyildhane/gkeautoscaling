# link to latest terraform google docs
provider "google" {
    project = "tenacious-crane-360006"
    region = "us-central1"
}

terraform {
    backend "gcs" {
        bucket = "autoscaling-tf-state-scaling"
        prefix = "terraform/state"
      
    }
    required_providers {
        google = {
            source = "hashicorp/google"
            version = "~> 4.0"
        }
      
    }
}