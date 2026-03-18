terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

provider "local" {}

variable "filename" {
  type = string
}

variable "message" {
  type = string
}

resource "local_file" "file" {
  filename = var.filename
  content  = var.message
}

output "file_path" {
  value = local_file.file.filename
}
