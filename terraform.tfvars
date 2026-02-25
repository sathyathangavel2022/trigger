project_id = "playground-adnan"

triggers = {
  cicd = {
    repo_name      = "cicd"                 # GitHub repo name connected to Cloud Build
    branch_pattern = "main"                 # branch to watch
    description    = "Trigger for CICD repo"
    filename       = "cloudbuild.yaml"      # pipeline file inside cicd repo
  }
}
