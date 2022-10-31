#comment
resource "random_pet" "resource" {
  count = 1
  keepers = {
    timestamp = timestamp()
    number = var.user_number
    string = var.var-var-var
  }
  length = var.len
}

variable "user_number" {
  type = number
  description = "keeper var 1/22"
}

variable "var-var-var" {
  default = "ya masha 123"
}

variable "len" {
  sensitive = true
  default = 1234
}