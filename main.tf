resource "github_repository" "student_repo" {
  name        = "terraform-brij-prajapati-public-repo"
  description = "Public Terraform repository for Brij Prajapati"
  visibility  = "public"
  auto_init   = true

  has_issues   = true
  has_projects = true
  has_wiki     = true
}

resource "github_repository_file" "readme" {
  repository = github_repository.student_repo.name
  file       = "README.md"

  content = <<EOT
# Terraform GitHub Repository

**Student Name:** Brij Prajapati

This public repository was created using **Terraform**.
EOT

  commit_message        = "Add README.md"
  overwrite_on_create   = true
}
