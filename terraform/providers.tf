terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.2.0"
    }
    
    docker = {
        source = "kreuzwerker/docker"
        version = "3.0.2"
    }
  }
}
