module "cloudbuild_triggers" {
  source   = "./modules/cloudbuild_trigger"
  for_each = var.triggers

  name           = each.key
  description    = each.value.description
  project_id     = var.project_id
  repo_name      = each.value.repo_name
  branch_pattern = each.value.branch_pattern
  filename       = each.value.filename
}
