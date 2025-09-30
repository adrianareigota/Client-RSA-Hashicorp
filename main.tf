# main.tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Set HCP as remote backend
  cloud {
    organization = "RSA-Hashicorp"

    workspaces {
      name = "client-rsa-dev"
    }
  }
}

# AWS Provider Settings (authentication via HCP/Vault)
provider "aws" {
  region = "us-east-1" # Standard region
}