terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.89.0"
    }
  }
  backend "remote" {
    organization = "Sadiksha"

    workspaces {
      name = "test"
    }
  }
}

provider "google" {
    #credentials = file("test-gitops-368615-cc9229832eeb.json")
    project = var.project_id
}

#terraform {
#  backend "remote" {
#    organization = "Sadiksha"
#
#    workspaces {
#      name = "test"
#    }
#  }
#}

resource "google_storage_bucket" "default" {
  name = var.bucket_name
  storage_class = var.storage_class
  location = var.bucket_location
}