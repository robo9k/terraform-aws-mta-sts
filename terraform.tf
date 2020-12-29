terraform {
  required_version = ">= 0.13.0"

  required_providers {
    aws = {
      # TODO: this is not neccessarily the minimum required version
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}