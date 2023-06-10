variable "docker_images" {
    type        = list(string)
    description = "This are the images in my enviroment"
    default = [
        "timaali/client:latest",
        "timaali/backend:latest",
    ]
}