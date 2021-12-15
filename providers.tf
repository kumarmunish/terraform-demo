terraform {
  required_version = ">= 1.0.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.38"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.78.0"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"

  default_tags {
    tags = {
      Environment = "Test"
      Project     = "Demo"
    }
  }
}