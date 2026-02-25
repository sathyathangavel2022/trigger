terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = "me-central2"   # or your preferred region
}



module "cloudbuild_triggers" {
  source     = "./modules/cloudbuild_trigger"
  for_each   = var.triggers

  name           = each.key
  description    = each.value.description
  project_id     = var.project_id
  repo_name      = each.value.repo_name
  branch_pattern = each.value.branch_pattern
  filename       = each.value.filename
  github_owner   = var.github_owner   # <-- added
}
