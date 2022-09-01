#comment
resource "random_pet" "resource" {
  count = 2
  keepers = {
    timestamp = timestamp()
    number = var.user_number
  }
}

variable "user_number" {
  type = number
  description = "keeper var 1/2"
}
