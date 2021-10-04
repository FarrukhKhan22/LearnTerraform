provider "aws" {
    region = var.region
    access_key = "AWS_ACCESS_KEY"
    secret_key = "AWS_SECRET_KEY"
}

resource "aws_instance" "FirstVm" {
    ami = "ami-087c17d1fe0178315"
    instance_type = "t2.micro"
    tags = {
        Name="FirstVm"
    }
  
}

terraform {
  required_providers{
      aws = {
      source = "hashicorp/aws"
    }
      random={
          source="hashicorp/random"
          version="3.0.1"
      }
  }

  required_version = "~>1.0.1"
  backend "remote" {
      hostname = "app.terraform.io"
      organization = "DeveloperCheethass"

      workspaces {
        name="LearnTerraform"
      }
    
  }

}