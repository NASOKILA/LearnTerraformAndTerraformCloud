# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      version = ">= 2.26"
    }
  }
}

# Store terraform state in a private storage in Terraform Cloud
terraform {
  backend "remote" {
    organization = "AtanasKambitov"

    workspaces {
      name = "LearnTerraformWorkspace"
    }
  }
}

provider "azurerm" {
  subscription_id = "cdde48a5-22f5-41f8-8018-793c0a6c5758"
  tenant_id       = "980257d6-aec7-4fea-b9be-e044eb5db47a"
  features {}
}