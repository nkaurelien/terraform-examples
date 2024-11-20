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


variable "key-name" {
  default = "dev/nkaurelien"
}

variable "root_volume_size" {
  default = 20 # Size in GiB
}

# Creating key-pair on AWS using SSH-public key
resource "aws_key_pair" "deployer" {
  key_name   = var.key-name
  public_key = file("${path.module}/ssh-key/nkaurelien.pub")
}

resource "aws_instance" "app_server" {
  # count         = 2
  ami           = data.aws_ami.ubuntu20.id
  instance_type = "t2.micro"

  security_groups = [aws_security_group.nginx_sg.name]
  key_name        = aws_key_pair.deployer.key_name

  # root_block_device {
  #   volume_size = var.root_volume_size
  #   volume_type = "gp2"
  # }

  tags = {
    Name    = var.instance_slug
    Creator = "nkaurelien"
    # Tier = "frontend"
    Environment = "sandbox"
  }


  user_data = <<EOF
#!/bin/bash
sudo apt-get update
sudo apt-get install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx
EOF
}

