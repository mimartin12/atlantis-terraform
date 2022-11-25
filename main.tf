terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

resource "random_pet" "server" {
  length = 2
}

output "server_name" {
  value = random_pet.server.id
}