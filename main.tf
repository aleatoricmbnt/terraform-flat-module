#comment
resource "random_pet" "resource" {
  count = 1
  keepers = {
    string2 = var.var-var
    string = var.var-var-var
  }
  length = var.len
}



variable "var-var-var" {
  sensitive = true
  default = "string"
}

variable "var-var" {
  sensitive = false
  default = "string"
}


variable "len" {
  sensitive = true
  default = 1234
}