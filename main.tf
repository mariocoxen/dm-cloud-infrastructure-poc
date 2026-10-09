terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "web_server" {
  name         = "nginx:alpine"
  keep_locally = false
}

resource "docker_container" "poc_server" {
  image = docker_image.web_server.image_id
  name  = "dm_cloud_infrastructure_poc"

  ports {
    internal = 80
    external = 8080
    ip       = "127.0.0.1"
  }

  # Uses the mounts block syntax for kreuzwerker/docker 3.x
 mounts {
    target    = "/usr/share/nginx/html"
    source    = abspath("${path.module}/src")
    type      = "bind"
    read_only = false
  }
}
