resource "null_resource" "name" {
  triggers = {
    custom_trigger = var.trigger
  }
}

variable "trigger" {
  default = "kek"
}