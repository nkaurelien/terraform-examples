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

variable "instance_tag_name" {
  default = "ubuntu-nginx-webserver"
}

data "aws_instance" "app_server" {

  instance_id = "i-051cb62df4560aec5"

  # filter {
  #   name   = "image-id"
  #   values = ["ami-xxxxxxxx"]
  # }

  filter {
    name   = "tag:Name"
    values = [var.instance_tag_name]
  }

  filter {
    name   = "tag:Creator"
    values = ["nkaurelien"]
  }
}
