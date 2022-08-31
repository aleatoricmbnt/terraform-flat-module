resource "random_pet" "resource" {
  count = 2
  keepers = {
    timestamp = timestamp()
    number = var.user_number
  }
}

variable "user_number" {
  type = number
  description = "pet keeper 1/2/3"
}

resource "random_pet" "name" {}

resource "random_pet" "surname" {}
