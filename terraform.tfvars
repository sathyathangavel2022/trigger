project_id = "playground-adnan"
github_owner = "sathyathangavel2022"
location = "global"

triggers = {
  cicd = {
    repo_name      = "cicd"
    branch_pattern = "^main$"
    description    = "Trigger for CICD repo"
    filename       = "cloudbuild.yaml"
  }
}

