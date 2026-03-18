variable "container_name" {
  description = "Name of the container"
  type        = string
}

variable "container_port" {
  description = "Port exposed on host"
  type        = number
}

variable "image_name" {
  description = "Docker image name"
  type        = string
}
