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