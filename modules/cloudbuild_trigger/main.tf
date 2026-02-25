resource "google_cloudbuild_trigger" "trigger" {
  name        = "${var.name}-trigger"
  description = var.description
  project     = var.project_id

  source_to_build {
    repo_source {
      project_id  = var.project_id
      repo_name   = var.repo_name   # points to cicd repo
      branch_name = var.branch_pattern
    }
  }

  filename = var.filename           # cloudbuild.yaml inside cicd repo
}
