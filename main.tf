provider "aws" {  
    access_key = "AWS_ACCESS_KEY"
    secret_key = "AWS_SECRET_KEY"
    region = var.location
}

resource "aws_instance" "vm" {
    ami = "ami-087c17d1fe0178315"
    instance_type = "t3.micro"
    tags = {
       Name  = "vm"
    } 
}