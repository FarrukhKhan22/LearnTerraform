provider "aws" {
    region = var.location
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
}

resource "aws_instance" "vm" {
    ami = "ami-087c17d1fe0178315"
    instance_type = "t3.micro"
    tags = {
       Name  = "vm"
    } 
}