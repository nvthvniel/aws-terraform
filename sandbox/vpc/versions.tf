terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.72"
    }
  }

  backend "s3" {
    bucket         = "terraform-remote-state-445567079474"
    key            = "vpc/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "terraform-remote-state-445567079474"
  }
}
