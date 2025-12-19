terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  token = "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"
}
