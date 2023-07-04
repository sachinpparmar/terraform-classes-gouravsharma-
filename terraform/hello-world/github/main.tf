resource "github_repository" "github-terraform" {                    ## if u want to destroy only one resource so we can use this   --target name     ex  terraform destroy --target namre
  name        = "github-repo-terraform"
  description = "this is my 1ft repo from terraform script"           ## terraform refresh    command use for refresh the state of file  
  visibility = "public"
  auto_init = true    ## for README.md file we use 

}
output "terraform-first-repo-url" {
    value = github_repository.github-terraform.html_url       # for url of github-repo
  
}

