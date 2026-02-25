variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "github_owner" {
  description = "The GitHub organization or user that owns the repo"
  type        = string
}

variable "triggers" {
  description = "Map of Cloud Build triggers"
  type = map(object({
    repo_name      = string
    branch_pattern = string
    description    = string
    filename       = string
  }))
}
