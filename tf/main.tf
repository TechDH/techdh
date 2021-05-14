terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.58.0"
    }
  }
}
provider "aws" {
  alias = "east"
  region = "us-east-1"
}

provider "azurerm" {
  features {}  
}