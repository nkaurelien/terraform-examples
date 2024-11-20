

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

locals {
  nginx_port_external = 18000
}

resource "docker_image" "nginx" {
  name         = "nginx"
  keep_locally = false
}


resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "nginx_tutorial"
  healthcheck {
    test     = ["CMD", "curl", "-f", "localhost:${local.nginx_port_external}/"]
    interval = "5s"
    retries  = 3
  }

  labels {
  
    label = "creator"
    value = "nkaurelien"
  }


  ports {
    internal = 80
    external = local.nginx_port_external
  }
}

data "docker_logs" "nginx_logs" {
  name    = "nginx_tutorial"
  details = true
}
