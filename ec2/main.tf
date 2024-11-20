terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}


variable "instance_name" {
  default = "ubuntu-nginx-webserver"
}

variable "instance_slug" {
  default = "ubuntu-nginx-webserver"
}

resource "aws_instance" "app_server" {
  # count         = 2
  ami           = data.aws_ami.ubuntu20.id
  instance_type = "t2.micro"

  security_groups = [aws_security_group.nginx_sg.name]

  tags = {
    Name    = var.instance_slug
    Creator = "nkaurelien"
  }

  user_data = <<EOF
#!/bin/bash
sudo apt-get update
sudo apt-get install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx
EOF
}
