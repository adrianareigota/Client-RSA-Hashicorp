terraform {
  required_version = ">= 1.6.0"
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
    # Enable the IBM Cloud provider when you swap stubs for real resources:
    # ibm = {
    #   source  = "IBM-Cloud/ibm"
    #   version = "~> 1.60"
    # }
  }
}
