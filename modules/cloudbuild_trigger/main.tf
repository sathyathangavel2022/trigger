resource "google_cloudbuild_trigger" "trigger" {
  name        = "${var.name}-trigger"
  description = var.description
  project     = var.project_id
  location = var.location

  github {
    owner       = var.github_owner      # e.g. "sathyathangavel2022"
    name        = var.repo_name         # e.g. "cicd"
    push {
      branch = var.branch_pattern       # e.g. "main"
    }
  }

  filename = var.filename               # points to cloudbuild.yaml in cicd repo
}
