# terraform-flat-module.temp

Nested module.



## Configuration

Top-level `main.tf` has the following code:
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