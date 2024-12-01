terraform {
  required_version = "~> 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5"
    }
  }
}

provider "aws" {
  region  = "eu-west-3"
  profile = "default"
  default_tags {
    tags = {
      environment = "${terraform.workspace}"
      project     = "${var.project_name["longname"]}"
    }
  }
}