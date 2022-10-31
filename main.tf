#comment
resource "random_pet" "resource" {
  count = 1
  keepers = {
    string = var.var-var-var
  }
  length = var.len
}

variable "var-var-var" {
  sensitive = false
  default = "string"
}


variable "len" {
  sensitive = true
  default = 1234
}