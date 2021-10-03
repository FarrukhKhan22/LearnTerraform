provider "aws" {
    region = var.location
    access_key = "aws_access_key"
    secret_key = "aws_secret_key"
}

resource "aws_instance" "vm" {
    ami = "ami-087c17d1fe0178315"
    instance_type = "t3.micro"
    tags = {
       Name  = "vm"
    } 
}