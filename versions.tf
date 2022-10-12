terraform {
  cloud {
    organization = "octanner"
    hostname = "app.terraform.io" # Optional; defaults to app.terraform.io

    workspaces {
      tags = ["cobra"]
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.34.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.4.3"
    }
  }

  required_version = ">= 0.14.0"
}
