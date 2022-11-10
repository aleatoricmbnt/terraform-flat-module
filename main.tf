#comment

resource "null_resource" "name" {
  triggers = {
    trigger = var.user_number
  }
}

variable "user_number" {
  sensitive = true
  default = "1"
}
