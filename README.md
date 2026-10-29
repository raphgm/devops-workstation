# DevOps Workstation Setup

A SKILL.SCH Cloud Lab: install and verify the core tools a cloud and DevOps engineer uses every day.

## Tools and how to verify each

| Tool | Install (macOS, Homebrew) | Verify |
|---|---|---|
| Git | `brew install git` | `git --version` |
| Azure CLI | `brew install azure-cli` | `az version` then `az login` |
| Docker | Docker Desktop | `docker run hello-world` |
| Terraform | `brew tap hashicorp/tap && brew install hashicorp/tap/terraform` | `terraform -version` |
| VS Code | `brew install --cask visual-studio-code` | `code --version` |

On Windows use `winget install` with `Git.Git`, `Microsoft.AzureCLI`, `Docker.DockerDesktop`, `Hashicorp.Terraform` and `Microsoft.VisualStudioCode`.

## One-shot check

Run `./verify.sh` to check every tool at once.

## Configure Git

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
git config --global init.defaultBranch main
```

## Author

Raphael Gab-Momoh, SKILL.SCH Cloud Lab
