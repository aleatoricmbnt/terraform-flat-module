#comment
provider "null" {
  version = "3.0.0"
}

resource "null_resource" "name" {
  triggers = {
    trigger = var.user_number
  }
}

variable "user_number" {
  sensitive = true
  default = "2"
}
