# terraform-flat-module.temp

Nested module.



## Configuration

Nested `main.tf` has the following code:
```
resource "null_resource" "name" {
  triggers = {
    custom_trigger = var.trigger
  }
}

variable "trigger" {
  default = "kek"
}
```