provider "docker" {}

#pulls the image
resource "docker_image" "images" {
  count = length(var.docker_images)
  name  = var.docker_images[count.index]
}

#Create containers
resource "docker_container" "containers" {
    count = length(docker_image.images)
    image = docker_image.images[count.index].name
    name  = "container-${count.index}"
  
}